require 'minitest'              # => true
require 'minitest/autorun'      # => true
require 'minitest/pride'        # => true
require_relative 'jungle_beat'  # => true

class Jungle_Beat_Test < Minitest::Test  # => Minitest::Test

  def test_it_has_a_head
    jb = Junglebeat.new("dee")  # => #<Junglebeat:0x007fa4528e2738 @head=#<Node:0x007fa4528e26c0 @node="dee", @next_node=nil>>

    assert_equal "dee", jb.head_value  # => true
  end                                  # => :test_it_has_a_head

  def test_head_works_with_multiple_object
    jb = Junglebeat.new("dee tee bee")      # => #<Junglebeat:0x007fa4520373b8 @head=#<Node:0x007fa452037a70 @node="dee", @next_node=#<Node:0x007fa452037ca0 @node="tee", @next_node=#<Node:0x007fa452037de0 @node="bee", @next_node=nil>>>>

    assert_equal "dee", jb.head_value  # => true
  end                                  # => :test_head_works_with_multiple_object

  def test_it_has_a_tail
    jb = Junglebeat.new("dee deep beep tee wee")  # => #<Junglebeat:0x007fa4528e0e60 @head=#<Node:0x007fa4528e0c80 @node="dee", @next_node=#<Node:0x007fa4528e0c58 @node="deep", @next_node=#<Node:0x007fa4528e0be0 @node="beep", @next_node=#<Node:0x007fa4528e0bb8 @node="tee", @next_node=#<Node:0x007fa4528e0b68 @node="wee", @next_node=nil>>>>>>

    assert_equal "wee", jb.find_tail.node  # => true
  end                                      # => :test_it_has_a_tail


  def test_all_for_empty_data
    skip
    jb = Junglebeat.new()

    assert_equal nil, jb.all
  end                         # => :test_all_for_empty_data


  def test_all_for_multiple_data
    jb = Junglebeat.new("dee deep")  # => #<Junglebeat:0x007fa4528e1838 @head=#<Node:0x007fa4528e1798 @node="dee", @next_node=#<Node:0x007fa4528e1770 @node="deep", @next_node=nil>>>

    assert_equal "dee deep", jb.all  # => true
  end                                # => :test_all_for_multiple_data


  def test_append_data
    jb = Junglebeat.new("dee weee tee")       # => #<Junglebeat:0x007fa45202ca08 @head=#<Node:0x007fa45202c8f0 @node="dee", @next_node=#<Node:0x007fa45202c8c8 @node="weee", @next_node=#<Node:0x007fa45202c878 @node="tee", @next_node=nil>>>>
    jb.all                                    # => "dee weee tee"
    assert_equal 2, jb.append("deep teep")    # => true
    jb.all                                    # => "dee weee tee teep"
    assert_equal "teep", jb.find_tail.node    # => true
    assert_equal "dee weee tee deep teep", jb.all  # => true
  end                                         # => :test_append_data

  def test_append_data_empty
    jb = Junglebeat.new("dee dee beat")  # => #<Junglebeat:0x007fa4528e8728 @head=#<Node:0x007fa4528e8638 @node="dee", @next_node=#<Node:0x007fa4528e85c0 @node="dee", @next_node=#<Node:0x007fa4528e8598 @node="beat", @next_node=nil>>>>

    assert_equal nil, jb.append  # => true
  end                            # => :test_append_data_empty


  def test_prepend_data
    jb = Junglebeat.new("dee tee bee")           # => #<Junglebeat:0x007fa452024a60 @head=#<Node:0x007fa4520248d0 @node="dee", @next_node=#<Node:0x007fa4520248a8 @node="tee", @next_node=#<Node:0x007fa452024858 @node="bee", @next_node=nil>>>>
    assert_equal 2, jb.prepend("beet tee")       # => true
    jb.all                                       # => "beet tee dee tee bee"
    assert_equal "beet", jb.head_value           # => true
    assert_equal "beet tee dee tee bee", jb.all  # => true
  end                                            # => :test_prepend_data

  def test_prepend_data_empty
    jb = Junglebeat.new("de dea tea")  # => #<Junglebeat:0x007fa452025d48 @head=#<Node:0x007fa452025b40 @node="de", @next_node=#<Node:0x007fa452025aa0 @node="dea", @next_node=#<Node:0x007fa452025a78 @node="tea", @next_node=nil>>>>
    assert_equal nil, jb.prepend       # => true
  end                                  # => :test_prepend_data_empty


  def test_make_link_list
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fa4528dbc30 @head=#<Node:0x007fa4528dbac8 @node="dee", @next_node=#<Node:0x007fa4528dbaa0 @node="tee", @next_node=#<Node:0x007fa4528dba78 @node="deep", @next_node=nil>>>>

    assert_equal "deep", jb.find_tail.node  # => true
    assert_equal "dee", jb.head_value       # => true
  end                                       # => :test_make_link_list

  def test_does_it_count_nodes
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fa4528e3958 @head=#<Node:0x007fa4528e3750 @node="dee", @next_node=#<Node:0x007fa4528e3610 @node="tee", @next_node=#<Node:0x007fa4528e35e8 @node="deep", @next_node=nil>>>>

    assert_equal 3, jb.count  # => true
  end                         # => :test_does_it_count_nodes

  def test_for_insert
    skip
    jb = Junglebeat.new("wee tee bee mee")
    jb.insert(3, "see beat")
    jb.all
    assert_equal ("wee tee see beat bee mee"), jb.all
  end                                                  # => :test_for_insert

  def test_find_returns_object
    jb = Junglebeat.new("bee tee see mee kee lee dee")  # => #<Junglebeat:0x007fa45226eb68 @head=#<Node:0x007fa45226e938 @node="bee", @next_node=#<Node:0x007fa45226e8e8 @node="tee", @next_node=#<Node:0x007fa45226e870 @node="see", @next_node=#<Node:0x007fa45226e848 @node="mee", @next_node=#<Node:0x007fa45226e7d0 @node="kee", @next_node=#<Node:0x007fa45226e7a8 @node="lee", @next_node=#<Node:0x007fa45226e780 @node="dee", @next_node=nil>>>>>>>>

    assert_equal "mee kee lee dee", jb.find(3, 4)  # => true
    assert_equal "NO", jb.find(7,9)                # => true
    assert_equal "mee kee", jb.find(3, 2)          # => true
  end                                              # => :test_find_returns_object

  def test_include_finds_object_returns_true
    jb = Junglebeat.new("dee tee deep wee")   # => #<Junglebeat:0x007fa45202f168 @head=#<Node:0x007fa45202f028 @node="dee", @next_node=#<Node:0x007fa45202efd8 @node="tee", @next_node=#<Node:0x007fa45202ef88 @node="deep", @next_node=#<Node:0x007fa45202ec68 @node="wee", @next_node=nil>>>>>
    jb.all                                    # => "dee tee deep wee"
    jb.include?("beat")                       # => false
    assert jb.include?("tee")                 # => true
    refute jb.include?("beat")                # => false
  end                                         # => :test_include_finds_object_returns_true

  def test_pop_removes_last_object
    jb = Junglebeat.new("dee tees deep wee")  # => #<Junglebeat:0x007fa4528e9c18 @head=#<Node:0x007fa4528e9b00 @node="dee", @next_node=#<Node:0x007fa4528e9ad8 @node="tees", @next_node=#<Node:0x007fa4528e9ab0 @node="deep", @next_node=#<Node:0x007fa4528e9a88 @node="wee", @next_node=nil>>>>>


    assert_equal "wee", jb.pop           # => true
    assert_equal "tees deep", jb.pop(2)  # => true
    assert_equal "dee", jb.all           # => true
  end                                    # => :test_pop_removes_last_object








