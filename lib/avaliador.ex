defmodule Avaliador do
  require TddElixir.Leiloes
  defstruct maiorLance: nil, menorLance: nil

  def getMaiorLance(Leilao) do
      Enum.max(TddElixir.Leiloes.getLances())
  end

  def getMenorLance(Leilao) do
    Enum.min(TddElixir.Leiloes.getLances())
  end
end
