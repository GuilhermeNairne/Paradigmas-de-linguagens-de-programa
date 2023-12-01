5.Crie uma tabela de conhecimento em Prolog declarando os fatos representados na seguinte tabela:

filme(amnesia, suspense, nolan, 2000, 113).
filme(babel, drama, inarritu, 2006, 142).
filme(capote, drama, miller, 2005, 98).
filme(casablanca, romance, curtiz, 1942, 102).
filme(matrix, ficcao, wachowsk, 1999, 136).
filme(rebecca, suspense, hitchcock, 1940, 130).
filme(shrek, aventura, adamson, 2001, 90).
filme(sinais, ficcao, shymalan, 2002, 106).
filme(spartacus, acao, kubrik, 1960, 184).
filme(superman, aventura, donner, 1978, 143).
filme(titanic, romance, cameron, 1997, 194).
filme(tubarao, suspense, spielberg, 1975, 124).
filme(volver, drama, almodovar, 2006, 121).

5.1.Escreva regras genéricas em Prolog que possam responder as seguintes perguntas:

 a) Quem dirigiu o filme Titanic?
diretor_do_filme(Filme, Diretor) :- filme(Filme, _, Diretor, _, _).

b) Quais são os filmes de suspense?
filmes_de_suspense(Filme) :- filme(Filme, suspense, _, _, _).

c) Quais os filmes dirigidos por Donner?
filmes_por_diretor(Diretor, Filme) :- filme(Filme, _, Diretor, _, _).

d) Em que ano foi lançado o filme Sinais?
ano_lancamento(Filme, Ano) :- filme(Filme, _, _, Ano, _).

 e) Quais os filmes com duração inferior a 100min?
filmes_duracao_inferior(Filme) :- filme(Filme, _, _, _, Duracao), Duracao < 100.

f) Quais os filmes lançados entre 2000 e 2005?
filmes_lancados_entre(Filme) :- filme(Filme, _, _, Ano, _), Ano >= 2000, Ano =< 2005.


5.2.Usando as regras criadas anteriormente construa o predicado “clássico”, que retorna o título dos filmes lançados antes de 1980.

classico(Titulo) :- filme(Titulo, _, _, Ano, _), Ano < 1980.

5.3.Usando as regras criadas anteriormente construa o predicado “gênero”, que retorna o título dos filmes de um gênero específico.

genero(Titulo, Genero) :- filme(Titulo, Genero, _, _, _).


 5.4.Usando os predicados “clássico” e “gênero” faça uma consulta para recuperar os títulos de filmes clássicos de suspense.

consulta_filmes_classicos_de_suspense(Titulo) :- classico(Titulo), genero(Titulo, suspense).