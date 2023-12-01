3.Considere a seguinte base de fatos prolog:

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).

Escreva as seguintes regras Prolog

 a) Quem são os alunos do professor X?
aluno_do_professor(Aluno, Professor) :- aluno(Aluno, Disciplina), professor(Professor, Disciplina).

 b) Quem são as pessoas associadas a uma universidade X? (alunos e professores)
associado_universidade(Pessoa, Universidade) :- frequenta(Pessoa, Universidade).
associado_universidade(Pessoa, Universidade) :- funcionario(Pessoa, Universidade).