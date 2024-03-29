require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    first = @list.first
    size = @list.size
    shift_return = @list.shift
    refute_equal(size, @list.size)
    assert_equal(first, shift_return)
  end

  def test_pop
    last = @list.last
    size = @list.size
    pop_return = @list.pop
    refute_equal(size, @list.size)
    assert_equal(last, pop_return)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end

  def test_adding_non_todo
    assert_raises(TypeError) { @list.add(5) }
  end

  def test_shovel
    before_size = @list.size
    @list << Todo.new('Ball up')
    refute_equal(before_size, @list.size)
  end

  def test_add
    before_size = @list.size
    @list.add(Todo.new('Ball up'))
    refute_equal(before_size, @list.size)
  end

  def test_item_at
    assert_raises(IndexError) { @list.item_at(@list.size) }
    @todo1 == @list.item_at(0)
    @todo3 == @list.item_at(2)
  end

  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(@list.size) }
    @list.mark_done_at(1)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(false, @todo3.done?)
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(@list.size) }
    @list.mark_done_at(1)
    @list.mark_undone_at(1)
    assert_equal(false, @todo2.done?)
  end

  def test_done!
    @list.done!
    @list.done?
  end

  def test_remove_at
    assert_raises(IndexError) { @list.remove_at(100) }
    @list.remove_at(1)
    assert_equal([@todo1, @todo3], @list.to_a)
  end

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)

    @list.mark_done_at(0)

    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)

    @list.done!

    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_each
    iterations = 0
    @list.each { iterations += 1 }
    assert_equal(3, iterations)
  end

  def test_each_return
    assert_equal(@list, @list.each {|todo| nil })
  end

  def test_select
    selection = @list.select { |todo| todo.title == 'Buy milk' }.to_a
    assert_equal([@todo1], selection)
    refute_equal(@list, selection)
  end
end

