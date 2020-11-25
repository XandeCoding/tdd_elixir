defmodule TddElixir.Leiloes do
    defstruct lances: []

    def propoe(leilao, lance) do
        if leilao.lances == [] do
            %TddElixir.Leiloes{ lances: [ lance ]}
        else
            %TddElixir.Leiloes{ lances: [ lance | leilao.lances]}
        end
    end

    def getLances(leilao) do
        leilao.lances
    end

end
