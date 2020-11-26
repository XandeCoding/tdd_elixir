defmodule TddElixir.Avaliador do
  defstruct maiorLance: nil, menorLance: nil

  def getMaiorLance(leilao) do
    lances = TddElixir.Leiloes.getLances(leilao)
    Enum.max_by(lances, fn element -> element.valor end, fn -> nil end)
  end

  def getMenorLance(leilao) do
    lances = TddElixir.Leiloes.getLances(leilao)
    Enum.min_by(lances, &(&1.valor))
  end

end
