n = int(input())
numbers = [int(x) for x in input().split()]

def merge_sort(unsorted):
    if len(unsorted) == 1:
        return unsorted

    mid = len(unsorted) // 2
    left = unsorted[:mid]
    right = unsorted[mid:]

    left_ = merge_sort(left)
    right_ = merge_sort(right)
    return merge(left_, right_)

def merge(left, right):
    arr = []
    i = 0
    j = 0

    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            arr.append(left[i])
            i += 1
        else:
            arr.append(right[j])
            j += 1
    
    while i < len(left):
        arr.append(left[i])
        i += 1
    
    while j < len(right):
        arr.append(right[j])
        j += 1
    
    return arr

result = merge_sort(numbers)
print(" ".join([str(x) for x in result]))