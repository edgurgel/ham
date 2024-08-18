defmodule HamTest do
  use ExUnit.Case, async: true
  alias Ham.Test.CustomAccess
  doctest Ham
  require Ham

  describe "apply/2" do
    test "with behaviours" do
      message = """
      Returned value :wrong does not match type {:ok, Access.value()} | :error.
        Value :wrong does not match type {:ok, Access.value()} | :error.\
      """

      assert_raise(Ham.TypeMatchError, message, fn ->
        Ham.apply(CustomAccess.fetch([], "key"), behaviours: [Access])
      end)

      assert Ham.apply(CustomAccess.pop([], "key"), behaviours: [Access]) == :wrong
    end

    test "invalid call" do
      message = """
      1st argument value "a" does not match 1st parameter's type byte().
        Value "a" does not match type 0..255.\
      """

      assert_raise(Ham.TypeMatchError, message, fn ->
        Ham.apply(URI.char_reserved?("a"))
      end)

      assert_raise(Ham.TypeMatchError, message, fn ->
        Ham.apply(URI, :char_reserved?, ["a"])
      end)
    end
  end

  describe "validate/5" do
    test "valid args and return value" do
    end
  end
end
