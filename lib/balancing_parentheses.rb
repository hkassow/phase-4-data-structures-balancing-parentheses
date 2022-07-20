require_relative './stack'

def balancing_parentheses(string)
    ans = 0
    stack = Stack.new()
    string.each_char{|x|
        if x == '('
            stack.push x
        elsif stack.size == 0
            ans += 1
        else
            stack.pop
        end
    } 
    ans += stack.size
end

puts balancing_parentheses("())()")
