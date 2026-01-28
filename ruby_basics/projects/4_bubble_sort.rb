# Problem -> sort a number array using bubble sort 
# Bubble sort sorts by swapping adjacent numbers -> 4 , 2 then swap -> 2, 4 
# Do this for the complete array and eventually the array will be sorted.
# 
# Logic
# so we have to start sorting by traversing the array
# example = [3, 2, 4, 1]
# p1 ->  2, 3, 4, 1
# p2 ->  2, 3, 1, 4
# p3 -> 
# So the logic is to pass from 0 to n-2 in 1st pass 
# then 0 to n-3 in the 2nd pass
# .. until array is sorted
#

def bubble_sort(nums)
  n = nums.size
  for i in 0..n-2 
    for j in 0..n-i-2 
      if (nums[j+1] < nums[j])
        t = nums[j]
        nums[j]= nums[j+1]
        nums[j+1] = t
      end
    end
  end
  return nums
end


arr = [3, 2, 4, 1]

print("bubble sort : #{bubble_sort(arr)}")

