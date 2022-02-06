# Implement merge sort
# Input -> Array of intergers
# Output -> Sorted Array of integers
# 
# 1. Divide the list in two parts
# 2. Sort the divided lists separately
# 3. Merge the divided lists


# Merge two sorted arrays
def merge(left, right)
  i = 0
  j = 0
  merged = []
  while i < left.size && j < right.size
    if left[i] < right[j]
      merged.append(left[i])
      i += 1
    else
      merged.append(right[j])
      j += 1
    end
  end

  while i < left.size
    merged.append(left[i])
    i += 1
  end  
  while j < left.size
    merged.append(right[j])
    j += 1
  end

  merged
end 

def merge_sort(list)
  if list.size == 2
  high = list[0] <=> list[1]
    if high > 0
      return [] << list[1] << list[0]
    end  
  elsif list.size == 1
    return [list[0]]
  end
  mid = list.size / 2
  puts mid
  left = merge_sort(list[..mid])
  right = merge_sort(list[(mid + 1)..])
  return merge(left, right)
end