end  # => :test_pop_removes_last_object

# >> Run options: --seed 48518
# >>
# >> # Running:
# >>
# >> .....
# >> \e[1mFrom:\e[0m /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb @ line 141 Junglebeat#find:
# >>
# >>     \e[1;34m138\e[0m: \e[32mdef\e[0m \e[1;34mfind\e[0m(position, amount = \e[1;34m1\e[0m)
# >>     \e[1;34m139\e[0m:   current = @head
# >>     \e[1;34m140\e[0m:   array = []
# >>  => \e[1;34m141\e[0m:   binding.pry
# >>     \e[1;34m142\e[0m:   \e[32mif\e[0m count < (position + amount)
# >>     \e[1;34m143\e[0m:     \e[31m\e[1;31m"\e[0m\e[31mNO\e[1;31m"\e[0m\e[31m\e[0m
# >>     \e[1;34m144\e[0m:   \e[32melse\e[0m
# >>     \e[1;34m145\e[0m:   counter = \e[1;34m1\e[0m
# >>     \e[1;34m146\e[0m:   amount.times \e[32mdo\e[0m
# >>     \e[1;34m147\e[0m:     \e[32muntil\e[0m counter == position
# >>     \e[1;34m148\e[0m:         current = current.next_node
# >>     \e[1;34m149\e[0m:         counter +=\e[1;34m1\e[0m
# >>     \e[1;34m150\e[0m:       \e[32mend\e[0m
# >>     \e[1;34m151\e[0m:       array << current.next_node.node
# >>     \e[1;34m152\e[0m:       position += \e[1;34m1\e[0m
# >>     \e[1;34m153\e[0m:       counter = \e[1;34m1\e[0m
# >>     \e[1;34m154\e[0m:       current = @head
# >>     \e[1;34m155\e[0m:     \e[32mend\e[0m
# >>     \e[1;34m156\e[0m:   array.join(\e[31m\e[1;31m"\e[0m\e[31m \e[1;31m"\e[0m\e[31m\e[0m)
# >>     \e[1;34m157\e[0m:   \e[32mend\e[0m
# >>     \e[1;34m158\e[0m: \e[32mend\e[0m                \e[1;34m# => :find\e[0m
# >>
# >> \e[0G\e[?1034h[1] pry(#<Junglebeat>)>
# >> \e[1mFrom:\e[0m /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb @ line 141 Junglebeat#find:
# >>
# >>     \e[1;34m138\e[0m: \e[32mdef\e[0m \e[1;34mfind\e[0m(position, amount = \e[1;34m1\e[0m)
# >>     \e[1;34m139\e[0m:   current = @head
# >>     \e[1;34m140\e[0m:   array = []
# >>  => \e[1;34m141\e[0m:   binding.pry
# >>     \e[1;34m142\e[0m:   \e[32mif\e[0m count < (position + amount)
# >>     \e[1;34m143\e[0m:     \e[31m\e[1;31m"\e[0m\e[31mNO\e[1;31m"\e[0m\e[31m\e[0m
# >>     \e[1;34m144\e[0m:   \e[32melse\e[0m
# >>     \e[1;34m145\e[0m:   counter = \e[1;34m1\e[0m
# >>     \e[1;34m146\e[0m:   amount.times \e[32mdo\e[0m
# >>     \e[1;34m147\e[0m:     \e[32muntil\e[0m counter == position
# >>     \e[1;34m148\e[0m:         current = current.next_node
# >>     \e[1;34m149\e[0m:         counter +=\e[1;34m1\e[0m
# >>     \e[1;34m150\e[0m:       \e[32mend\e[0m
# >>     \e[1;34m151\e[0m:       array << current.next_node.node
# >>     \e[1;34m152\e[0m:       position += \e[1;34m1\e[0m
# >>     \e[1;34m153\e[0m:       counter = \e[1;34m1\e[0m
# >>     \e[1;34m154\e[0m:       current = @head
# >>     \e[1;34m155\e[0m:     \e[32mend\e[0m
# >>     \e[1;34m156\e[0m:   array.join(\e[31m\e[1;31m"\e[0m\e[31m \e[1;31m"\e[0m\e[31m\e[0m)
# >>     \e[1;34m157\e[0m:   \e[32mend\e[0m
# >>     \e[1;34m158\e[0m: \e[32mend\e[0m                \e[1;34m# => :find\e[0m
# >>
# >> \e[0G[1] pry(#<Junglebeat>)>
# >> \e[1mFrom:\e[0m /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb @ line 141 Junglebeat#find:
# >>
# >>     \e[1;34m138\e[0m: \e[32mdef\e[0m \e[1;34mfind\e[0m(position, amount = \e[1;34m1\e[0m)
# >>     \e[1;34m139\e[0m:   current = @head
# >>     \e[1;34m140\e[0m:   array = []
# >>  => \e[1;34m141\e[0m:   binding.pry
# >>     \e[1;34m142\e[0m:   \e[32mif\e[0m count < (position + amount)
# >>     \e[1;34m143\e[0m:     \e[31m\e[1;31m"\e[0m\e[31mNO\e[1;31m"\e[0m\e[31m\e[0m
# >>     \e[1;34m144\e[0m:   \e[32melse\e[0m
# >>     \e[1;34m145\e[0m:   counter = \e[1;34m1\e[0m
# >>     \e[1;34m146\e[0m:   amount.times \e[32mdo\e[0m
# >>     \e[1;34m147\e[0m:     \e[32muntil\e[0m counter == position
# >>     \e[1;34m148\e[0m:         current = current.next_node
# >>     \e[1;34m149\e[0m:         counter +=\e[1;34m1\e[0m
# >>     \e[1;34m150\e[0m:       \e[32mend\e[0m
# >>     \e[1;34m151\e[0m:       array << current.next_node.node
# >>     \e[1;34m152\e[0m:       position += \e[1;34m1\e[0m
# >>     \e[1;34m153\e[0m:       counter = \e[1;34m1\e[0m
# >>     \e[1;34m154\e[0m:       current = @head
# >>     \e[1;34m155\e[0m:     \e[32mend\e[0m
# >>     \e[1;34m156\e[0m:   array.join(\e[31m\e[1;31m"\e[0m\e[31m \e[1;31m"\e[0m\e[31m\e[0m)
# >>     \e[1;34m157\e[0m:   \e[32mend\e[0m
# >>     \e[1;34m158\e[0m: \e[32mend\e[0m                \e[1;34m# => :find\e[0m
# >>
# >> \e[0G[1] pry(#<Junglebeat>)> .SS.......
# >>
# >> Finished in 0.045126s, 332.4014 runs/s, 509.6821 assertions/s.
# >>
# >> 15 runs, 23 assertions, 0 failures, 0 errors, 2 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
