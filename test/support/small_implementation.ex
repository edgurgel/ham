defmodule Ham.Test.SmallImplementation do
  @moduledoc false

  @behaviour Ham.Test.SmallBehaviour
  def foo, do: 1

  def other_foo, do: 1

  def other_foo(_), do: 1

  def nospec_fun, do: 1
end
