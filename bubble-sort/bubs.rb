# def bubble_sort(arr)
#   comp_num = arr[0]
#   sorted = []
#   (1..arr.length).each do |step|
#     arr.each_with_index do | curr_num, index |
#       if comp_num == curr_num && index != 0
#         sorted[index] = comp_num
#       elsif comp_num > curr_num
#         sorted[index] = curr_num
#         sorted[index + 1] = comp_num
#       elsif comp_num < curr_num
#         sorted[index] = comp_num
#         comp_num = curr_num
#       end
#     end

#     arr = sorted.compact.push(comp_num)
#     sorted = []
#     comp_num = arr[0]
#   end
#   arr.delete_at(-1)
#   p arr
#   arr
# end

def bubble_sort(arr)
  (arr.length - 1).times do
    swapped = false
    arr.each_with_index do |num, index|
      if index == arr.length - 1
        break
      end

      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swapped = true
      end
    end
    
    if swapped == false
      break
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

p bubble_sort([444,1,2222,3,4,5])
