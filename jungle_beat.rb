require_relative 'node'  # => true
require 'pry'            # => true

class Junglebeat
  attr_reader :head, :count  # => nil


  def initialize(beats)
    @beats = beats.split
    @count = 0
  end                     # => :initialize

  def make_link_list
    if @beats
      current = nil
      @beats.each do |word|
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



      # node.next_node = Node.new(word)
      # node = node.next_node
      # count +=1
    end
    # @head = @beats[0]
    # @head.next_node = @beats[1]
  end    # => :make_link_list


  def head_value
  @head.node

  end  # => :head_value

  def find_tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.node
  end                               # => :find_tail
#
  def all
    if @beats
      @beats.join(" ")
    end
  end                               # => :all
#
  def append(value)
    node = Node.new(value)
    find_tail.next_node = node
  end                               # => :append
#
#   def prepend(node)
#
#   end
#
#   def count
#
#
#   end
#
#
#
end                                 # => :append
