defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      legacy? ->
        case level do
          0 -> :unknown
          1 -> :debug
          2 -> :info
          3 -> :warning
          4 -> :error
          5 -> :unknown
          _ -> :unknown
        end

      !legacy? ->
        case level do
          0 -> :trace
          1 -> :debug
          2 -> :info
          3 -> :warning
          4 -> :error
          5 -> :fatal
          _ -> :unknown
        end
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    case {to_label(level, legacy?), legacy?} do
      {:error, _} -> :ops
      {:fatal, _} -> :ops
      {:unknown, true} -> :dev1
      {:unknown, _} -> :dev2
      _ -> false
    end
  end
end
