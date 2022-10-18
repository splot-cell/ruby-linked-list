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
    return nil if index_out_of_bounds(index)

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

  def find(value)
    current = @head
    @size.times do |i|
      return i if current.value == value
      current = current.next_node
    end
    nil
  end

  def to_s
    str = String.new
    current = @head
    @size.times do |i|
      str.concat("(#{current}) -> ")
      current = current.next_node
    end
    str.concat("nil")
  end

  def insert_at(value, index)
    return if index_out_of_bounds(index)

    new_node = Node.new(value)
    new_node.next_node = at(index)

    if index == 0
      @head = new_node
    else
      at(index - 1).next_node = new_node
    end

    @size += 1
  end

  def remove_at(index)
    return if index_out_of_bounds(index)

    tmp_node = at(index)

    if index == 0
      @head = tmp_node.next_node
    else
      at(index - 1).next_node = tmp_node.next_node
    end

    @size -= 1
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

  def index_out_of_bounds(index)
    index > @size || index < 0
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
