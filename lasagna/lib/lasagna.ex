defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven() do
   40
  end

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(spent_oven_time) do
    expected_minutes_in_oven() - spent_oven_time
  end

  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(layers_no) do
   layers_no * 2
  end

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers_no, spent_oven_time) do
    spent_oven_time + preparation_time_in_minutes(layers_no)
  end

  # Please define the 'alarm/0' function
  def alarm(), do: "Ding!"
end
