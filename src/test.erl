-module(test).
-record(person, {name :: string(), height :: integer() | '_'}).

-type person_record() :: #person{}.
%-type person() :: #person{height :: height()}.
-type req() :: #{
  binary() => binary(),
  _ => _
}.
-export_type([req/0, person_record/0]).
