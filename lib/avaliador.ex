defmodule TddElixir.Avaliador do
  defstruct maiorLance: nil, menorLance: nil

  def getMaiorLance(leilao) do
    lances = TddElixir.Leiloes.getLances(leilao)
    Enum.max_by(lances, fn element -> element.valor end, fn -> nil end)
  end

  @spec getMenorLanceLeilao(atom | %{getLances: any}) :: any
  def getMenorLanceLeilao(leilao) do
    Enum.min(leilao.getLances())
  end

end
