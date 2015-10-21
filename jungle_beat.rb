require_relative 'node'  # => true
require 'pry'            # => true

class Junglebeat
  attr_reader :head, :count  # => nil


  def initialize(beats)
    @count = 0
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
          @count += 1
        else
          @head = Node.new(word)
          current = @head
          @count +=1
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

  def append(value)
    new_node = Node.new(value)
    find_tail.next_node = new_node
  end                               # => :append


  def prepend(value)
    
    current = nil
    value.split.each do |word|
      current = Node.new(word)
      current.next_node = current
    end
    # new_node = Node.new(value)
    current.next_node = @head
    @head = current


  end  # => :prepend

#   def count
#
#
#   end
#
#
#
end  # => :prepend
