=begin
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
=end

arr = [4,3,78,2,0,2]

def bubble_sort(arr)
  return arr if arr.size <=1

  loop do
    swapped = false

    (arr.size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break if not swapped
  end
  arr
end



p bubble_sort(arr)