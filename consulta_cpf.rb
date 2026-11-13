require 'cpf_cnpj'

# Método responsável por verificar a validade do CPF utilizando a gem 'cpf_cnpj'
def validar_cpf(numero_cpf)
  # O método CPF.valid? verifica os dígitos verificadores e o formato do CPF
  if CPF.valid?(numero_cpf)
    cpf_formatado = CPF.new(numero_cpf).formatted
    puts "\n=============================================="
    puts "✅ O CPF #{cpf_formatado} é VERDADEIRO (VÁLIDO)!"
    puts "=============================================="
  else
    puts "\n=============================================="
    puts "❌ O número digitado (#{numero_cpf}) é FALSO (INVÁLIDO)!"
    puts "=============================================="
  end
end

# Loop interativo para permitir múltiplas consultas
loop do
  puts "\n--- CONSULTA DE CPF ---"
  print "Digite o número do CPF (ou 'sair' para encerrar): "
  entrada = gets&.chomp&.strip

  break if entrada.nil? || entrada.downcase == 'sair'

  if entrada.empty?
    puts "⚠️ Nenhum valor foi digitado. Por favor, tente novamente."
    next
  end

  validar_cpf(entrada)
end

puts "\nPrograma encerrado. Até mais!"
