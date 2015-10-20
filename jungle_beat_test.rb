require 'minitest'
require 'minitest/autorun'
require_relative 'jungle_beat'

class Jungle_Beat_Test < Minitest::Test

  def test_it_has_a_head
    jb = Junglebeat.new("dee")
    jb.make_link_list
    jb.head?

    assert_equal "dee", jb.head?
  end

  def test_it_has_a_head_multiple
    jb = Junglebeat.new("dee tee bee")
    jb.make_link_list
    assert_equal "dee", jb.head?
  end

  def test_it_has_a_tail
    jb = Junglebeat.new("dee")

    assert_equal "dee", jb.tail?
  end


  def test_all_for_empty_data
    jb = Junglebeat.new("dee")

    assert_equal "dee", jb.all
  end


  def test_all_for_multiple_data
    jb = Junglebeat.new("dee dee")

    assert_equal "dee dee", jb.all
  end


  def test_append_data
    string = Junglebeat.new("dee")

    string.append("deep")

    assert_equal "dee deep", string.all
  end

  def test_prepend_data
    string = Junglebeat.new("dee")
    string1 = Junglebeat.new("deep")

    string.prepend(string1)

    assert_equal "dee deep", string.all
  end

  def test_make_link_list
    jb = Junglebeat.new("dee tee deep")
    jb.make_link_list
    jb.head?

    assert_equal "deep", jb.tail?
    assert_equal "dee", jb.head?
  end







end
