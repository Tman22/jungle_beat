require_relative 'node'
require 'pry'

class Junglebeat
  attr_reader :head

#inspect count of Node_Test

  def initialize(beats = nil)
    make_link_list(beats)
  end

  def make_link_list(beats)
    if beats
      current = nil
      beats.split.each do |word|
        if @head
          node = Node.new(word)
          current.next_node = node
          current = node
        else
          @head = Node.new(word)
          current = @head
        end
      end
    end
  end

  def head_value
  @head.node
  end

  def tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current
  end

  def all
    if @head
      current = @head
      array = []
      array << @head.node
      until current.next_node == nil
        current = current.next_node
        array << current.node
      end
      array.join(" ")
    end
  end

  def count
    current = @head
    count = 1
    until current.next_node == nil
      count += 1
      current = current.next_node
    end
    count
  end

  def append(value = nil)
    if value
      new_head = nil
      current = nil
      counter = 1
      value.split.each do |word|
        if current
          node = Node.new(word)
          current.next_node = node
          current = node
          counter +=1
        else
          new_head = Node.new(word)
          current = new_head
        end
      end
      tail.next_node = new_head
      counter
    end
  end

  def prepend(value =nil)
    if value
      new_head = nil
      current = nil
      counter = 1
      value.split.each do |word|
        if new_head
          node = Node.new(word)
          current.next_node = node
          current = node
          counter +=1
        else
          new_head = Node.new(word)
          current = new_head
        end
        current.next_node = @head
      end
      @head = new_head
      counter
    end
  end

  def include?(data)
    current = @head
    until current.next_node == nil
      current = current.next_node
      if current.node == data
         return true
      end
    end
    false
  end

  def pop(number = 1)
    if count < number
      "NO"
    else
    current = @head
    array = []
    number.times do
      while current.next_node.next_node != nil
            current = current.next_node
          end
              array << current.next_node.node
              current.next_node = nil
              current = @head
        end
        array.reverse.join(" ")
      end
    end

  def insert(position, value)
    current = @head
    (position-1).times do
      current = current.next_node
    end
      new_tail = current.next_node
      value.split.each do |word|
        current.next_node = Node.new(word)
        current = current.next_node
      end
      current.next_node = new_tail
  end

  def find(position, amount = 1)
    current = @head
    array = []
    if count < (position + amount)
      "NO"
    else
    counter = 1
    amount.times do
      until counter == position
          current = current.next_node
          counter +=1
        end
        array << current.next_node.node
        position += 1
        counter = 1
        current = @head
      end
    array.join(" ")
    end
  end

  def play
    `say -r 250 -v Boing "#{self.all}"`
    count
  end

  def valid_beats(beats)
    new_array = []
    array = w%(tee dee deep bop boop la na)
    beats.each do |word|
      # if word == tee || word == dee || word == deep || word || bop || boop || word == la || word ==n
      array.each do |valid|
          if word == valid
          new_array << word
        end
      end
    end
  end




end
