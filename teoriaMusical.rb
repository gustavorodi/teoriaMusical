  class TeoriaMusical
    def initialize
        @notas = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
        @notaMaior = [0,2,2,1,2,2,2,1]
        @notaMenor = [0,2,1,2,2,1,2,2]
        @newArray  = []
        @escalaMaior = []
        @escalaMenor = []
    end

    def iniciar
        puts "Olá selecione uma nota músical das apresentadas a seguier:\n #{@notas}"
        notaEscolida = gets.strip
        puts "A sequência maior é #{notasMaiores(notaEscolida)}"
        puts "A sequência menor é #{notasMenores(notaEscolida)}" 
    end

    def notasMaiores(nota)

        localizacao = @notas.find_index(nota)
        reorganizarArray(localizacao)

        temp = 0
        for x in 0...7 do
            temp += @notaMaior[x]
            @escalaMaior.push(@newArray[temp])
        end

        return @escalaMaior
    end
    
    def notasMenores(nota)

        localizacao = @notas.find_index(nota)
        reorganizarArray(localizacao)

        temp = 0
        for x in 0...7 do
            temp += @notaMenor[x]
            @escalaMenor.push(@newArray[temp])
        end

        return @escalaMenor
    end

    def reorganizarArray(localizacao)
        arrayAnt = @notas[0, localizacao]
        arrayPos = @notas[localizacao, @notas.size]
        @newArray = arrayPos + arrayAnt
    end

end

teoriaMusical = TeoriaMusical.new
teoriaMusical.iniciar
