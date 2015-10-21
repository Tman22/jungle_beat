require_relative 'node'  # => true
require 'pry'            # => true

class Junglebeat
  attr_reader :head, :count  # => nil


  def initialize(beats)
    make_link_list(beats)
  end                      # => :initialize

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
  end                               # => :make_link_list


  def head_value
  @head.node

  end  # => :head_value

  def find_tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current
  end                               # => :find_tail
#
  def all
    current = @head
    array = []
    array << @head.node
    until current.next_node == nil
      current = current.next_node
      array << current.node
    end
    array.join(" ")
  end                               # => :all

  def count
    current = @head
    count = 1
    until current.next_node == nil
      count += 1
      current = current.next_node
    end
    count
  end                               # => :count

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
      find_tail.next_node = current
      counter
    end

  end  # => :append


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
  end                                # => :prepend

  def include?(data)
    current = @head
    until current.next_node == nil
      current = current.next_node
      if current.node == data
         return true
      end
    end
    false
  end                               # => :include?

  def pop(number = 1)
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
    end                                         # => :pop


  def insert(position, value)

  end  # => :insert

  def find(position, amount = 1)
    current = @head
    array = []
    binding.pry
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
  end                # => :find

  def play
    `say -r 500 -v Boing "#{self.all}"`
    count
  end       # => :play


end  # => :play
