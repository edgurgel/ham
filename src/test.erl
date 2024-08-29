-module(test).
-type req() :: #{
  binary() => binary(),
  _ => _
}.
-export_type([req/0]).
