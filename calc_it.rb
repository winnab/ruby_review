first_number = 1
second_number = 1
# TODO:
## any kind of validation, error checking, allow floats or ints
## support more than two numbers

def compute
@numbers_for_calculation = []
@operator_details = nil

end

def greet

end

def confirm

end

def ask_for_input

end


puts "Let's do math."
print "Wanna (a)dd, (s)ubstract, (m)ultiply, or (d)ivide? "
operation = gets.chomp.strip.downcase.intern

operation_string = {
@operator_options = {
  a: {
    operator: "+",
    operator_string: "add",
    next_num_prompt: "Added to?",
  },
  s: {
    operator: "-",
    operator_string: "subtract",
    next_num_prompt: "Subtracted from?",
  },
  m: {
    operator: "*",
    operator_string: "multiply",
    next_num_prompt: "Multiplied by?",
  },
  d: {
    operator: "/",
    operator_string: "divide",
    next_num_prompt: "Divided by?",
  }
}

print "Cool. First number to #{operation_string[operation][:operator_string]}? "
first_number = gets.chomp.to_i

case operation
when :a
   print operation_string[:a][:question_string] + " "
when :s
   print operation_string[:s][:question_string] + " "
when :m
   print operation_string[:m][:question_string] + " "
when :d
   print operation_string[:d][:question_string] + " "
end

second_number = gets.chomp.to_i

case operation
when :a
   puts operation_string[:a][:answer_string]
when :s
   puts operation_string[:s][:answer_string]
when :m
   puts operation_string[:m][:answer_string]
when :d
   puts operation_string[:d][:answer_string]
end


