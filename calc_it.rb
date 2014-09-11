# TODO:
## any kind of validation, error checking, allow floats or ints
## support more than two numbers

@numbers_for_calculation = []
@operator_details = nil

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

#--------------------#
# Presentational
#--------------------#
def greet
  puts "Let's do some math."
  puts "--------------------"
end

def ask_which_operator
  print "Wanna (a)dd, (s)ubstract, (m)ultiply, or (d)ivide? "
  set_operator_details(gets)
end


def ask_first_number
  print "Cool. First number to #{@operator_details[:operator_string]}? "
  store_number(gets)
end

def ask_additional_numbers
  print "#{@operator_details[:next_num_prompt]} "
  store_number(gets)
end

def display_answer_as_message
  puts "#{@numbers_for_calculation[0]} #{@operator_details[:operator]} #{@numbers_for_calculation[1]} is: #{do_calc}"
end

#--------------------#
# Helpers
#--------------------#
def set_operator_details(input)
  @operator_details = @operator_options.fetch(input.chomp.strip.downcase.intern)
end

def store_number(num)
  @numbers_for_calculation.push(num.chomp.to_i)
end

def do_calc
  @numbers_for_calculation.reduce(@operator_details[:operator])
end

greet
ask_which_operator
ask_first_number
ask_additional_numbers
display_answer_as_message



