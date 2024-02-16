n = int(input())
numbers = list(map(int, input().split()))

def merge_sort(arr, low, high, n):
    if low < high:
        mid = (low + high) // 2
        merge_sort(arr, low, mid, n)
        merge_sort(arr, mid+1, high, n)
        return merge(arr, low, mid, high, n)
    
    return arr

def merge(arr, low, mid, high, n):
    i = low
    j = mid+1

    k = low
    merged = [0] * n

    while i <= mid and j <= high:
        if arr[i] <= arr[j]:
            merged[k] = arr[i]
            i += 1
            k += 1
        else:
            merged[k] = arr[j]
            j += 1
            k += 1
    
    while i <= mid:
        merged[k] = arr[i]
        i += 1
        k += 1
    
    while j <= high:
        merged[k] = arr[j]
        j += 1
        k += 1
    
    for m in range(low, high+1):
        arr[m] = merged[m]
    
    return arr

result = merge_sort(numbers, 0, n - 1, n)
print(" ".join(list(map(str, result))))