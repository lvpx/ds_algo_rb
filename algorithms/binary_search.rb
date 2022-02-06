# Simple binary search implementation
class BinarySearch
  def search(arr, n)
    lo = 0
    mid = arr.size / 2
    hi = arr.size


    while lo <= hi
      return mid if arr[mid].equal? n
      if n < arr[mid]
        hi = mid
      else
        lo = mid + 1
      end
      mid = (lo + hi) / 2
    end
    return -1
  end
end

arr = [1, 3, 5, 6, 8, 9, 11, 15, 19, 21, 21]
searcher = BinarySearch.new
puts searcher.search(arr, 21)