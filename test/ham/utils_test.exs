defmodule Ham.UtilsTest do
  use ExUnit.Case, async: true
  alias Ham.Utils

  defp fetch_test_type(type_name) do
    {:ok, types} =
      Code.Typespec.fetch_types(Ham.Test.TestModule)

    Enum.find_value(types, fn
      {:type, {^type_name, type, _}} -> type
      _ -> nil
    end)
  end

  describe "type_to_string/1" do
    test "complex type" do
      assert :complex |> fetch_test_type() |> Utils.type_to_string() ==
               "{:ok, binary(), req :: binary()} | {:more, binary(), req :: binary()}"
    end

    test "complex type with annotation" do
      assert :complex_annotated |> fetch_test_type() |> Utils.type_to_string() ==
               "{:ok, binary(), req :: binary()} | {:more, binary(), req :: binary()} (\"result\")"
    end
  end
end
