# frozen_string_literal: true

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    if empty?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = next_node
  end

  def prepend(value)
    node = Node.new(value)
    if empty?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def empty?
    head.nil?
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end
