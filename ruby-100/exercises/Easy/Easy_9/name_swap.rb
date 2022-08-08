def swap_name(orig_name)
  orig_name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'