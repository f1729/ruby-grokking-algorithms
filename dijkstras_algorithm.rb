$processed = []
$Infinity = 1/0.0

$costs = { "a" => 6, "b" => 2, "z" => $Infinity }
$parents = { "a" => "x", "b" => "x", "z" => "" }

def find_lowest_cost_node(costs)
  lowest_cost = $Infinity
  lowest_node = nil

  for node in costs.keys
    current_cost = costs[node]
    if (current_cost < lowest_cost and not $processed.include? node)
      lowest_cost = current_cost
      lowest_node = node
    end
  end
  lowest_node
end

# puts find_lowest_cost_node($costs_initial) # => 2

def dijkstras(graph)
  node = find_lowest_cost_node($costs)

  while node
    cost_of_node = $costs[node]
    neighbors_costs = graph[node]

    for n in neighbors_costs.keys
      new_cost = cost_of_node + neighbors_costs[n]
      if (new_cost < $costs[n])
        $costs[n] = new_cost
        $parents[n] = node
        # change parents
      end
    end

    $processed.append(node)
    node = find_lowest_cost_node($costs)
  end
  { "parents" => $parents, "costs" => $costs }
end


puts dijkstras({ "x" => { "a" => 6, "b" => 2 }, "a" => { "z" => 3 }, "b" => { "a" => 3, "z" => 5}, "z" => {} })
