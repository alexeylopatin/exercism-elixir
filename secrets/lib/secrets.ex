defmodule Secrets do
  def secret_add(secret) do
    &(&1 + secret)
  end

  def secret_subtract(secret) do
    &(&1 - secret)
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    fn x -> div(x, secret) end
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    fn x -> Bitwise.band(x, secret) end
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    fn x -> Bitwise.bxor(x, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
    fn x ->
      secret_function1.(x) |> secret_function2.()
    end
  end
end
