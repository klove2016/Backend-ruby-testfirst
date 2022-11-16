#write your code here
def add(a, b)
    a + b
end
def subtract(a, b)
    a - b
end
def sum(array)
    sum = 0; 
        for num in 0..array.length
            sum += array[num].to_i;
        end
    return sum;
end