def da_boa_vindas
  puts "Bem vindo ao jogo de adivinhação !!"
  puts "Qual é o seu nome ?"
  nome = gets.strip
  puts "\n"
  puts "Començaremos o jogo para você, #{nome}"
end 

def sorteia_numero_secreto
  puts "\n"
  puts "Escolher um número secreto entre 0 e 200... "
  sorteado = 175
  sorteado 
end

def pede_um_numero(chutes, tentativa,limite_de_tentativas)
  puts "\n"
  puts "A tentativa são de #{tentativa} de #{limite_de_tentativas}"
  puts "Chute até agora #{chutes}"
  puts "entre com o número "
  chute = gets.strip
  puts " Sera que  escolhido no chute #{chute}" 
  chute.to_i
end

def verifica_se_acertou(chute, numero_secreto)
  acertou = chute == numero_secreto 

  if acertou  
   puts "Você acertou"
  true

    else
      maior = numero_secreto > chute
    if maior 
     puts"Errou!!O número secreto é maior"
    else 
     puts "Errou!! O número secreto é menor"
    end 
    false 
  end 
end



da_boa_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []
total_de_chutes = 0

for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero chutes, tentativa, limite_de_tentativas
  chutes << chute

  if verifica_se_acertou chute, numero_secreto
    break   
  end 
end   
  
