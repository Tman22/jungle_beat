require 'minitest'          # => true
require 'minitest/autorun'  # => true
require_relative 'node'     # => true

class Node_Test < Minitest::Test  # => Minitest::Test

  def test_data_nil
    node = Node.new              # => #<Node:0x007fdd7408f7b0 @node=nil, @next_node=nil>
    assert_equal nil, node.data  # => true
  end                            # => :test_data_nil

  def test_data_dee
    node = Node.new("dee")         # => #<Node:0x007fdd74a30120 @node="dee", @next_node=nil>
    assert_equal "dee", node.data  # => true
  end                              # => :test_data_dee

end  # => :test_data_dee

# >> Run options: --seed 48064
# >>
# >> # Running:
# >>
# >> ..
# >>
# >> Finished in 0.001584s, 1262.5545 runs/s, 1262.5545 assertions/s.
# >>
# >> 2 runs, 2 assertions, 0 failures, 0 errors, 0 skips
