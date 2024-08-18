defmodule Ham.Test.MultiBehaviourImplementation do
  @moduledoc false

  @behaviour Ham.Test.SmallBehaviour
  @behaviour Ham.Test.AdditionalBehaviour

  @impl Ham.Test.SmallBehaviour
  def foo, do: 1

  @impl Ham.Test.SmallBehaviour
  def other_foo, do: 1

  @impl Ham.Test.SmallBehaviour
  def other_foo(_), do: 1

  @impl Ham.Test.AdditionalBehaviour
  def additional_foo, do: 1

  def nospec_fun, do: 1
end
