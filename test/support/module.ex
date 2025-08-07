defmodule Ham.Test.TestModule do
  @moduledoc false

  @spec sum(number, number) :: number
  def sum(a, b), do: a + b

  @spec foo_any :: any
  def foo_any, do: :ok
  @spec foo_none :: none
  def foo_none, do: raise("none")
  @spec foo_atom :: atom
  def foo_atom, do: :ok
  @spec foo_map :: map
  def foo_map, do: %{}
  @spec foo_pid :: pid
  def foo_pid, do: self()
  @spec foo_port :: port
  def foo_port, do: :gen_tcp.listen(0, []) |> elem(1)
  @spec foo_reference :: reference
  def foo_reference, do: make_ref()
  @spec foo_struct :: struct
  def foo_struct, do: %URI{}
  @spec foo_string :: string()
  def foo_string, do: ~c"abc"
  @spec foo_tuple :: tuple
  def foo_tuple, do: {1, 2, 3}
  @spec foo_float :: float
  def foo_float, do: 1.0
  @spec foo_integer :: integer
  def foo_integer, do: 1
  @spec foo_neg_integer :: neg_integer
  def foo_neg_integer, do: -1
  @spec foo_non_neg_integer :: non_neg_integer
  def foo_non_neg_integer, do: 0
  @spec foo_pos_integer :: pos_integer
  def foo_pos_integer, do: 3
  @spec foo_list :: list(atom)
  def foo_list, do: [:a]
  @spec foo_nonempty_list :: nonempty_list(atom)
  def foo_nonempty_list, do: [:a]
  @spec foo_maybe_improper_list :: maybe_improper_list(:a, :b)
  def foo_maybe_improper_list, do: [:a | :b]
  @spec foo_nonempty_improper_list :: nonempty_improper_list(:a, :b)
  def foo_nonempty_improper_list, do: [:a | :b]
  @spec foo_nonempty_maybe_improper_list :: nonempty_maybe_improper_list(:a, :b)
  def foo_nonempty_maybe_improper_list, do: [:a | :b]

  @spec foo_atom_literal :: :ok
  def foo_atom_literal, do: :ok
  @spec foo_empty_bitstring_literal :: <<>>
  def foo_empty_bitstring_literal, do: <<>>
  @spec foo_bitstring_size_literal :: <<_::3>>
  def foo_bitstring_size_literal, do: <<1::size(3)>>
  @spec foo_bitstring_unit_literal :: <<_::_*3>>
  def foo_bitstring_unit_literal, do: <<1::size(9)>>
  @spec foo_bitstring_size_unit_literal :: <<_::2, _::_*3>>
  def foo_bitstring_size_unit_literal, do: <<1::8>>
  @spec foo_nullary_function_literal :: (-> :ok)
  def foo_nullary_function_literal, do: fn -> nil end
  @spec foo_binary_function_literal :: (:a, :b -> :ok)
  def foo_binary_function_literal, do: fn _, _ -> nil end
  @spec foo_any_arity_function_literal :: (... -> :ok)
  def foo_any_arity_function_literal, do: fn -> :ok end
  @spec foo_integer_literal :: 1
  def foo_integer_literal, do: 1
  @spec foo_neg_integer_literal :: -1
  def foo_neg_integer_literal, do: -1
  @spec foo_integer_range_literal :: 1..10
  def foo_integer_range_literal, do: 2
  @spec foo_list_literal :: [atom]
  def foo_list_literal, do: [:ok]
  @spec foo_empty_list_literal :: []
  def foo_empty_list_literal, do: []
  @spec foo_nonempty_any_list_literal :: [...]
  def foo_nonempty_any_list_literal, do: [1]
  @spec foo_nonempty_list_literal :: [atom, ...]
  def foo_nonempty_list_literal, do: [:ok]
  @spec foo_keyword_list_literal :: [key1: atom, key2: number]
  def foo_keyword_list_literal, do: [key1: :ok, key2: :ok]
  @spec foo_empty_map_literal :: %{}
  def foo_empty_map_literal, do: %{}
  @spec foo_map_required_atom_key_literal :: %{key: atom}
  def foo_map_required_atom_key_literal, do: %{key: :ok}
  @spec foo_map_required_key_literal :: %{required(atom) => atom}
  def foo_map_required_key_literal, do: %{ok: :ok}
  @spec foo_map_optional_key_literal :: %{optional(atom) => atom}
  def foo_map_optional_key_literal, do: %{ok: :ok}

  @spec foo_map_required_and_optional_key_literal :: %{
          required(atom) => atom,
          optional(number) => number
        }
  def foo_map_required_and_optional_key_literal, do: %{:ok => :ok, 2 => 3}

  @spec foo_map_overlapping_required_types_literal :: %{
          required(atom) => atom,
          required(atom | number) => atom
        }
  def foo_map_overlapping_required_types_literal, do: %{:ok => :ok, :error => :error, 2 => :ok}

  @spec foo_map_struct_key :: %{
          :__struct__ => atom,
          key: number
        }
  def foo_map_struct_key, do: %{__struct__: :foo, key: 123}
  @spec foo_struct_literal :: %Ham.Test.Struct{}
  def foo_struct_literal, do: %Ham.Test.Struct{}
  @spec foo_struct_fields_literal :: %Ham.Test.Struct{foo: number}
  def foo_struct_fields_literal, do: %Ham.Test.Struct{foo: 123}
  @spec foo_empty_tuple_literal :: {}
  def foo_empty_tuple_literal, do: {}
  @spec foo_two_tuple_literal :: {:ok, atom}
  def foo_two_tuple_literal, do: {:ok, :done}

  @spec foo_term :: term
  def foo_term, do: :ok
  @spec foo_arity :: arity
  def foo_arity, do: 1
  @spec foo_as_boolean :: as_boolean(:ok | nil)
  def foo_as_boolean, do: :ok
  @spec foo_binary :: binary
  def foo_binary, do: "123"
  @spec foo_bitstring :: bitstring
  def foo_bitstring, do: <<>>
  @spec foo_bool :: bool
  def foo_bool, do: true
  @spec foo_boolean :: boolean
  def foo_boolean, do: false
  @spec foo_byte :: byte
  def foo_byte, do: ?A
  @spec foo_char :: char
  def foo_char, do: 0x100000
  @spec foo_charlist :: charlist
  def foo_charlist, do: [65]
  @spec foo_nonempty_charlist :: nonempty_charlist
  def foo_nonempty_charlist, do: [65]
  @spec foo_fun :: fun
  def foo_fun, do: fn -> :ok end
  @spec foo_function :: function
  def foo_function, do: fn -> :ok end
  @spec foo_identifier :: identifier
  def foo_identifier, do: self()
  @spec foo_iodata :: iodata
  def foo_iodata, do: "iodata"
  @spec foo_iolist :: iolist
  def foo_iolist, do: ["iodata"]
  @spec foo_keyword :: keyword
  def foo_keyword, do: [a: "b"]
  @spec foo_keyword_type :: keyword(number)
  def foo_keyword_type, do: [key: 1]
  @spec foo_list_any :: list
  def foo_list_any, do: []
  @spec foo_nonempty_list_any :: nonempty_list
  def foo_nonempty_list_any, do: [1]
  @spec foo_maybe_improper_list_any :: maybe_improper_list
  def foo_maybe_improper_list_any, do: [:a]
  @spec foo_nonempty_maybe_improper_list_any :: nonempty_maybe_improper_list
  def foo_nonempty_maybe_improper_list_any, do: [:a]
  @spec foo_mfa :: mfa
  def foo_mfa, do: {__MODULE__, :foo_mfa, 0}
  @spec foo_module :: module
  def foo_module, do: __MODULE__
  @spec foo_no_return :: no_return
  def foo_no_return, do: raise("no_return")
  @spec foo_number :: number
  def foo_number, do: 1
  @spec foo_node :: atom
  def foo_node, do: :ok
  @spec foo_timeout :: timeout
  def foo_timeout, do: 123

  @spec foo_remote_type :: Ham.Test.Struct.my_list()
  def foo_remote_type, do: []
  @spec foo_remote_type_with_arg :: Ham.Test.Struct.my_list(number)
  def foo_remote_type_with_arg, do: [[1]]
  @spec foo_nonexistent_remote_module :: Ham.Test.NonexistentStruct.my_list()
  def foo_nonexistent_remote_module, do: :ok
  @spec foo_nonexistent_remote_type :: Ham.Test.Struct.nonexistent_type()
  def foo_nonexistent_remote_type, do: :ok
  @spec foo_protocol_remote_type :: Enumerable.t()
  def foo_protocol_remote_type, do: []

  @spec foo_no_arg :: :ok
  def foo_no_arg, do: :ok
  @spec foo_unnamed_arg(atom) :: :ok
  def foo_unnamed_arg(_atom), do: :ok
  @spec foo_named_arg(arg1 :: atom) :: :ok
  def foo_named_arg(_arg1), do: :ok
  @spec foo_named_and_unnamed_arg(atom, arg2 :: number) :: :ok
  def foo_named_and_unnamed_arg(_arg1, _arg2), do: :ok
  @spec foo_remote_type_arg(Ham.Test.Struct.my_list()) :: :ok
  def foo_remote_type_arg(_arg), do: :ok

  @spec foo_user_type :: Ham.Test.Struct.my_type_user()
  def foo_user_type, do: [[:foo_type]]
  @type type_from_module :: :foo_type
  @spec foo_module_user_type :: type_from_module
  def foo_module_user_type, do: :foo_type
  @spec foo_ann_type_user_type(arg :: type_from_module) :: :ok
  def foo_ann_type_user_type(_), do: :ok

  @spec foo_annotated_return_type :: return_value :: :return_type
  def foo_annotated_return_type, do: :return_type
  @spec foo_annotated_type_in_container :: {correct_type_name :: :correct_type}
  def foo_annotated_type_in_container, do: {:correct_type}

  @spec foo_union :: :a | :b
  def foo_union, do: :b
  @spec foo_uneven_union :: :a | %{a: 1}
  def foo_uneven_union, do: %{a: 1}

  @spec foo_multiple_typespec(arg :: :a) :: :a
  @spec foo_multiple_typespec(arg :: :b) :: :b
  def foo_multiple_typespec(_), do: :a

  @spec foo_remote_param_type :: Ham.Test.Struct.ok(local)
  def foo_remote_param_type, do: {:ok, :local}

  @type local :: :local

  @type param_type_1(arg1) :: arg1
  @type param_type_2(arg2) :: param_type_1(arg2)
  @spec foo_nested_param_types :: param_type_2(:param)
  def foo_nested_param_types, do: :param

  @type multiline_param_type(param) :: %{
          value: param
        }
  @spec foo_multiline_param_type :: multiline_param_type(:arg)
  def foo_multiline_param_type, do: %{value: :arg}

  @typep private_type :: :private_value
  @type type_including_private_type :: private_type
  @spec foo_private_type :: type_including_private_type
  def foo_private_type, do: :private_value

  @opaque opaque_type :: :opaque_value
  @spec foo_opaque_type :: opaque_type
  def foo_opaque_type, do: :opaque_value

  @spec foo_guarded(arg) :: [arg] when arg: integer
  def foo_guarded(_arg), do: [1]

  def nospec_fun, do: :ok

  @spec map_type_with_underscore() :: :test.req()
  def map_type_with_underscore, do: %{method: "GET"}

  @type complex :: {:ok, binary(), req :: binary()} | {:more, binary(), req :: binary()}
  @type complex_annotated ::
          result :: {:ok, binary(), req :: binary()} | {:more, binary(), req :: binary()}

  @spec foo_multiple_options_annotated :: complex_annotated
  def foo_multiple_options_annotated, do: {:ok, "a", "b"}

  @spec foo_multiple_options :: complex
  def foo_multiple_options, do: {:ok, "a", "b"}

  @spec record_type() :: :test.person_record()
  def record_type, do: {:person, "name", 1}
end
