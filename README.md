# Desafio 01 - Interface Mobile

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

## Criação de Telas

- Reproduzir Telas de Mockup
    1. Reproduzir mockup mais fiel possivel no flutter

https://dribbble.com/shots/11779683-PET-ADOPTION-APP/attachments/3403695?mode=media

Objetivos:
- Componentização de Widgets;
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