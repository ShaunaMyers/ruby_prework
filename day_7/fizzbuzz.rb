
def print_fizz_buzz(num1, num2)
    (num1..num2).each do |i|
        if i % 3 == 0 && i % 5 == 0
            p "FizzBuzz"
        elsif i % 3 == 0
            p "Fizz"
        elsif i % 5 == 0
            p "Buzz"
        else 
            p i
        end
    end

    # Alternative way of doing it, using while loop and incrementing a variable:

    # num = num1

    # while num < num2 
    #     if num % 3 == 0 && num % 5 == 0
    #         p "FizzBuzz"
    #     elsif num % 3 == 0
    #         p "Fizz"
    #     elsif num % 5 == 0
    #         p "Buzz"
    #     else 
    #         p num
    #     end
    #     num += 1
    # end
end

print_fizz_buzz(15, 100)