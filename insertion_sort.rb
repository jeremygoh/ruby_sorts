def insertion_sort(arr)

  arr.each_with_index do |val, index|
    index.downto(1) do |j|
      if arr[j] < arr[j-1]
        swap(arr, j, j-1)
      else
        break
      end
    end
  end
  arr
end


def swap(arr, i, j)
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
end

p a = (1..10000).to_a.shuffle
t1 = Time.now
p insertion_sort a
t2 = Time.now
puts "Time take was #{t2-t1}"