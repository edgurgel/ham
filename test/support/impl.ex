defmodule Ham.Test.Impl do
  @moduledoc false
  @behaviour Ham.Test.Behaviour

  def foo_any, do: :ok
  def foo_none, do: raise("none")
  def foo_atom, do: :ok
  def foo_map, do: %{}
  def foo_pid, do: self()
  def foo_port, do: :gen_tcp.listen(0, []) |> elem(1)
  def foo_reference, do: make_ref()
  def foo_struct, do: %URI{}
  def foo_tuple, do: {1, 2, 3}
  def foo_float, do: 1.0
  def foo_integer, do: 1
  def foo_neg_integer, do: -1
  def foo_non_neg_integer, do: 0
  def foo_pos_integer, do: 3
  def foo_list, do: [:a]
  def foo_nonempty_list, do: [:a]
  def foo_maybe_improper_list, do: [:a | :b]
  def foo_nonempty_improper_list, do: [:a | :b]
  def foo_nonempty_maybe_improper_list, do: [:a | :b]
  def foo_atom_literal, do: :ok
  def foo_empty_bitstring_literal, do: <<>>
  def foo_bitstring_size_literal, do: <<1::size(3)>>
  def foo_bitstring_unit_literal, do: <<1::size(9)>>
  def foo_bitstring_size_unit_literal, do: <<1::8>>
  def foo_nullary_function_literal, do: fn -> nil end
  def foo_binary_function_literal, do: fn _, _ -> nil end
  def foo_any_arity_function_literal, do: fn -> :ok end
  def foo_integer_literal, do: 1
  def foo_neg_integer_literal, do: -1
  def foo_integer_range_literal, do: 2
  def foo_list_literal, do: [:ok]
  def foo_empty_list_literal, do: []
  def foo_nonempty_any_list_literal, do: [1]
  def foo_nonempty_list_literal, do: [:ok]
  def foo_keyword_list_literal, do: [key1: :ok, key2: :ok]
  def foo_empty_map_literal, do: %{}
  def foo_map_required_atom_key_literal, do: %{key: :ok}
  def foo_map_required_key_literal, do: %{ok: :ok}
  def foo_map_optional_key_literal, do: %{ok: :ok}
  def foo_map_required_and_optional_key_literal, do: %{:ok => :ok, 2 => 3}
  def foo_map_overlapping_required_types_literal, do: %{:ok => :ok, :error => :error, 2 => :ok}

  def foo_map_struct_key, do: %{__struct__: :foo, key: 123}
  def foo_struct_literal, do: %Ham.Test.Struct{}
  def foo_struct_fields_literal, do: %Ham.Test.Struct{foo: 123}
  def foo_empty_tuple_literal, do: {}
  def foo_two_tuple_literal, do: {:ok, :done}
  def foo_term, do: :ok
  def foo_arity, do: 1
  def foo_as_boolean, do: :ok
  def foo_binary, do: "123"
  def foo_bitstring, do: <<>>
  def foo_bool, do: true
  def foo_boolean, do: false
  def foo_byte, do: ?A
  def foo_char, do: 0x100000
  def foo_charlist, do: [65]
  def foo_nonempty_charlist, do: [65]
  def foo_fun, do: fn -> :ok end
  def foo_function, do: fn -> :ok end
  def foo_identifier, do: self()
  def foo_iodata, do: "iodata"
  def foo_iolist, do: ["iodata"]
  def foo_keyword, do: :ok
  def foo_keyword_type, do: [key: 1]
  def foo_list_any, do: []
  def foo_nonempty_list_any, do: [1]
  def foo_maybe_improper_list_any, do: [:a]
  def foo_nonempty_maybe_improper_list_any, do: [:a]
  def foo_mfa, do: {__MODULE__, :foo_mfa, 0}
  def foo_module, do: __MODULE__
  def foo_no_return, do: raise("no_return")
  def foo_number, do: 1
  def foo_node, do: :ok
  def foo_timeout, do: 123
  def foo_remote_type, do: []
  def foo_remote_type_with_arg, do: [[1]]
  def foo_nonexistent_remote_module, do: :ok
  def foo_nonexistent_remote_type, do: :ok
  def foo_protocol_remote_type, do: []
  def foo_no_arg, do: :ok
  def foo_unnamed_arg(_atom), do: :ok
  def foo_named_arg(_arg1), do: :ok
  def foo_named_and_unnamed_arg(_arg1, _arg2), do: :ok
  def foo_remote_type_arg(_arg), do: :ok

  def foo_user_type, do: [[:foo_type]]
  @type type_from_module :: :foo_type
  def foo_module_user_type, do: :foo_type
  def foo_ann_type_user_type(_), do: :ok
  def foo_annotated_return_type, do: :return_type
  def foo_annotated_type_in_container, do: {:correct_type}
  def foo_union, do: :b
  def foo_uneven_union, do: %{a: 1}
  def foo_multiple_typespec(_), do: :a
  def foo_remote_param_type, do: {:ok, :local}

  @type local :: :local

  @type param_type_1(arg1) :: arg1
  @type param_type_2(arg2) :: param_type_1(arg2)
  def foo_nested_param_types, do: :param

  @type multiline_param_type(param) :: %{
          value: param
        }
  def foo_multiline_param_type, do: %{value: :arg}

  @typep private_type :: :private_value
  @type type_including_private_type :: private_type
  def foo_private_type, do: :private_value

  @opaque opaque_type :: :opaque_value
  def foo_opaque_type, do: :opaque_value

  def foo_guarded(_arg), do: [1]
end
