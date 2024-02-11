defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    # Please implement the eat_ghost?/2 function
    power_pellet_active? and touching_ghost?
  end

  def score?(touching_power_pellet?, touching_dot?) do
    # Please implement the score?/2 function
    touching_power_pellet? or touching_dot?
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    case power_pellet_active? do
       true -> false
       false -> touching_ghost?
    end
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    # Please implement the win?/3 function
    case lose?(power_pellet_active?, touching_ghost?) do
       true -> false
       false -> has_eaten_all_dots?
    end
  end
end
