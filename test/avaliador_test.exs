defmodule AvaliadorTest do
  use ExUnit.Case

  test "Pega lances" do
    lanceAlexandre = %TddElixir.Lance{ nome: "Alexandre", valor: 100.00 }
    lanceJoao = %TddElixir.Lance{ nome: "Joao", valor: 99.99 }

    leilao = %TddElixir.Leiloes{}
    leilaoAle = TddElixir.Leiloes.propoe(leilao, lanceAlexandre)
    leilaoJoao = TddElixir.Leiloes.propoe(leilaoAle, lanceJoao)

    assert TddElixir.Leiloes.getLances(leilaoJoao) == [ lanceJoao, lanceAlexandre ]
  end

  test "Pega maior lance" do
    lanceAlexandre = %TddElixir.Lance{ nome: "Alexandre", valor: 100.00 }
    lanceJoao = %TddElixir.Lance{ nome: "Joao", valor: 99.99 }

    leilao = %TddElixir.Leiloes{}
    leilaoAle = TddElixir.Leiloes.propoe(leilao, lanceAlexandre)
    leilaoJoao = TddElixir.Leiloes.propoe(leilaoAle, lanceJoao)
    IO.inspect(TddElixir.Avaliador.getMaiorLance(leilaoJoao))

    assert TddElixir.Avaliador.getMaiorLance(leilaoJoao) == lanceAlexandre
  end
end
