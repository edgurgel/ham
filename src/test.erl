-module(test).

-export([new/2]).
-export_type([req/0, person_record/0]).

-record(person, {name :: string(), height :: integer() | '_'}).
-type person_record() :: #person{name :: binary, height :: integer}.

-spec new(binary(), integer()) -> person_record().
new(Name, Height) ->
    #person{name = Name, height = Height}.

%-type person() :: #person{height :: height()}.
-type req() :: #{
  binary() => binary(),
  _ => _
}.

