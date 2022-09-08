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
    - Dica 01

- Responsividade de Tela
- Manipulação de Listas;
- Trabalhar com Scrolls Aninhados;

PS: O conteúdo (imagens e textos) não precisa ser idêntico ao mockup. Importante é a presença de todos os componentes;

## Material de apoio:

componentização: https://www.youtube.com/watch?v=VXh2gmS0jWU&ab_channel=Flutterando

responsividade: https://www.youtube.com/watch?v=UnAuTnR_ZM8&ab_channel=Flutterando

Slivers: https://www.youtube.com/watch?v=8C7cGNdJEkw&ab_channel=Flutterando

## Git

Preferencialmente manter um histórico de commits no Git;

## Componentização (Dicas...)
- Um arquivo por WIDGET;

## Tela 01
## Descritivos das Atividades
### AppBar
Na leitura do Mockup encontramos os seguintes itens:
1. Uma linha que recebe todos os itens;

2. Dentro da linha encontramos 3 itens:
    - Icone;
    - Coluna com 2 textos;
    - Avatar;

3. Para personalizarmos precisamos entender primeiro qual é o tipo de Widget que podemos utilizar. Para personalizarmos a App Bar necessitamos implemnetar o widget chamado "PreferredSizeWidget". Nele encontramos o tamanho que deverá ser implementado seguido da extensão de um widget sem comportamento, ou seja, um stateless widget. 

4. Durante personalização necessitamos também de mais duas informações, a saber:
    - A família da fonte que vamos utilizar na personalização;
    - Uma imagem para o avatar; //lembrar de criar a pasta assets;

### Slivers
A sugestão é utilizarmos o Widget Slivers que proporciona o uso de sliders aninhados com funções e direções diferentes. 
Na leitura do Mockup encontramos os seguintes itens:
    - Sliver horizontal;
    - Sliver vertical;

2. Sliver vertical:

Cada um dos itens da lista pode ser construídos com os seguintes Widgets:
    - Container com todos os itens;
    - Row com todos os itens;
    - Para separar e garantir a posição da Imagem + Descrições estes itens são envolvidos em uma nova Row; Lembre-se que na linha da localização temos uma nova Row com um icone + cidade;
    - Para exibir a imagem usaremos um widget chamado ClipRep;
    - Para alinhar o Coração utilizaremos o Widget Align que possui várias posições disponíveis;

## Tela 02
### AppBar
Na leitura do Mockup encontramos os seguintes itens:
    - Container;
    - Linha;
    - Dois widgets:
        - Icone com função de retorno;
        - Icone com função de Preferido;

### Descrição do Cachorro
Na leitura encontramos os seguintes itens:
    - Container;
    - Linha com espaçamento entre itens;
    - Coluna esquerda (Nome, raça, localização (é uma linha com ícone + cidade));
    - Coluna direita com ícone e idade;


### Fotos do Animal
Na leitura encontramos os seguintes itens:
    - Linha;
    - Lista de fotos (list view);
    - sobreposição entre figura e foto;

### Descrição do Animal
Na leitura encontramos os seguintes itens:
    - Container;
    - Texto 'sobre';
    - Texto 'Descrição';



## Responsividade
Capacidade de responder rapida e adequadamente ao que lhe é perguntado, adaptando-se às circustâncias;

- Fluid Grids: Grids com tamanho relativo, baseando-se na altura e largura da tela/janela;
- Imagens fluidas: substitui tamanhos fixos por porcentagens; (max-width);
- Media Query: Em vez de ter vários arquivos com projetos diferentes os elementos da tela são redimensionados em tempo de execução com a ajuda do Media Query;

Flex Box (Uma direção por vez);
Wrap (Quebra automática de linha);
Expansion, Shrink(encolhimento) são Flex; 

Exemplos de widgets Flex > Column, Row, Flexible, ConstrainedBox, Expanded;

> Sempre atentar para o comportamento do widget pai;
> um Align é um wrapper, ou seja, ele altera o comportamento de um item filho;

> MediaQuery.size.width * 0.75 = 75% da tela;

E o tamanho do widget em relação à tela?
Procura-se o coeficiente:
coeficienteTamanho = TamanhoWidget / TamanhoTela

size.width * coeficiente;

ConstrainedBox > Pode Limitar o tamanho máximo e/ou mínimo de um determinado widget; (exemplos telas de login)

Spacer();

## Nomes de arquivos
> página: "home_page.dart".
> widget: "app_bar_widget.dart" (snacke_case); //tem o PascalCase e tem o camelCase;