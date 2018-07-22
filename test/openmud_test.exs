defmodule OpenmudTest do
  use ExUnit.Case
  doctest Openmud

  test "greets the world" do
    assert Openmud.hello() == :world
  end
end
