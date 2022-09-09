# Desafio 01 - Interface Mobile com Flutter

Que tal iniciarmos no Flutter com um pequeno desafio de codificação de tela baseado em um Mockup? Será um exercício interessante para todos os interessados em aprender mais sobre este Framework da Google. Um dos pontos interessantes do Flutter é justamente a proposta de gerar telas a partir de códigos, ou seja, poderemos literalmente "codar" nossas telas a partir de Widgets. Vamos entender um pouco mais como funciona?

O que são Widgets?

- Os widgets são os componentes para a construção de telas. Para facilitar vamos utilizar o exemplo do brinquedo famosíssimo chamado Lego. Como montamos os desafios do Lego? Por meio de componentes com mapas de instruções, ou seja, nós temos a possibilidade de trabalhar com componentes que possuem finalidades distintas e unidas em conjunto "criarão" nosso brinquedo favorito da missão. Parace familiar?
- No Flutter também também temos os componentes que são chamados de Widgets. Possuimos Widgets que são componentes que podem ser utilizados para construção de novos widgets e possuimos uma lista de widgets prontos para serem usados em nossos projetos. Existe um [catálogo de Widgets](https://docs.flutter.dev/development/ui/widgets) que pode ser consultado. Existem muitos widgets que auxiliam - e muito - nosso dia-a-dia. Vale a consulta.

O Mockup!

- Durante o processo de codificação de um aplicativo com todas as suas partes envolvidas, naturalmente, passaremos pela etapa de codificação da tela. E quem é o responsável pelo desenho da tela? Podemos ter várias pessoas envolvidas que são profissionais que se dedicam à construção de telas que sejam bonitas, funcionais, elegantes e que antendam os anseios dos proprietários ou de quem deseja ter um aplicativo. A literatura é vasta neste sentido, porém, chamo atenção para um personagem específico que é o profissional de Design de Interface de Usuário (...Ou User Experience Design). Se esta é a tradução correta não sei, porém, dá uma boa ideia do que temos que é alguém ou um grupo de "alguéns" que pensa nas famosas telas! E nós, os programadores, o que fazemos? Nós temos a missão de darmos vida a este desenho. E aqui nós damos vida aos desenhos com Flutter! =)

A missão:

- Reproduzir mockup mais fiel possivel no flutter. O [MOCKUP](https://dribbble.com/shots/11779683-PET-ADOPTION-APP/attachments/3403695?mode=media) está disponível para consulta e nós vamos trabalhar com ele neste momento. Lembre-se de atentar para cada detalhe. Não se preocupe. Na medida do possível vamos lhe dando os conceitos envolvidos para termos uma atividade enriquecedora e com grande aprendizado.

Objetivos:

- Componentização de Widgets;
    - Dica 01: utilize o padrão "snake_case" para nomes de arquivos;
    - Dica 02: utilize o padrão "PascalCase" para nomes de Classes;
    - Dica 03: utilize o padrão "camelCase" para nomes de variáveis;

> Importante: Mantenha preferencialmente um widget por arquivo. Isto facilita a manutenção e legibilidade do seu código;

- Responsividade de Tela
Por definição é ˜Capacidade de responder rapida e adequadamente ao que lhe é perguntado, adaptando-se às circustâncias". Ou em outros termos "é a capacidade de o aplicativo não quebrar o layout em alguma tela diferente da tela originária. Como? A estratégia é trabalharmos com tamanhos proporcionais à tela original, ou seja, um widget possui um tamanho X em percentual relativo à uma tela Y.

Exemplo: 
- Um widget com largura de 100px em uma tela de largura de 377px é equivalente à 0.26px aproximados;
Sabe a matemática? Vamos faze ruma continha simples:

> coeficiente = tamanhoWidget / tamanho da tela;

Como Usamos?

No tamanho da tela inserimos a seguinte informação:

> MediaQuery.size.width * 0.26; //tamanho da tela multiplicado pelo coeficiente de tamanho do widget;

- Dicas:
    - Fluid Grids: Grids com tamanho relativo, baseando-se na altura e largura da tela/janela; 
    - Imagens fluidas: substitui tamanhos fixos por porcentagens; (max-width);
    - Media Query: Em vez de ter vários arquivos com projetos diferentes os elementos da tela são redimensionados em tempo de execução com a ajuda do Media Query;

Flex Box (Uma direção por vez);
Wrap (Quebra automática de linha);
Expansion, Shrink(encolhimento) são Flex; 

Exemplos de widgets Flex > Column, Row, Flexible, ConstrainedBox, Expanded;

- Sempre atentar para o comportamento do widget pai;
- Um Align é um wrapper, ou seja, ele altera o comportamento de um item filho;
- ConstrainedBox > Pode Limitar o tamanho máximo e/ou mínimo de um determinado widget; (exemplos telas de login)

Spacer(); // é um expanded + container;

- Manipulação de Listas;

- Trabalhar com Scrolls Aninhados;
Atente-se para o widget Sliver; Ele serve justamente para facilitar o trabalho da criação de telas com duas listas com comportamento de Scroll;

PS: O conteúdo (imagens e textos) não precisa ser idêntico ao mockup. Importante é a presença de todos os componentes;

- Últimas dicas:
    - Mantenha sempre uma classe que possa salvar os caminhos das imagens com Strings estáticas. Isto facilita a manutenção e a substituição caso seja necessário no futuro. Evita buscas trabalhosas de substituição de código em todo seu Aplicativo;
    - Isto pode ser feito também para as cores e informações de texto num primeiro momento. Porém, recomendo gradativamente estudar sobre o ThemeData do Flutter para facilitar a manutenção e iniciar o uso também dos Temas que nos ajudam muito;

## Material de apoio:

Componentização: https://www.youtube.com/watch?v=VXh2gmS0jWU&ab_channel=Flutterando

Responsividade: https://www.youtube.com/watch?v=UnAuTnR_ZM8&ab_channel=Flutterando

Slivers: https://www.youtube.com/watch?v=8C7cGNdJEkw&ab_channel=Flutterando

## Git
Preferencialmente mantenha o histórico de commits no Git;


