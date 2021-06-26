# AnimeLife

Bem-Vindos ao AnimeLife, um aplicativo desenvolvido em Flutter para te recomendar os melhores animes.

## O que eu Posso acessar no APP?

- Página principal: veja os animes da temporada atual e os mais populares pelo MyAnimeList;
- Calendário: Assim é possível acompanhar os animes em lançamento e qual dia da semana tem episódios novos;
- Página do Anime: consulte mais informações do seu anime favorito;
- Devs: Conheça um pouco sobre cada um de nós.

## Como Funciona a Recomendação?

### 1º MyAnimeList:

Primeiramente você precisa ter uma conta na plataforma MyAnimeList, onde é possível adicionar todos os animes já assistidos, que pretende assistir, acompanhar os lançamentos e etc, crie sua lista e dê nota aos animes (nosso app gera uma recomendação baseado nas notas dadas por você.

### 2º Entre com seu Nick no App

Não se preocupe! Você não precisa por sua senha, precisamos apenas de seu nick para conseguir acessar sua lista de animes, não se esqueça de deixa-la pública.

### 3º Procure seu anime

Procure um anime que você queira gerar uma recomendação e clique em RECOMENDAR.

### 4º Aproveite

Assista o anime se for de seu interesse, caso contrário você pode gerar recomendações para outros animes.

## Como a aplicação foi feita?

Com auxílio da API Jikan, é possível obter informações necessárias sobre os animes para a criação do projeto. A aplicação conta com X telas que podem ser vistas no PDF disponibilizado, o usuário disponibiliza seu usuário na plataforma MyAnimeList onde é realizado uma busca onde é retornado a lista de animes, onde é possível visualizar os animes já asssitidos, os que o usuário ainda está acompanhando, desistencias e animes que planeja assistir, assim como as notas de cada um deles, que podem ser valores inteiros de 0 a 10 ou nulo caso não seja atribuída nenhuma nota.
Com essas informações um microsserviço gera um modelo de análise sobre as preferencias do usuário, esse modelo é utilizado para gerar uma recomendação, o usuário pode navegar pela plataforma e procurar um anime de seu interesse, é possível consultar nome, quantidade de episódios, data de início, uma foro de apresentação e a nota geral do MyAnimeList, que é atribuida pela média das notas dadas por todos os usuários que já assistiram (não considerando os nulos), assim o usuário pode gerar uma recomendação e o microsserviço irá dizer uma previsão de nota baseado no modelo previamente criado.

## O que foi utilizado?

- Plataforma MyAnimeList: resgatar os dados do usuário para a criação do modelo (https://myanimelist.net/);
- API Jikan: onde é possível resgatar as infromações dos animes (https://jikan.docs.apiary.io/#);
- Plataforma Marvel: criação do Wireframe para auxílio na elaboração das telas do projeto (https://marvelapp.com/);
- Documentação Flutter: auxílio na criação do projeto(https://flutter.dev/docs);
- Dio: cliente HTTP para Dart(https://pub.dev/packages/dio).

