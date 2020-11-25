defmodule TddElixir.Leiloes do
    @lances []

    def propoe(lance) do
       @lances ++ lance
    end

    def getLances() do
        @lances
    end

end
