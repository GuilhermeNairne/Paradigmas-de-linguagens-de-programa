1. Expresse através de fatos e regras Prolog as informações contidas na seguinte frase:

pessoa(joao).
peixe(pedro).
minhoca(maria).
gostaDe(passaro, minhoca).
gostaDe(gato, peixe).
gostaDe(gato, passaro).
gostaDe(amigo, amigo).
amigo(gato).
 
come(X, Y) :- gostaDe(X, Y), not(pessoa(Y)).
nomeGato(chuck_norris).

 pessoa(joao).
 peixe(pedro).
 minhoca(maria).
 gostaDe(passaro, minhoca).
 gostaDe(gato, peixe).
 gostaDe(gato, passaro).
 gostaDe(amigo, amigo).
 amigo(gato).
 come(gato, X), not(pessoa(X)).
 nomeGato(chuck_norris).
