--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    HealthPoints
    Velocidade
    Ataque Special
Habilidades
    Bomba de lodo
    Chicote de vinhas

=============================================
|
| BULBASAUR
| Um pokemon do tipo planta e venenoso.
|
| Som: Bulbasaur! (Repete o proprio nome)
|
| Atributos:
|   Ataque: //00000000
|   Defesa: ///0000000
|   ...
|
====p========================================


]]

-- UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "BULBASAUR"
local description = "Um pokemon do tipo planta e venenoso."
local tipoBulbasaur = "🍀😷"
local sound = "Bulbasaur!"
local favoriteTime = "Amanhecer"
local item = "Folhas"

-- Atributos
local attackAttribute = 4
local defenseAttribute = 5
local healthPointsAttribute = 3
local speedAttribute = 2
local specialAttackAttribute = 3

-- função que recebe um atributo e nos retorna uma barra de progresso em string/texto
local function getProgressBar (attribute)
    local fullChar = "▮|"
    local emptyChar = ".▯"
-- Barrinhas ^
    local result = ""
    -- ^^^^^ Variavel resonsável por receber o valor fullChar ou emptyChar
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar

        end
    end

    return result
    -- ^^^ Checa 10 vezes enquanto adiciona 1 ao valor "i" a cada checagem
    -- se o número do atributo é menor ou igual a "i" se sim, 
    -- result = fullChar, Se não result= emptyChar
end



-- Cartão
print("=============================================")
print("| ")
print("| ".. monsterName)
print("| ".. description)
print("| ")
print("| Tipo: ".. tipoBulbasaur)
print("| ")
print("| Som: ".. sound)
print("| ")
print("| Horario favorito: ".. favoriteTime)
print("| ")
print("| Item: ".. item)
print("| ")
print("| Atributos:")
print("|   Ataque:     " .. getProgressBar(attackAttribute))
print("|   SpAtaque:   " .. getProgressBar(specialAttackAttribute))
print("|   Defesa:     " .. getProgressBar(defenseAttribute))
print("|   Vida:       " .. getProgressBar(healthPointsAttribute))
print("|   Velocidade: " .. getProgressBar(speedAttribute))
print("| ")
print("=============================================")

-- Verso Cartão


-- Ataques \/\/\/
local atkBulbasaur1 = "Vine Whip"
local atkStatBulbasaur2 = "Synthesis"
local atkBulbasaur3 = "Razor Leaf"
local spAtkBulbasaur4 = "Solar Beam"

-- Força dos ataques \/\/\/
local atkBulbasaur1Power = 30
local atkStatBulbasaur2Power = 0
local atkBulbasaur3Power = 50
local spAtkBulbasaur4Power = 120

-- Pontos de poder dos ataques. (Indica quantas vezes o ataque pode ser usado)

local atkBulbasaur1PP = 25
local atkStatBulbasaur2PP = 10
local atkBulbasaur3PP = 20
local spAtkBulbasaur4PP = 5

--[[
Natureza do pokemon, cada pokemon recebe uma "Personalidade" assim que nascem
Dependendo da personalidade de seu pokemon alguns atributos ficam mais fortes e outros
Mais fracos.
]]
local natureBulbasaur = "Modest"
local modestTraits = "+SPATK -ATK"

--[[
IV: Individual Value, (Valor Individual) um valor pré definido pelo jogo que não tem como alterar
Que define os pontos fortes do seu pokemon por meio de pontos. cada atributo do pokemon
tem um valor "IV" definido, ou seja, se o valor IV do ataque fisico do meu bulbasaur
for 31 (O maximo de pontos possivel) e o de Special Ataque for de 1, é preferivel que 
eu use ataques fisicos ao inves de usar ataques Especiais.

EV: Effort Value, (Valor de Esforço) é um numero que pode ir de 0 até 255 que é 
responsável por buffar atributos especificos do seu pokemon, para conseguir "EV"
é necessario derrotar pokemons selvagens que tem um valor "EV" atribuido a eles.
Exemplo: Meu Bulbasaur tem 0 de ev em velocidade, eu entro em batalha com um ratata e
o derroto, meu Bulbasaur agr terá 1 de "EV" de velocidade, fazendo com que ele seja mais
rapido que um Bulbasaur identico a ele.


]]

-- EVS
local bulbasaurTotalEV = 210
local bulbasaurAtkEV = 30
local bulbasaurSpAtkEV = 40
local bulbasaurDefenseEV = 70
local bulbasaurHealthEV = 60
local bulbasaurSpeedEV = 10
-- IVS
local bulbasaurAtkIV = 3
local bulbasaurSpAtkIV = 5
local bulbasaurDefenseIV = 25
local bulbasaurHealthIV = 31
local bulbasaurSpeedIV = 1

print("=============================================")
print("| Verso do Cartão")
print("| ")
print("| Ataques:")
print("| " .. atkBulbasaur1)
print("| " .. "PWR= " .. atkBulbasaur1Power .. " PP=".. atkBulbasaur1PP)
print("| " .. atkStatBulbasaur2)
print("| " .. "PWR= " .. atkStatBulbasaur2Power .. " PP=".. atkStatBulbasaur2PP)
print("| " .. atkBulbasaur3)
print("| " .. "PWR= " .. atkBulbasaur3Power .. " PP=".. atkBulbasaur3PP)
print("| " .. spAtkBulbasaur4)
print("| " .. "PWR= " .. spAtkBulbasaur4Power .. " PP=".. spAtkBulbasaur4PP)
print("| ")
print("| Nature = " .. natureBulbasaur)
print("|  " .. modestTraits)
print("| ")
print("| IVS ")
print("| Atk = " .. bulbasaurAtkIV .. "  SpAtk = " .. bulbasaurSpAtkIV)
print("| Health = " .. bulbasaurHealthIV .. "  Defense = " .. bulbasaurDefenseIV)
print("| Speed = " .. bulbasaurSpeedIV )
print("| EVS ")
print("| Atk = " .. bulbasaurAtkEV .. "  SpAtk = " .. bulbasaurSpAtkEV)
print("| Health = " .. bulbasaurHealthEV .. "  Defense = " .. bulbasaurDefenseEV)
print("| Speed = " .. bulbasaurSpeedEV )
print("| ")
print("| ")
print("=============================================")


