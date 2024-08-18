defmodule Ham.Test.CustomAccess do
  @behaviour Access

  @impl Access
  def fetch(_data, _key), do: :wrong
  @impl Access
  def get_and_update(_data, _key, _function), do: :wrong

  @impl Access
  @spec pop(any, any) :: :wrong
  def pop(_data, _key), do: :wrong
end
