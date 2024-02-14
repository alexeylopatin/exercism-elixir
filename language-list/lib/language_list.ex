defmodule LanguageList do
  @spec new() :: []
  def new() do
    # Please implement the new/0 function
    []
  end

  @spec add(nonempty_maybe_improper_list(), String.t()) :: nonempty_maybe_improper_list()
  def add(list, language) do
    # Please implement the add/2 function
    [language | list]
  end

  def remove(list) do
    # Please implement the remove/1 function
    [_head | tail ] = list
    tail
  end

  @spec first(list()) :: String.t()
  def first(list) do
    # Please implement the first/1 function
    [head | _tail] = list
    head
  end

  @spec count(list()) :: non_neg_integer()
  def count(list) do
    # Please implement the count/1 function
    length(list)
  end

  @spec functional_list?(list()) :: boolean()
  def functional_list?(list) do
    # Please implement the functional_list?/1 function
    "Elixir" in list
  end
end
