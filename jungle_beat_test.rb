require 'minitest'              # => true
require 'minitest/autorun'      # => true
require_relative 'jungle_beat'  # => true

class Jungle_Beat_Test < Minitest::Test  # => Minitest::Test

  def test_it_has_a_head
    jb = Junglebeat.new("dee")  # => #<Junglebeat:0x007fb234023dc8 @beats=["dee"]>
    jb.make_link_list           # => ["dee"]
    jb.head?

    assert_equal "dee", jb.head?
  end                             # => :test_it_has_a_head

  def test_head_works_with_multiple_object
    jb = Junglebeat.new("dee tee bee")      # => #<Junglebeat:0x007fb2340232b0 @beats=["dee", "tee", "bee"]>
    jb.make_link_list
    assert_equal "dee", jb.head?
  end                                       # => :test_head_works_with_multiple_object

  def test_it_has_a_tail
    jb = Junglebeat.new("dee")  # => #<Junglebeat:0x007fb2340291b0 @beats=["dee"]>

    assert_equal "dee", jb.tail?
  end                             # => :test_it_has_a_tail


  def test_all_for_empty_data
    jb = Junglebeat.new("")    # => #<Junglebeat:0x007fb2340214d8 @beats=[]>

    assert_equal nil, jb.all
  end                         # => :test_all_for_empty_data


  def test_all_for_multiple_data
    jb = Junglebeat.new("dee dee")  # => #<Junglebeat:0x007fb234028aa8 @beats=["dee", "dee"]>
    assert_equal "dee dee", jb.all
  end                               # => :test_all_for_multiple_data


  def test_append_data
    string = Junglebeat.new("dee")  # => #<Junglebeat:0x007fb23402b820 @beats=["dee"]>
    string.append("deep")

    assert_equal "dee deep", string.all
  end                                    # => :test_append_data


  def test_prepend_data
    string = Junglebeat.new("dee")  # => #<Junglebeat:0x007fb234028288 @beats=["dee"]>
    string.prepend("deep")

    assert_equal "dee deep", string.all
  end                                    # => :test_prepend_data


  def test_make_link_list
    jb = Junglebeat.new("dee tee deep")  # => #<Junglebeat:0x007fb2340220e0 @beats=["dee", "tee", "deep"]>
    jb.make_link_list

    assert_equal "deep", jb.tail
    assert_equal "dee", jb.head
  end                             # => :test_make_link_list


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

# >> Run options: --seed 65292
# >>
# >> # Running:
# >>
# >> ESSSEEEEESEE
# >>
# >> Finished in 0.001747s, 6869.3075 runs/s, 0.0000 assertions/s.
# >>
# >>   1) Error:
# >> Jungle_Beat_Test#test_append_data:
# >> NoMethodError: undefined method `append' for #<Junglebeat:0x007fb23402b820 @beats=["dee"]>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:43:in `test_append_data'
# >>
# >>
# >>   2) Error:
# >> Jungle_Beat_Test#test_it_has_a_tail:
# >> NoMethodError: undefined method `next_node' for nil:NilClass
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:42:in `tail?'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:24:in `test_it_has_a_tail'
# >>
# >>
# >>   3) Error:
# >> Jungle_Beat_Test#test_all_for_multiple_data:
# >> NoMethodError: undefined method `all' for #<Junglebeat:0x007fb234028aa8 @beats=["dee", "dee"]>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:37:in `test_all_for_multiple_data'
# >>
# >>
# >>   4) Error:
# >> Jungle_Beat_Test#test_prepend_data:
# >> NoMethodError: undefined method `prepend' for #<Junglebeat:0x007fb234028288 @beats=["dee"]>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:51:in `test_prepend_data'
# >>
# >>
# >>   5) Error:
# >> Jungle_Beat_Test#test_it_has_a_head:
# >> NoMethodError: undefined method `head?' for #<Junglebeat:0x007fb234023dc8>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:10:in `test_it_has_a_head'
# >>
# >>
# >>   6) Error:
# >> Jungle_Beat_Test#test_head_works_with_multiple_object:
# >> NameError: undefined local variable or method `current' for #<Junglebeat:0x007fb2340232b0>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:17:in `block in make_link_list'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:14:in `each'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:14:in `make_link_list'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:17:in `test_head_works_with_multiple_object'
# >>
# >>
# >>   7) Error:
# >> Jungle_Beat_Test#test_make_link_list:
# >> NameError: undefined local variable or method `current' for #<Junglebeat:0x007fb2340220e0>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:17:in `block in make_link_list'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:14:in `each'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat.rb:14:in `make_link_list'
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:59:in `test_make_link_list'
# >>
# >>
# >>   8) Error:
# >> Jungle_Beat_Test#test_all_for_empty_data:
# >> NoMethodError: undefined method `all' for #<Junglebeat:0x007fb2340214d8 @beats=[]>
# >>     /Users/taylormoore/turing/1module/jungle_beat/jungle_beat_test.rb:31:in `test_all_for_empty_data'
# >>
# >> 12 runs, 0 assertions, 0 failures, 8 errors, 4 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
