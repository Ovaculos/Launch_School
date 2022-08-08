def toggle_lights(n)
  lights = {}
  iter = 1
  result = []
  1.upto(n) { |x| lights[x] = false }

  until iter == n + 1 do
    (iter..n).step(iter) { |elem| lights[elem] == false ? lights[elem] = true : lights[elem] = false }
    iter += 1
  end

  lights.select { |_position, state| state == true}.keys

end

# or

# def on_lights(switches)
#   switches.select { |position, state| state == true}.keys
# end

# def toggle_lights(lights)
#   iter = 1
#   until iter == lights.size + 1 do
#     (iter..lights.size).step(iter) { |elem| lights[elem] == false ? lights[elem] = true : lights[elem] = false }
#     iter += 1
#   end
#   lights
# end

# def initialize_lights(size)
#   lights = {}
#   1.upto(size) { |x| lights[x] = false }
#   lights
# end

# def get_the_lights(n)
#   lights = initialize_lights(n)
#   on_lights(toggle_lights(lights))
# end

p toggle_lights(50)
