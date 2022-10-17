# frozen_string_literal: true

require_relative "./lib/linked_list"


puts "\n\n\tRUNNING TESTS\n\n"
test = LinkedList.new
puts "*\tInitialized test object\n\n"
test.append('element1')
test.append('element2')
test.append('current_tail')
puts "\n*\tAdded three elements\n\n"
puts "Test 1\t\ttail:\t#{test.tail}"
test.prepend('current_head')
puts "\n*\tAdded a fourth element\n\n"
puts "Test 2\t\thead:\t#{test.head}"
puts "Test 3\t\tsize:\t#{test.size}"
test.append('fifth element, index 4')
puts "\n*\tAdded a fifth element\n\n"
puts "Test 4.1\tat(5):\t#{test.at(5)} == nill"
puts "Test 4.2\tat(4):\t#{test.at(4)}"
# puts test.contains?('test5')
# puts test.contains?('test3')
# p test.find('test2')
# p test.find('test5')
# test.pop
# test.append('post-pop')
# test.prepend('prepend-test')
# puts test
# puts test
# test.insert_at(1, 'insert_test')
# puts test
# test.insert_at(0, 'insert_head_test')
# puts test
# test.remove_at(1)
# puts test
# test.remove_at(0)
# puts test
puts "\n\tEND OF TESTS\n\n"
