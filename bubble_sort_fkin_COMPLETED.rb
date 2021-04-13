arr = ["b","a","c","a","d"] 
arr2 = [1,2,55,6,3] #double digits error
arr3 = [2,4,6,1,5,6,3]
arr4 =[1,1,0,3,2,4,5,9,0]

#arr_test1 = [1,2,3,55,6]
#arr_test2 = [1,2,3,6,55]

#if arr_test1.each_with_index{|n,i| if i < arr_test1.length-1 and arr_test1[i] <= arr_test1[i+1]; next; elsif i ==arr_test1.length-1; next; else; break; end} != nil
#puts "true"
#else
#  puts "false"
#end

#if arr_test2.each_with_index{|n,i| if i < arr_test2.length-1 and arr_test2[i] <= arr_test2[i+1]; next; elsif i ==arr_test2.length-1; next; else; break; end} != nil
#puts "true"
#else
#  puts "false"
#end


def bubble_sort(arr)

until arr.each_with_index{|n,i| if i < arr.length-1 and arr[i] <= arr[i+1]; next; elsif i ==arr.length-1; next; else; break; end}!= nil do 
j = 0
arr.each_with_index do |n,i|
  arr.each_with_index do |n2,i2|
    if n == n2 
      next
    elsif n > n2 and i < i2 
      if j == 0
      arr[i] = n2
      arr[i2] = n
      j += 1
      break
      else
        break
      end
    elsif n > n2 and i > i2
      next
    elsif n < n2 and i > i2
      if j == 0
      arr[i2] = n
      arr[i] = n2
      j += 1
      break
      else
        break
      end
    elsif n < n2 and i < i2 #value and position
      next
    else
      next
    end
  end
end
end
print arr
end
bubble_sort(arr)
bubble_sort(arr2)
bubble_sort(arr3)
bubble_sort(arr4)
#end
#one switch per loop only
#keep running loops over and over until the order i want is completed.
#compare to bubble? 
