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

  def at(index)
    return nil if index > @size

    found = @head
    index.times { found = found.next_node }
    found
  end

  def pop
    return if empty?

    tmp_node = @tail
    @size -= 1
    @tail = at(size - 1)
    @tail.next_node = nil
    tmp_node
  end

  def contains?(value)
    return if value.nil?

    current = @head
    size.times do
      return true if current.value == value
      current = current.next_node
    end
    return false
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
