# MindFuel App

## Introdução
Bem-vindo ao MindFuel, um aplicativo simples e inovador para melhorar o seu humor diário. Este projeto foi desenvolvido em Flutter e oferece uma experiência amigável para o usuário.

## Funcionalidades
O MindFuel permite que os usuários escolham seu humor diário e recebam um conselho correspondente. Principais funcionalidades incluem:
- Escolha de humor através de um dropdown personalizado.
- Recebimento de conselhos diários com base no humor selecionado.
- Interface intuitiva e fácil de usar.
  
## Linguagem de Programação / Plataforma de Desenvolvimento
O aplicativo foi desenvolvido em Flutter, uma estrutura de código prática e aberta para criar aplicativos nativos para iOS e Android a partir de uma única base de código.

## Gerenciamento de Memória
Para garantir um gerenciamento eficiente de memória, foram aplicadas as seguintes boas práticas:
- **Uso Moderado de Estados Globais**: Limitamos o uso de estados globais para evitar excesso de consumo de memória.
- **Utilização de Constantes**: Onde aplicável, utilizamos constantes para armazenar recursos estáticos, a fim de economizar recursos de memória.

## Diretórios mais importantes:
- **lib/**
  - **screens/**: Contém as telas principais do aplicativo.
  - **widgets/**: Contém widgets reutilizáveis.
  - **repository/**: Armazena dados de exemplo.
  - **main.dart**: Ponto de entrada do aplicativo.

## Execução da Solução

Para executar a solução localmente, siga estas etapas:

**Pré-requisitos**: Certifique-se de ter o Flutter e o Dart instalados em sua máquina.

1. **Acesse o terminal e navegue até a pasta onde deseja "baixar" esse projeto**
2. **Clone este Repositório**: `git clone https://github.com/gustavo-2002/mindfuel-app.git`
3. **Navegue até o diretório do projeto**: `cd mindfuel-app`
4. **Instale as Dependências**: `flutter pub get`
5. **Execute o Aplicativo**: `flutter run`

Isso iniciará o aplicativo no emulador (Caso tenha mais de um instalado ele solicitará que informe o emulador desejado) ou dispositivo conectado.

Antes de subir o projeto no git foi executado um `flutter clean` por isso o comando `flutter pub get` é necessário.

---
Obrigado pelo seu tempo!
