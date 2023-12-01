4.Suponha os seguintes fatos:

nota(joao, 5.0).
nota(maria, 6.0).
nota(joana, 8.0).
nota(mariana, 9.0).
nota(cleuza, 8.5).
nota(jose, 6.5).
nota(jaoquim, 4.5).
nota(mara, 4.0).
nota(mary, 10.0).

situacao_aluno(Aluno, Situacao) :- nota(Aluno, Nota), avaliar_nota(Nota, Situacao).

avaliar_nota(Nota, 'Aprovado') :- Nota >= 7.0, Nota =< 10.0.
avaliar_nota(Nota, 'Recuperacao') :- Nota >= 5.0, Nota < 7.0.
avaliar_nota(Nota, 'Reprovado') :- Nota >= 0.0, Nota < 5.0.