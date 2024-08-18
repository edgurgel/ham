ExUnit.start()

[Ham.Test.TestModule, Ham.Test.Impl]
|> Enum.each(&Code.ensure_loaded(&1))
