def bubble_sort(array)
    sorted_check = false
    x = 2
    while sorted_check == false do 
        sorted_check = true
        for i in 0..array.length-x
            if array[i] > array[i + 1]
                placeholder = array[i + 1]
                array[i + 1] = array [i]
                array[i] = placeholder
                sorted_check = false
                x += 1
            end
        end
    end
    p "sorted array: #{array}"
end
bubble_sort([5,4,3,2,1])
