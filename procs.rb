# Procs can be used to save blocks of code to be used later
# Known as proc objects

def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square_number = proc {|sum| sum ** 2}
proc_sum_array     = proc {|array| array.sum}
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)