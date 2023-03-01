class CircularQueue
  attr_reader :write_idx, :old_idx

  def initialize(size)
    @buffer = Array.new(size)
    @write_idx = 0
    @old_idx = 0
  end

  def enqueue(val)
    unless @buffer[@write_idx].nil?
      @old_idx = increment(@write_idx)
    end

    @buffer[@write_idx] = val
    @write_idx = increment(@write_idx)
  end

  def dequeue
    ret_val = @buffer[@old_idx]
    @buffer[@old_idx] = nil
    @old_idx = increment(@old_idx) unless ret_val.nil?
    ret_val
  end

  private

  def increment(val)
    (val + 1) % @buffer.size
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil