# AnimeLife

Bem-Vindos ao AnimeLife, um aplicativo desenvolvido em Flutter para te recomendar os melhores animes.

## O que eu posso acessar no APP?

- Página principal: veja os animes da temporada atual e os mais populares pelo MyAnimeList;
- Calendário: assim é possível acompanhar os animes em lançamento e qual dia da semana tem episódios novos;
- Recomendações: veja quais outros animes são parecidos com seu favorito;
- Página do Anime: consulte mais informações do seu anime favorito;
- Devs: Conheça um pouco sobre cada um de nós.

## Como a aplicação foi feita?

Com auxílio da API Jikan, é possível obter informações necessárias sobre os animes para a criação do projeto. A aplicação conta com diversas telas que podem ser vistas no PDF disponibilizado (telas-certo.pdf), o usuário disponibiliza seu usuário na plataforma MyAnimeList, com isso é possível conseguir a imagem de perfil e usuário para exibição na página inicial. Na página incial o usuário consegue ter acesso a informações como animes da temporada atual e populares, com a guia de navegação na parte inferior ainda é possível acessar o calendário, que indica os animes que ewstão em lançamento e o dia da semana em que cada um é lançado, essas informações são todas obtidas na API e permanecem em atualização. Consultando a guia recomendações é possível ver animes nos quais se assemelham com o buscado, onde a partir do ID do anime são retornadas recomendações feitas pela comunidade através da plataforma MyAnimeList. Clicando na imagem do anime em qualquer uma das telas é pode-se obeter informações adicionais sobre o anime, tais como: nome, uma foto principal, e um ID para a consulta nas Recomendações.Na última aba tem-se um espaço para lembrar os desenvolvedores do aplicativo, com seus "nicknames" e 3 animes nos quais eles recomendam.

## O que foi utilizado?

- Plataforma MyAnimeList: para acesso inicial do usuário e recomendações(https://myanimelist.net/);
- API Jikan: onde é possível resgatar as infromações dos animes (https://jikan.docs.apiary.io/#);
- Plataforma Marvel: criação do Wireframe para auxílio na elaboração das telas do projeto (https://marvelapp.com/);
- Documentação Flutter: auxílio na criação do projeto(https://flutter.dev/docs);
- Dio: cliente HTTP para Dart(https://pub.dev/packages/dio).

# Os Devs:
- Raphael de Jesus 16.00378-0
- Júlia Catarina 16.00645-3
- Raphael Hungria 17.04015-9
- Yohan Lafaeff 17.04278-0
