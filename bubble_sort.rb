def bubble_sort(arr)
  # takes an array and sorts it using bubble sort

  length = arr.length

  loop do
    swapped = false
    (length-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

def bubble_sort_by(arr)
  length = arr.length

  loop do
    swapped = false
    (length-1).times do |i|
      result = yield(arr[i], arr[i+1])
      if result < 0
	arr[i], arr[i+1] = arr[i+1], arr[i]
	swapped = true
      end
    end
    break unless swapped
  end
  arr
end
