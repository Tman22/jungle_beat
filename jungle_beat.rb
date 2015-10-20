require_relative 'node'
require 'pry'
class Junglebeat
  attr_accessor :head


  def initialize(beats)
    @head = Node.new(beats)
    @beats = beats.split
  end

  def make_link_list
    node = @head
    @beats.each do |word|
      node.next_node = Node.new(word)
      node = node.next_node
    end
    # @head = @beats[0]
    # @head.next_node = @beats[1]
  end

  def head?
    @head
  end

  def tail?
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.node
  end

  def all
      @head.node
  end

  def append(node)
    @beats.join(node)

    @head.join(node)

  end

  def prepend(node)
    @head
  end

  def count
      ask head to search ask node

  end



end
