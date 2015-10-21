require 'minitest'              # => true
require 'minitest/autorun'      # => true
require_relative 'jungle_beat'  # => true

class Jungle_Beat_Test < Minitest::Test  # => Minitest::Test

  def test_it_has_a_head
    jb = Junglebeat.new("dee")  # => #<Junglebeat:0x007fae09193cc8 @count=1, @head=#<Node:0x007fae09193bb0 @node="dee", @next_node=nil>>

    assert_equal "dee", jb.head_value  # => true
  end                                  # => :test_it_has_a_head

  def test_head_works_with_multiple_object
    jb = Junglebeat.new("dee tee bee")      # => #<Junglebeat:0x007fae09192af8 @count=3, @head=#<Node:0x007fae09192940 @node="dee", @next_node=#<Node:0x007fae091928f0 @node="tee", @next_node=#<Node:0x007fae091928a0 @node="bee", @next_node=nil>>>>

    assert_equal "dee", jb.head_value  # => true
  end                                  # => :test_head_works_with_multiple_object

  def test_it_has_a_tail
    jb = Junglebeat.new("dee deep beep tee wee")  # => #<Junglebeat:0x007fae091822e8 @count=5, @head=#<Node:0x007fae09182130 @node="dee", @next_node=#<Node:0x007fae091820b8 @node="deep", @next_node=#<Node:0x007fae09182090 @node="beep", @next_node=#<Node:0x007fae09182068 @node="tee", @next_node=#<Node:0x007fae09182018 @node="wee", @next_node=nil>>>>>>

    assert_equal "wee", jb.find_tail
  end                                 # => :test_it_has_a_tail


  def test_all_for_empty_data
    jb = Junglebeat.new

    assert_equal nil, jb.all
  end                         # => :test_all_for_empty_data


  def test_all_for_multiple_data
    jb = Junglebeat.new("dee deep")  # => #<Junglebeat:0x007fae09190190 @count=2, @head=#<Node:0x007fae09190528 @node="dee", @next_node=#<Node:0x007fae091902d0 @node="deep", @next_node=nil>>>
    jb.all                           # => "dee deep"
    assert_equal "dee tee", jb.all
  end                                # => :test_all_for_multiple_data


  def test_append_data
    jb = Junglebeat.new("dee weee tee")  # => #<Junglebeat:0x007fae09183bc0 @count=3, @head=#<Node:0x007fae09183940 @node="dee", @next_node=#<Node:0x007fae09183918 @node="weee", @next_node=#<Node:0x007fae09183878 @node="tee", @next_node=nil>>>>
    jb.append("deep")                    # => #<Node:0x007fae09183058 @node="deep", @next_node=nil>

    assert_equal "deep", jb.find_tail.node    # => true
    assert_equal "dee weee tee deep", jb.all  # => true
  end                                         # => :test_append_data


  def test_prepend_data
    jb = Junglebeat.new("dee tee bee")  # => #<Junglebeat:0x007fae091704a8 @count=3, @head=#<Node:0x007fae09170368 @node="dee", @next_node=#<Node:0x007fae09170340 @node="tee", @next_node=#<Node:0x007fae09170318 @node="bee", @next_node=nil>>>>
    jb.prepend("beet tee")
    jb.all
    assert_equal "beet", jb.head_value
    assert_equal "beet tee dee tee bee", jb.all
  end                                   # => :test_prepend_data


  def test_make_link_list
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fae09178130 @count=3, @head=#<Node:0x007fae09178888 @node="dee", @next_node=#<Node:0x007fae09178b30 @node="tee", @next_node=#<Node:0x007fae09179698 @node="deep", @next_node=nil>>>>
    assert_equal "deep", jb.find_tail
    assert_equal "dee", jb.head_value
  end                                    # => :test_make_link_list

  def test_does_it_count_nodes
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fae0918af60 @count=3, @head=#<Node:0x007fae0918ad08 @node="dee", @next_node=#<Node:0x007fae0918ace0 @node="tee", @next_node=#<Node:0x007fae0918ac40 @node="deep", @next_node=nil>>>>

    assert_equal 3, jb.count  # => true
  end                         # => :test_does_it_count_nodes

  def test_for_insert
    skip
    #use insert_variable = count iterate through that.
  end                  # => :test_for_insert

  def test_find_returns_object
    skip
  end                           # => :test_find_returns_object

  def test_include_finds_object_returns_true
    skip
  end                                         # => :test_include_finds_object_returns_true

  def test_pop_removes_last_object
    skip
  end                               # => :test_pop_removes_last_object








end  # => :test_pop_removes_last_object

# >> Run options: --seed 43516
# >>
# >> # Running:
# >>
# >> ..F.SS.FSFSEE
# >>
# >> Finished in 0.016151s, 804.8916 runs/s, 495.3179 assertions/s.
# >>
# >>   1) Failure:
# >> Jungle_Beat_Test#test_all_for_multiple_data [/Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:36]:
# >> Expected: "dee tee"
# >>   Actual: "dee deep"
# >>
# >>
# >>   2) Failure:
# >> Jungle_Beat_Test#test_it_has_a_tail [/Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:22]:
# >> --- expected
# >> +++ actual
# >> @@ -1 +1 @@
# >> -"wee"
# >> +#<Node:0xXXXXXX @node="wee", @next_node=nil>
# >>
# >>
# >>
# >>   3) Failure:
# >> Jungle_Beat_Test#test_make_link_list [/Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:59]:
# >> --- expected
# >> +++ actual
# >> @@ -1 +1 @@
# >> -"deep"
# >> +#<Node:0xXXXXXX @node="deep", @next_node=nil>
# >>
# >>
# >>
# >>   4) Error:
# >> Jungle_Beat_Test#test_all_for_empty_data:
# >> ArgumentError: wrong number of arguments (0 for 1)
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:8:in `initialize'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:27:in `new'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:27:in `test_all_for_empty_data'
# >>
# >>
# >>   5) Error:
# >> Jungle_Beat_Test#test_prepend_data:
# >> NameError: undefined local variable or method `current' for #<Junglebeat:0x007fae091704a8>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:63:in `prepend'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:51:in `test_prepend_data'
# >>
# >> 13 runs, 8 assertions, 3 failures, 2 errors, 4 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
