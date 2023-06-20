def test(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)

test(birds) do
   |_, _, *raptors| puts raptors
end

