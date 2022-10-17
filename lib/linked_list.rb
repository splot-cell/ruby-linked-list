# frozen_string_literal: true

class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node = Node.new(value)
    return initialize_with_node(node) if empty?

    @tail.next_node = node
    @tail = node
    @size += 1
  end

  def prepend(value)
    node = Node.new(value)
    return initialize_with_node(node) if empty?

    node.next_node = @head
    @head = node
    @size += 1
  end

  def empty?
    head.nil?
  end

  private

  def initialize_with_node(node)
    @head = node
    @tail = node
    @size += 1
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end

  def to_s
    @value
  end
end

test = LinkedList.new
test.append('test1')
test.append('test2')
test.append('test3')
p test.tail.to_s
test.prepend('test4')
p test.head.to_s
p test.size
# puts test.contains?('test5')
# puts test.contains?('test3')
# p test.find('test2')
# p test.find('test5')
# test.pop
# test.append('post-pop')
# test.prepend('prepend-test')
# test.append('append-test')
# puts test
# p test.at(5)
# puts test
# test.insert_at(1, 'insert_test')
# puts test
# test.insert_at(0, 'insert_head_test')
# puts test
# test.remove_at(1)
# puts test
# test.remove_at(0)
# puts test
