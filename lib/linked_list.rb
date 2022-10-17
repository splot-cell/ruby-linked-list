# frozen_string_literal: true

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    return initalize_with_node(node) if empty?

    @tail.next_node = node
    @tail = next_node
  end

  def prepend(value)
    node = Node.new(value)
    return initalize_with_node(node) if empty?

    node.next_node = @head
    @head = node
  end

  def empty?
    head.nil?
  end

  private:

  def initialize_with_node(node)
    @head = node
    @tail = node
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end
