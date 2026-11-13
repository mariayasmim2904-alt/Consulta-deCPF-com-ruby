# Consulta e Validador de CPF em Ruby

Este projeto é um programa em linha de comando (CLI) desenvolvido em **Ruby** para validação de CPFs utilizando a gem [`cpf_cnpj`](https://github.com/fnando/cpf_cnpj).

---

## 📌 Requisitos

- **Ruby** instalado no sistema (versão 2.5 ou superior recomendada).
- Gem **`cpf_cnpj`**.

---

## 🚀 Instalação

1. Clone ou acesse a pasta do projeto:
   ```bash
   cd "Consulta deCPF com ruby"
   ```

2. Instale a biblioteca necessária:
   ```bash
   gem install cpf_cnpj
   ```

   *(Opcional) Caso utilize o Bundler:*
   ```bash
   bundle install
   ```

---

## ▶️ Como Executar

Execute o arquivo principal no terminal:

```bash
ruby consulta_cpf.rb
```

---

## 💻 Como Funciona o Código

1. **Biblioteca Utilizada**: A biblioteca `cpf_cnpj` fornece o módulo `CPF`.
2. **Método `CPF.valid?(numero)`**: Realiza o cálculo dos dois dígitos verificadores do CPF de acordo com o algoritmo oficial da Receita Federal do Brasil, verificando se a sequência informada constitui um CPF matematicamente verdadeiro.
3. **Formatação com `CPF.new(numero).formatted`**: Exibe o CPF de forma padronizada no padrão `XXX.XXX.XXX-XX`.
4. **Interface Amigável**: Possui um menu interativo que permite fazer várias consultas consecutivas ou digitar `sair` para encerrar.
