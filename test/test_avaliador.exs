defmodule AvaliadorTest do
  use ExUnit.Case
  doctest AvaliadorTest

  test "Pega maior lance" do
    lanceAlexandre = %TddElixir.Lance{ nome: "Alexandre", valor: 100.00 }
    lanceJoao = %TddElixir.Lance{ nome: "Joao", valor: 99.99 }

    leilao = %TddElixir.Leiloes{}
    leilao.p

    Avaliador.
    assert TddElixir.hello() == :world
  end
end
