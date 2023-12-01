2.Expresse através de fatos e regras Prolog as informações contidas na seguinte frase:

bonita(cassia).
rico(marcos).
bonito(marcos).
rica(ana).
forte(ana).
forte(fabiano).
bonito(fabiano).
amavel(silvio).
forte(silvio).

gosta(homem, mulher) :- bonita(mulher), homem(mulher).


feliz(X) :- homem(X), gosta(X, Y), mulher(Y), gosta(Y, X).

rico_feliz(X) :- rico(X), feliz(X).

gosta_de(homem, mulher) :- gosta(mulher, homem).

feliz(X) :- gosta(X, Y), gosta(Y, X), homem(Y), mulher(X).

gosta_de(cassia, homem) :- homem(X), gosta(cassia, X), (rico(X); amavel(X); bonito(X)), forte(X).

gosta(ana, homem) :- homem(X), gosta(ana, X).
