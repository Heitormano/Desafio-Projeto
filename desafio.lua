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
============================================


]]

-- UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "BULBASAUR"
local description = "Um pokemon do tipo planta e venenoso."
local emoji = "🍀😷"
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
print("| Tipo: ".. emoji)
print("| ")
print("| Som: ".. sound)
print("| ")
print("| Horario favorito: ".. favoriteTime)
print("| ")
print("| Item segurado: ".. item)
print("| ")
print("| Atributos:")
print("|   Ataque:     " .. getProgressBar(attackAttribute))
print("|   SpAtaque:   " .. getProgressBar(specialAttackAttribute))
print("|   Defesa:     " .. getProgressBar(defenseAttribute))
print("|   Vida:       " .. getProgressBar(healthPointsAttribute))
print("|   Velocidade: " .. getProgressBar(speedAttribute))
print("| ")
print("=============================================")

