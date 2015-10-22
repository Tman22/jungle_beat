require 'minitest'              # => true
require 'minitest/autorun'      # => true
require 'minitest/pride'        # => true
require_relative 'jungle_beat'  # => true

class Jungle_Beat_Test < Minitest::Test  # => Minitest::Test

  def test_it_has_a_head
    jb = Junglebeat.new("dee")  # => #<Junglebeat:0x007fc18b83e9c0 @head=#<Node:0x007fc18b83ee48 @node="dee", @next_node=nil>>

    assert_equal "dee", jb.head_value  # => true
  end                                  # => :test_it_has_a_head

  def test_head_works_with_multiple_object
    jb = Junglebeat.new("dee tee bee")      # => #<Junglebeat:0x007fc18b83d610 @head=#<Node:0x007fc18b83cfa8 @node="dee", @next_node=#<Node:0x007fc18b83cf08 @node="tee", @next_node=#<Node:0x007fc18b83ce18 @node="bee", @next_node=nil>>>>

    assert_equal "dee", jb.head_value  # => true
  end                                  # => :test_head_works_with_multiple_object

  def test_it_has_a_tail
    jb = Junglebeat.new("dee deep beep tee wee")  # => #<Junglebeat:0x007fc18c2e2c00 @head=#<Node:0x007fc18c2e2a48 @node="dee", @next_node=#<Node:0x007fc18c2e29f8 @node="deep", @next_node=#<Node:0x007fc18c2e29d0 @node="beep", @next_node=#<Node:0x007fc18c2e29a8 @node="tee", @next_node=#<Node:0x007fc18c2e2958 @node="wee", @next_node=nil>>>>>>

    assert_equal "wee", jb.tail.node  # => true
  end                                 # => :test_it_has_a_tail

  def test_all_for_empty_data
    jb = Junglebeat.new        # => #<Junglebeat:0x007fc18b82c068>

    assert_equal nil, jb.all  # => true
  end                         # => :test_all_for_empty_data

  def test_all_for_multiple_data
    jb = Junglebeat.new("dee deep")  # => #<Junglebeat:0x007fc18b8352d0 @head=#<Node:0x007fc18b834f38 @node="dee", @next_node=#<Node:0x007fc18b834e70 @node="deep", @next_node=nil>>>

    assert_equal "dee deep", jb.all  # => true
  end                                # => :test_all_for_multiple_data

  def test_append_data
    jb = Junglebeat.new("dee weee tee")            # => #<Junglebeat:0x007fc18c3834c0 @head=#<Node:0x007fc18c383218 @node="dee", @next_node=#<Node:0x007fc18c3831c8 @node="weee", @next_node=#<Node:0x007fc18c383178 @node="tee", @next_node=nil>>>>
    jb.all                                         # => "dee weee tee"
    assert_equal 2, jb.append("deep teep")         # => true
    assert_equal "teep", jb.tail.node              # => true
    assert_equal "dee weee tee deep teep", jb.all  # => true
  end                                              # => :test_append_data

  def test_append_data_empty
    jb = Junglebeat.new("dee dee beat")  # => #<Junglebeat:0x007fc18c269300 @head=#<Node:0x007fc18c268608 @node="dee", @next_node=#<Node:0x007fc18c268590 @node="dee", @next_node=#<Node:0x007fc18c268518 @node="beat", @next_node=nil>>>>

    assert_equal nil, jb.append  # => true
  end                            # => :test_append_data_empty

  def test_prepend_data
    jb = Junglebeat.new("dee tee bee")           # => #<Junglebeat:0x007fc18b82fd80 @head=#<Node:0x007fc18b82f768 @node="dee", @next_node=#<Node:0x007fc18b82f628 @node="tee", @next_node=#<Node:0x007fc18b82f600 @node="bee", @next_node=nil>>>>
    assert_equal 2, jb.prepend("beet tee")       # => true
    jb.all                                       # => "beet tee dee tee bee"
    assert_equal "beet", jb.head_value           # => true
    assert_equal "beet tee dee tee bee", jb.all  # => true
  end                                            # => :test_prepend_data

  def test_prepend_data_empty
    jb = Junglebeat.new("de dea tea")  # => #<Junglebeat:0x007fc18b82d2b0 @head=#<Node:0x007fc18b82d1c0 @node="de", @next_node=#<Node:0x007fc18b82d120 @node="dea", @next_node=#<Node:0x007fc18b82d0f8 @node="tea", @next_node=nil>>>>
    assert_equal nil, jb.prepend       # => true
  end                                  # => :test_prepend_data_empty

  def test_make_link_list
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fc18c26b7e0 @head=#<Node:0x007fc18c26b718 @node="dee", @next_node=#<Node:0x007fc18c26b6f0 @node="tee", @next_node=#<Node:0x007fc18c26b6c8 @node="deep", @next_node=nil>>>>

    assert_equal "deep", jb.tail.node  # => true
    assert_equal "dee", jb.head_value  # => true
  end                                  # => :test_make_link_list

  def test_does_it_count_nodes
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fc18b8253a8 @head=#<Node:0x007fc18b825268 @node="dee", @next_node=#<Node:0x007fc18b825218 @node="tee", @next_node=#<Node:0x007fc18b8251f0 @node="deep", @next_node=nil>>>>

    assert_equal 3, jb.count  # => true
  end                         # => :test_does_it_count_nodes

  def test_for_insert
    jb = Junglebeat.new("wee tee bee mee")             # => #<Junglebeat:0x007fc18c2e04a0 @head=#<Node:0x007fc18c2e0310 @node="wee", @next_node=#<Node:0x007fc18c2e02c0 @node="tee", @next_node=#<Node:0x007fc18c2e0298 @node="bee", @next_node=#<Node:0x007fc18c2e0270 @node="mee", @next_node=nil>>>>>
    jb.insert(2, "see beat")                           # => #<Node:0x007fc18c2e0298 @node="bee", @next_node=#<Node:0x007fc18c2e0270 @node="mee", @next_node=nil>>
    jb.all                                             # => "wee tee see beat bee mee"
    jb.head_value                                      # => "wee"
    assert_equal ("wee tee see beat bee mee"), jb.all
  end                                                  # => :test_for_insert

  def test_find_returns_object_or_no
    jb = Junglebeat.new("bee tee see mee kee lee dee")  # => #<Junglebeat:0x007fc18b824750 @head=#<Node:0x007fc18b824570 @node="bee", @next_node=#<Node:0x007fc18b824548 @node="tee", @next_node=#<Node:0x007fc18b8244f8 @node="see", @next_node=#<Node:0x007fc18b824480 @node="mee", @next_node=#<Node:0x007fc18b824458 @node="kee", @next_node=#<Node:0x007fc18b8243b8 @node="lee", @next_node=#<Node:0x007fc18b824390 @node="dee", @next_node=nil>>>>>>>>

    assert_equal "mee kee lee dee", jb.find(3, 4)  # => true
    assert_equal "NO", jb.find(4,4)                # => true
    assert_equal "mee kee", jb.find(3, 2)          # => true
  end                                              # => :test_find_returns_object_or_no

  def test_include_finds_object_returns_true
    jb = Junglebeat.new("dee tee deep wee")   # => #<Junglebeat:0x007fc18c2e1cb0 @head=#<Node:0x007fc18c2e1b48 @node="dee", @next_node=#<Node:0x007fc18c2e1b20 @node="tee", @next_node=#<Node:0x007fc18c2e1ad0 @node="deep", @next_node=#<Node:0x007fc18c2e1aa8 @node="wee", @next_node=nil>>>>>
    jb.all                                    # => "dee tee deep wee"
    jb.include?("beat")                       # => false
    assert jb.include?("tee")                 # => true
    refute jb.include?("beat")                # => false
  end                                         # => :test_include_finds_object_returns_true

  def test_pop_removes_last_object
    jb = Junglebeat.new("dee tees deep wee")  # => #<Junglebeat:0x007fc18b827338 @head=#<Node:0x007fc18b827130 @node="dee", @next_node=#<Node:0x007fc18b8270b8 @node="tees", @next_node=#<Node:0x007fc18b827090 @node="deep", @next_node=#<Node:0x007fc18b826ff0 @node="wee", @next_node=nil>>>>>

    assert_equal "NO", jb.pop(10)        # => true
    assert_equal "wee", jb.pop           # => true
    assert_equal "tees deep", jb.pop(2)  # => true
    assert_equal "dee", jb.all           # => true
  end                                    # => :test_pop_removes_last_object

end  # => :test_pop_removes_last_object

# >> Run options: --seed 44177
# >>
# >> # Running:
# >>
# >> ...........F...
# >>
# >> Finished in 0.003273s, 4582.6490 runs/s, 7943.2582 assertions/s.
# >>
# >>   1) Failure:
# >> Jungle_Beat_Test#test_for_insert [/Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:83]:
# >> Expected: "wee see beat tee bee mee"
# >>   Actual: "wee tee see beat bee mee"
# >>
# >> 15 runs, 26 assertions, 1 failures, 0 errors, 0 skips
