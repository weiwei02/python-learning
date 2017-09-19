#!/usr/bin/env python3

"""归并排序（Merge Sort）

    基本思想：
    归并（Merge）排序法是将两个（或两个以上）有序表合并成一个新的有序表，即把待排序序列分为若干个子序列，每个子序列是有序的。然后再把有序子序列合并为整体有序序列。
    
    合并方法：
    设r[i…n]由两个有序子表r[i…m]和r[m+1…n]组成，两个子表长度分别为m-i、n-m。
    1.j=m+1；k=i；i=i; //置两个子表的起始下标及辅助数组的起始下标
    2.若i>m 或j>n，转⑷ //其中一个子表已合并完，比较选取结束
    3.//选取r[i]和r[j]较小的存入辅助数组rf
     如果r[i]<r[j]，rf[k]=r[i]； i++； k++； 转⑵
     否则，rf[k]=r[j]； j++； k++； 转⑵
    4.//将尚未处理完的子表中元素存入rf
     如果i<=m，将r[i…m]存入rf[k…n] //前一子表非空
     如果j<=n ,  将r[j…n] 存入rf[k…n] //后一子表非空
    5.合并结束。
    
        //将r[i…m]和r[m +1 …n]归并到辅助数组rf[i…n]  
        void Merge(ElemType *r,ElemType *rf, int i, int m, int n)  
        {  
            int j,k;  
            for(j=m+1,k=i; i<=m && j <=n ; ++k){  
                if(r[j] < r[i]) rf[k] = r[j++];  
                else rf[k] = r[i++];  
            }  
            while(i <= m)  rf[k++] = r[i++];  
            while(j <= n)  rf[k++] = r[j++];  
        }  
    
    归并的迭代算法
    1 个元素的表总是有序的。所以对n 个元素的待排序列，每个元素可看成1 个有序子表。对子表两两合并生成n/2个子表，所得子表除最后一个子表长度可能为1 外，其余子表长度均为2。再进行两两合并，直到生成n 个元素按关键码有序的表。
    :author Wang Weiwei <email>weiwei02@vip.qq.com / weiwei.wang@100credit.com</email> 
    :sine 2017/9/2
    :version 1.0
"""


def merge(arr1, arr2, start, mid, end):
    """
    融合两个有序序列，融合完成后认为序列2是有序的
    :param arr1: 待融合的序列
    :param arr2: 融合的序列
    :param start: 待融合序列的第一个子序列开始索引
    :param mid: 待融合序列的第一个子序列结束索引
    :param end: 待融合序列的第二个子序列结束索引
    :return: 
    """
    i, j = start, mid + 1
    k = start
    while start <= mid and j <= end:
        if arr1[start] < arr1[j]:
            arr2[i] = arr1[start]
            start += 1
        else:
            arr2[i] = arr1[j]
            j += 1
        i += 1
    while start <= mid:
        arr2[i] = arr1[start]
        i += 1
        start += 1
    while k < i:
        arr1[k] = arr2[k]
        k += 1


def merge_sort(arr1, arr2, start, length):
    step = 1
    while step < length:
        s = step
        step = 2 * s
        i = start
        while step + i <= length:
            merge(arr1, arr2, i, i + s - 1, i + step - 1)
            i = i + step
        # 保证下次交换还是从arr1 向 arr2 中进行交换
        if i + s < length:
            merge(arr1, arr2, i, i + s - 1, length - 1)


if __name__ == '__main__':
    arr1 = [11, 15, 12, 14, 13, 10, 11,9,0,17,24]
    print('元集合', arr1)
    merge_sort(arr1,[item for item in range(len(arr1))], 0, len(arr1))
    print('新集合', arr1)