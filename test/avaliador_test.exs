defmodule AvaliadorTest do
  use ExUnit.Case

  test "Pega lances" do
    lanceAlexandre = %TddElixir.Lance{ nome: "Alexandre", valor: 100.00 }
    lanceJoao = %TddElixir.Lance{ nome: "Joao", valor: 99.99 }

    leilao = %TddElixir.Leiloes{}
    leilaoAle_1 = TddElixir.Leiloes.propoe(leilao, lanceAlexandre)
    leilaoAle_2 = TddElixir.Leiloes.propoe(leilaoAle_1, lanceAlexandre)

    leilaoJoao_1 = TddElixir.Leiloes.propoe(leilaoAle_2, lanceJoao)
    leilaoJoao_2 = TddElixir.Leiloes.propoe(leilaoJoao_1, lanceJoao)
    leilaoJoao_3 = TddElixir.Leiloes.propoe(leilaoJoao_2, lanceJoao)

    assert TddElixir.Leiloes.getLances(leilaoJoao_3) == [ lanceJoao, lanceAlexandre ]
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

  test "Pega menor lance" do
    lanceAlexandre = %TddElixir.Lance{ nome: "Alexandre", valor: 100.00 }
    lanceJoao = %TddElixir.Lance{ nome: "Joao", valor: 99.99 }

    leilao = %TddElixir.Leiloes{}
    leilaoAle = TddElixir.Leiloes.propoe(leilao, lanceAlexandre)
    leilaoJoao = TddElixir.Leiloes.propoe(leilaoAle, lanceJoao)
    IO.inspect(TddElixir.Avaliador.getMaiorLance(leilaoJoao))

    assert TddElixir.Avaliador.getMenorLance(leilaoJoao) == lanceJoao
  end
end
