# def bubble_sort(arr)
#   left_num = arr[0]
#   right_num = 0
#   sorted = []
#   arr.each_with_index do | curr_num, index |
#     right_num = arr[index + 1]
#     left_num = curr_num
#     if index == arr.length - 1
#       sorted[index] = curr_num
#       break
#     elsif left_num > right_num
#       sorted[index] = right_num
#       sorted[index + 1] = left_num
#       puts "L: #{left_num} R: #{right_num}"
#     else
#       sorted[index] = curr_num
#       puts "Unchanged: #{curr_num}"
#     end
#   end
#   sorted
# end

# def bubble_sort(arr)
#   comp_num = arr[0]
#   sorted = []
#   left_ind = 0
#   right_ind = 0

#   arr.each_with_index do | curr_num, index |
#     if comp_num == curr_num
#       next
#     elsif comp_num > curr_num
#       sorted << curr_num
#     elsif comp_num < curr_num
#       sorted << comp_num
#       comp_num = curr_num
#       p comp_num
#     elsif index == (arr.length - 1)
#       sorted << comp_num
#     end
#   end
#   sorted
# end

# def bubble_sort(arr)
#   comp_num = arr[0]
#   sorted = []
#   is_sorted = false
#   (1..arr.length).each do |step|
#     arr.each_with_index do | curr_num, index |
#       if comp_num > curr_num
#         sorted[index] = curr_num
#         sorted[index + 1] = comp_num
#       elsif comp_num < curr_num
#         sorted[index] = comp_num
#         comp_num = curr_num
#       end
#     end
#   arr = sorted.compact
#   sorted = []
#   p sorted.compact
#   p arr
#   end
# end

def bubble_sort(arr)
  comp_num = arr[0]
  sorted = []
  (1..arr.length).each do |step|
    arr.each_with_index do | curr_num, index |
      if comp_num == curr_num && index != 0
        sorted[index] = comp_num
      elsif comp_num > curr_num
        sorted[index] = curr_num
        sorted[index + 1] = comp_num
      elsif comp_num < curr_num
        sorted[index] = comp_num
        comp_num = curr_num
      end
    end
  
    if arr == arr.sort
      arr.delete_at(-1)
      p arr
      return arr
    end
    
    arr = sorted.compact.push(comp_num)
    sorted = []
    comp_num = arr[0]
  end
end

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

bubble_sort([444,1,2222,3,4,5])

bubble_sort([0, 2, 2, 3, 4, 78])