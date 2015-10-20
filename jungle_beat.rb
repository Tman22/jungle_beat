require_relative 'node'  # => true
require 'pry'            # => true

class Junglebeat
  attr_reader :head  # => nil


  def initialize(beats = nil)
    @beats = beats.split
  end                          # => :initialize

  def make_link_list
    if @beats
      @beats.each do |word|
        if @head
          node = Node.new(word)
          binding.pry
          current.next_node = node
          # puts current.node
          current = node
        else
          @head = Node.new(word)
          current = @head
        end
      end



      # node.next_node = Node.new(word)
      # node = node.next_node
      # count +=1
    end
    # @head = @beats[0]
    # @head.next_node = @beats[1]
  end    # => :make_link_list

  def head?
  @head

  end  # => :head?

  def tail?
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.node
  end                               # => :tail?
#
#   def all
#       @head.node
#   end
#
#   def append(node)
#     @head
#   end
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
end                                 # => :tail?
