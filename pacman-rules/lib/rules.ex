defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    # Please implement the eat_ghost?/2 function
    power_pellet_active? and touching_ghost?
  end

  def score?(touching_power_pellet?, touching_dot?) do
    # Please implement the score?/2 function
    touching_power_pellet? or touching_dot?
  end

  @doc """
  Determines if the player loses the game.

  The player loses if they are touching a ghost and do not have a power pellet active.

  ## Parameters
  - power_pellet_active? : A boolean indicating if a power pellet is active.
  - touching_ghost? : A boolean indicating if the player is touching a ghost.

  ## Returns
  - A boolean indicating if the player loses.
  """
  @spec lose?(boolean(), boolean()) :: boolean()
  def lose?(power_pellet_active?, touching_ghost?) do
    not power_pellet_active? and touching_ghost?
  end

  @doc """
  
  Determines if the player wins the game.

  The player wins if they have eaten all the dots and have not lost the game.
  Losing the game is defined as touching a ghost without a power pellet being active.

  ## Parameters
  - has_eaten_all_dots? : A boolean indicating if all dots have been eaten.
  - power_pellet_active? : A boolean indicating if a power pellet is active.
  - touching_ghost? : A boolean indicating if the player is touching a ghost.

  ## Returns
  - A boolean indicating if the player wins.
  """
  @spec win?(boolean(), boolean(), boolean()) :: boolean()
  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    not lose?(power_pellet_active?, touching_ghost?) and has_eaten_all_dots?
  end
end
