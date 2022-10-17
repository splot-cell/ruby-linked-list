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

print_test("4.1", "at(5)", "#{test.at(5)} == nil")
print_test("4.2", "at(4)", "#{test.at(4)}")

test.append("This will be popped")
notify("Added element to be popped")

print_test("5.1", "pop", "#{test.pop}")

notify("Popped last element")

print_test("5.2", "at(5)", "#{test.at(5)} == nil")
print_test("5.3", "tail", "#{test.tail}")

print_test("6.1", "contains?(nil)", "#{test.contains?(nil)} == nil")
print_test("6.2", "contains?(\"fifth element, index 4\")",
           "#{test.contains?('fifth element, index 4')}")
print_test("6.2", "contains?(\"fifth element, index 5\")",
           "#{test.contains?('fifth element, index 5')}")

test.append("65")
notify("Appended element '65'")

print_test("7.1", "find('65')", "#{test.find('65')} == 5")
print_test("7.2", "find(65)", "#{test.find(65)} == nil")
print_test("7.3", "find(nil)", "#{test.find(nil)} == nil")

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
notify("END OF TESTS")
