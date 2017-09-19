#!/usr/bin/env python3

""" 航空器事故数据转换
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/8/20
    :version 1.0
"""
import datetime
import gzip
import os

import pickle

import sys

# gzip文件的模数
GZIP_MAGIC = b"\x1F\x8B"


class IncidentError(Exception):
    pass


class Incident:
    """航空器事故对象"""
    def __init__(self, report_id, date, airport, aircraft_id, aircraft_type, pilot_percent_hour_on_type,
                 pilot_total_hours, midair, narrative=""):
        assert len(report_id) >= 8 and len(report_id.split()) == 1, "Invalid report ID"
        self.__report_id = report_id
        self.__date = date
        self.__airport = airport
        self.__aircraft_id = aircraft_id
        self.__aircraft_type = aircraft_type
        self.__pilot_percent_hours_on_type = pilot_percent_hour_on_type
        self.__pilot_total_hours = pilot_total_hours
        self.__midair = midair
        self.__narrative = narrative

    @property
    def date(self):
        return self.__date

    @date.setter
    def date(self, date):
        assert isinstance(date, datetime.date), "invalid date"
        self.__date = date

    @property
    def pilot_percent_hours_on_type(self):
        """The percentage of total hours flown on this aircraft type"""
        return self.__pilot_percent_hours_on_type

    @pilot_percent_hours_on_type.setter
    def pilot_percent_hours_on_type(self, percent):
        assert 0.0 <= percent <= 100.0, "out of range percentage"
        self.__pilot_percent_hours_on_type = percent

    @property
    def pilot_total_hours(self):
        """The total hours this pilot has flown"""
        return self.__pilot_total_hours

    @pilot_total_hours.setter
    def pilot_total_hours(self, hours):
        assert hours > 0, "invalid number of hours"
        self.__pilot_total_hours = hours

    @property
    def approximate_hours_on_type(self):
        return int(self.__pilot_total_hours *
                   (self.__pilot_percent_hours_on_type / 100))

    @property
    def midair(self):
        """Whether the incident involved another aircraft"""
        return self.__midair

    @midair.setter
    def midair(self, value):
        assert isinstance(value, bool), "invalid midair value"
        self.__midair = value

    @property
    def airport(self):
        """The incident's airport"""
        return self.__airport

    @airport.setter
    def airport(self, airport):
        assert airport and "\n" not in airport, "invalid airport"
        self.__airport = airport

    @property
    def aircraft_id(self):
        """The aircraft ID"""
        return self.__aircraft_id

    @aircraft_id.setter
    def aircraft_id(self, aircraft_id):
        assert aircraft_id and "\n" not in aircraft_id, \
            "invalid aircraft ID"
        self.__aircraft_id = aircraft_id

    @property
    def aircraft_type(self):
        """The aircraft type"""
        return self.__aircraft_type

    @aircraft_type.setter
    def aircraft_type(self, aircraft_type):
        assert aircraft_type and "\n" not in aircraft_type, \
            "invalid aircraft type"
        self.__aircraft_type = aircraft_type

    @property
    def narrative(self):
        "The incident's narrative"
        return self.__narrative

    @narrative.setter
    def narrative(self, narrative):
        self.__narrative = narrative

    def __repr__(self):
        return ("Incident({report_id!r}, {date!r}, "
                "{airport!r}, {aircraft_id!r}, "
                "{aircraft_type!r}, "
                "{pilot_percent_hours_on_type!r}, "
                "{pilot_total_hours!r}, {midair!r}, "
                "'''{narrative}''')".format(**self))


