defmodule TddElixir.Leiloes do
    defstruct lances: []

    def propoe(leilao, lance) do
        if leilao.lances == [] do
            %TddElixir.Leiloes{ lances: [ lance ]}
        else
            [ head | _ ] = leilao.lances
            unless head == lance do
                %TddElixir.Leiloes{ lances: [ lance | leilao.lances]}
            else
                leilao
            end
        end
    end

    def getLances(leilao) do
        leilao.lances
    end

end
