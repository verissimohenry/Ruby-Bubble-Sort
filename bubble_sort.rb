def bubble_sort(arr)
  test = false
  until test
    test = true
    arr.each_with_index do |_a, index|
      next if index == arr.length - 1

      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        test = false
      end
    end
  end

  arr
end
arr = [4, 3, 78, 2, 0, 2]
p bubble_sort(arr) # = [0, 2, 2, 3, 4, 78]

def bubble_sort_by(arr)
  sorted = false
  until sorted
    sorted = true
    arr.each_with_index do |item, index|
      next unless arr[index + 1] && yield(item, arr[index + 1]).positive?

       arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        sorted = false
    end
  end

  arr
end

p bubble_sort_by(%w[sabaka hi hello hey]) { |left, right| left.length - right.length }