class IncidentCollection(dict):
    """
    >>> kwargs = dict(report_id="2007061289X")
    >>> kwargs["date"] = datetime.date(2007, 6, 12)
    >>> kwargs["airport"] = "Los Angeles"
    >>> kwargs["aircraft_id"] = "8184XK"
    >>> kwargs["aircraft_type"] = "CVS91"
    >>> kwargs["pilot_percent_hours_on_type"] = 17.5
    >>> kwargs["pilot_total_hours"] = 1258
    >>> kwargs["midair"] = False
    >>> incidents = IncidentCollection()
    >>> incident = Incident(**kwargs)
    >>> incidents[incident.report_id] = incident
    >>> kwargs["report_id"] = "2007061989K"
    >>> kwargs["date"] = datetime.date(2007, 6, 19)
    >>> kwargs["pilot_percent_hours_on_type"] = 20
    >>> kwargs["pilot_total_hours"] = 17521
    >>> incident = Incident(**kwargs)
    >>> incidents[incident.report_id] = incident
    >>> kwargs["report_id"] = "2007052989V"
    >>> kwargs["date"] = datetime.date(2007, 5, 29)
    >>> kwargs["pilot_total_hours"] = 1875
    >>> incident = Incident(**kwargs)
    >>> incidents[incident.report_id] = incident
    >>> for incident in incidents.values():
    ...     print(incident.report_id, incident.date.isoformat())
    2007052989V 2007-05-29
    2007061289X 2007-06-12
    2007061989K 2007-06-19
    >>> for report_id in reversed(incidents):
    ...     print(report_id, incidents[report_id].date.isoformat())
    2007061989K 2007-06-19
    2007061289X 2007-06-12
    2007052989V 2007-05-29
    """

    def values(self):
        for report_id in self.keys():
            yield self[report_id]

    def items(self):
        for report_id in self.keys():
            yield (report_id, self[report_id])

    def __iter__(self):
        for report_id in sorted(super().keys()):
            yield report_id

    keys = __iter__

    def __reversed__(self):
        for report_id in sorted(super().keys(), reverse=True):
            yield report_id

    def export(self, filename, writer=None, compress=False):
        extension = os.path.splitext(filename)[1].lower()
        if extension == ".aix":
            if writer == "dom":
                return self.export_xml_dom(filename)
            elif writer == "etree":
                return self.export_xml_etree(filename)
            elif writer == "manual":
                return self.export_xml_manual(filename)
        elif extension == ".ait":
            return self.export_text(filename)
        elif extension == ".aib":
            return self.export_binary(filename, compress)
        elif extension == ".aip":
            return self.export_pickle(filename, compress)
        elif extension in (".htm", ".html"):
            return self.export_html(filename)

    def import_(self, filename, reader=None):
        extension = os.path.splitext(filename)[1].lower()
        call = {(".aix", "dom"): self.import_xml_dom,
                (".aix", "etree"): self.import_xml_etree,
                (".aix", "sax"): self.import_xml_sax,
                (".ait", "manual"): self.import_text_manual,
                (".ait", "regex"): self.import_text_regex,
                (".aib", None): self.import_binary,
                (".aip", None): self.import_pickle}
        result = call[extension, reader](filename)
        if not result:
            self.clear()
        return result

    if USE_LONG_WINDED_IMPORT_FUNCTION:
        def import_(self, filename, reader=None):
            extension = os.path.splitext(filename)[1].lower()
            result = False
            if extension == ".aix":
                if reader == "dom":
                    result = self.import_xml_dom(filename)
                elif reader == "etree":
                    result = self.import_xml_etree(filename)
                elif reader == "sax":
                    result = self.import_xml_sax(filename)
            elif extension == ".ait":
                if reader == "manual":
                    result = self.import_text_manual(filename)
                elif reader == "regex":
                    result = self.import_text_regex(filename)
            elif extension == ".aib":
                result = self.import_binary(filename)
            elif extension == ".aip":
                result = self.import_pickle(filename)
            if result == False:
                self.clear()
            return result

    def export_pickle(self, filename, compress=False):
        """将事故文件保存到pickle中，使用protocol3协议"""
        fh = None
        try:
            if compress:
                fh = gzip.open(filename, "wb")
            else:
                fh = open(filename, "wb")
            pickle.dump(self, fh, pickle.HIGHEST_PROTOCOL)
            return True
        except (EnvironmentError, pickle.PicklingError) as err:
            print("{0}: export error : {1}".format(os.path.basename(sys.argv[0]), err))
            return False
        finally:
            if fh is not None:
                fh.close()

    def import_pickle(self, filename):
        """从事故pickle中读取数据"""
        fh = None
        try:
            fh = open(filename, "rb")
            magic = fh.read(len(GZIP_MAGIC))
            if magic == GZIP_MAGIC:
                fh.close()
                fh = gzip.open(filename, "rb")
            else:
                fh.seek(0)
            self.clear()
            self.update(pickle.load(fh))
            return True
        except (EnvironmentError, pickle.UnpicklingError) as err:
            print("{0}: import error : {1}".format(os.path.basename(sys.argv[0]), err))
            return False
        finally:
            if fh is not None:
                fh.close()



