require 'minitest'              # => true
require 'minitest/autorun'      # => true
require_relative 'jungle_beat'  # => true

class Jungle_Beat_Test < Minitest::Test  # => Minitest::Test

  def test_it_has_a_head
    jb = Junglebeat.new("dee")  # => #<Junglebeat:0x007fd2a2a12828 @beats=["dee"], @count=0>
    jb.make_link_list           # => ["dee"]
    jb.head?

    assert_equal "dee", jb.head?
  end                             # => :test_it_has_a_head

  def test_head_works_with_multiple_object
    jb = Junglebeat.new("dee tee bee")      # => #<Junglebeat:0x007fd2a2a027e8 @beats=["dee", "tee", "bee"], @count=0>
    jb.make_link_list                       # => ["dee", "tee", "bee"]
    assert_equal "dee", jb.head_value       # => true
  end                                       # => :test_head_works_with_multiple_object

  def test_it_has_a_tail
    jb = Junglebeat.new("dee deep")    # => #<Junglebeat:0x007fd2a2a0b118 @beats=["dee", "deep"], @count=0>
    jb.make_link_list                  # => ["dee", "deep"]
    assert_equal "deep", jb.find_tail  # => true
  end                                  # => :test_it_has_a_tail


  def test_all_for_empty_data
    jb = Junglebeat.new

    assert_equal nil, jb.all
  end                         # => :test_all_for_empty_data


  def test_all_for_multiple_data
    jb = Junglebeat.new("dee dee")  # => #<Junglebeat:0x007fd2a2a0bc30 @beats=["dee", "dee"], @count=0>
    assert_equal "dee dee", jb.all  # => true
  end                               # => :test_all_for_multiple_data


  def test_append_data
    jb = Junglebeat.new("dee")  # => #<Junglebeat:0x007fd2a2a11e28 @beats=["dee"], @count=0>
    jb.append("deep")

    assert_equal "deep", jb.find_tail
  end                                  # => :test_append_data


  def test_prepend_data
    string = Junglebeat.new("dee")  # => #<Junglebeat:0x007fd2a2a185e8 @beats=["dee"], @count=0>
    string.prepend("deep")

    assert_equal "dee deep", string.all
  end                                    # => :test_prepend_data


  def test_make_link_list
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fd2a2a10a28 @beats=["dee", "tee", "deep"], @count=0>
    jb.make_link_list                    # => ["dee", "tee", "deep"]
    jb.head_value                        # => "dee"
    assert_equal "deep", jb.find_tail    # => true
    assert_equal "dee", jb.head_value    # => true
  end                                    # => :test_make_link_list

  def test_does_it_count_nodes
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fd2a2a0a498 @beats=["dee", "tee", "deep"], @count=0>
    jb.make_link_list                    # => ["dee", "tee", "deep"]

    assert_equal 3, jb.count  # => true
  end                         # => :test_does_it_count_nodes

  def test_for_insert
    skip
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

# >> Run options: --seed 31293
# >>
# >> # Running:
# >>
# >> ESEEES..S..S.
# >>
# >> Finished in 0.001830s, 7103.0876 runs/s, 3278.3481 assertions/s.
# >>
# >>   1) Error:
# >> Jungle_Beat_Test#test_prepend_data:
# >> NoMethodError: undefined method `prepend' for #<Junglebeat:0x007fd2a2a185e8 @beats=["dee"], @count=0>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:51:in `test_prepend_data'
# >>
# >>
# >>   2) Error:
# >> Jungle_Beat_Test#test_all_for_empty_data:
# >> ArgumentError: wrong number of arguments (0 for 1)
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:8:in `initialize'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:29:in `new'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:29:in `test_all_for_empty_data'
# >>
# >>
# >>   3) Error:
# >> Jungle_Beat_Test#test_it_has_a_head:
# >> NoMethodError: undefined method `head?' for #<Junglebeat:0x007fd2a2a12828>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:10:in `test_it_has_a_head'
# >>
# >>
# >>   4) Error:
# >> Jungle_Beat_Test#test_append_data:
# >> NoMethodError: undefined method `next_node' for nil:NilClass
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:47:in `find_tail'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:61:in `append'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:43:in `test_append_data'
# >>
# >> 13 runs, 6 assertions, 0 failures, 4 errors, 4 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
