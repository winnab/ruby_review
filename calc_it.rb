first_number = 1
second_number = 1

def compute

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
  a: {
    operator_string: "add",
    question_string: "Added to?",
    answer_string: "#{first_number} + #{second_number} is: #{first_number + second_number}"
  },
  s: {
    operator_string: "subtract",
    question_string: "Subtracted from?",
    answer_string: "#{first_number} - #{second_number} is: #{first_number - second_number}"
  },
  m: {
    operator_string: "multiply",
    question_string: "Multiplied by?",
    answer_string: "#{first_number} * #{second_number} is: #{first_number * second_number}"
  },
  d: {
    operator_string: "divide",
    question_string: "Divided by?",
    answer_string: "#{first_number} / #{second_number} is: #{first_number / second_number}"
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


