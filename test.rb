# frozen_string_literal: true

require_relative "./lib/linked_list"

def notify(msg)
  puts "\n*\t#{msg}\n\n"
end

def print_test(num, desc, output)
  if num.length <= 1
    puts "Test #{num}\t\t#{desc}:\t#{output}"
  else
    puts "Test #{num}\t#{desc}:\t#{output}"
  end
end

notify("RUNNING TESTS")

test = LinkedList.new
notify("Initialized test object")

test.append('element1')
test.append('element2')
test.append('current_tail')
notify("Added three elements")

print_test("1", "tail", "#{test.tail}")

test.prepend('current_head')
notify("Added a fourth element")

print_test("2", "head", "#{test.head}")
print_test("3", "size", "#{test.size}")

test.append('fifth element, index 4')
notify("Added a fifth element")

print_test("4.1", "at(5)", "#{test.at(5)} == nill")
print_test("4.2", "at(4)", "#{test.at(4)}")

test.append("This will be popped")
notify("Added element to be popped")

print_test("5.1", "pop", "#{test.pop}")

notify("Popped last element")

print_test("5.2", "at(5)", "#{test.at(5)} == nill")
print_test("5.3", "tail", "#{test.tail}")

# puts test.contains?('test5')
# puts test.contains?('test3')
# p test.find('test2')
# p test.find('test5')
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
