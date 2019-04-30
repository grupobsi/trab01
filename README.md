# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Matheus Garcias: matheus_garcias@hotmail.com<br>
Letícia Teixeira: leticia.teix.nas@gmail.com<br>
Júlia Miranda: jumrcampos@gmail.com<br>
Henrique Bastos: henrytehboss@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
>Este documento contém a especificação do projeto do banco de dados Lista de Compra Online
<br>e motivação da escolha realizada.<br>

> Este projeto visa auxiliar seu usuário a realizar uma das atividades básicas mais necessárias, porém para muitos, mais enfadonhas nos dias de hoje, fazer compras em um super mercado. Através de uma interface intuitiva e fácil de usar e de ferramentas que ajudam o usuário a identificar suas necessidades de compras, a intenção é criar um aplicativo que seja indispensável para o consumidor moderno, com a incrível tecnologia a disposição da maioria das pessoas atualmente, não tem porque continuarmos dependendo de abrir e fechar geladeiras e armários, antes de planejarmos, manualmente, cada compra. 
 

### 3.MINI-MUNDO Novo<br>

> Cada usuário possui uma lista de produtos de supermercado (alimentos, produtos de limpeza e de higiene pessoal), que pode conter vários produtos, e um estoque com os produtos já comprados e  as quantidades mínimas desejadas. O produto é o conjunto de sua marca e unidade de medida, sendo armazenado por um código único e seu nome. Os usuários são cadastrados pelo e-mail, nome, idade, endereço e senha, sendo que o e-mail é único (não existem 2 usuários com o mesmo e-mail) e será dado um código para cada um. 

>Também haverá o endereço, constituído por CEP, estado, cidade, bairro e rua, e supermercados, constituído por código, nome e endereço. Os usuários podem decidir por ter um supermercado de preferência para suas compras, mas estas podem ser feitas em qualquer um.

>Os produtos podem ser pertencentes a várias listas de diferentes usuários, mas cada usuário só pode ter uma lista. Haverá também duas listas com o tempo de consumo médio para cada produto, uma para o administrador e outra para o usuário cliente.Caso o produto tenha passado de seu tempo de consumo médio, ele é adicionado a uma lista de compras, sendo armazenados com seu código, nome e status (pendente ou comprado). Caso o produto seja comprado, ele é tirado da lista de compras e atualizado no estoque.

>A cada compra, também ;e calculada uma média de cada supermercado para mostrar a preferência dos usuários clientes para o administrador.


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
<a href="https://github.com/grupobsi/trab01/blob/master/arquivos/ComprasOnline.pdf">Rascunho das Interfaces</a>
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO
    
> O sistema fornecerá os 5 principais relatórios: 
>* Informações gerais dos usuários, com o e-mail, nome, data de nascimento, localização e senha;
>* Lista de produtos comumente comprados por um usuário, contendo o código do produto, o nome dele, o tipo de medida (quantidade, peso ou volume) e a quantidade mínima;
>* Lista de produtos na despensa do usuário, contendo o código do produto, o nome e a quantidade;
>* Lista de produtos comprados pelo usuário, contendo o código do produto, o nome, o tipo de medida, a quantidade comprada, preço e a data da compra; 
>* Estatísticas das compras do usuário, com o código do produto, a quantidade comprada em determinado período e a média do preço para uma unidade de medida do produto.

 
#### 4.2 TABELA DE DADOS DO SISTEMA:
<a href="https://github.com/grupobsi/trab01/blob/master/arquivos/ComprasOnline.xlsx">Tabela de dados</a>
<a href="https://github.com/grupobsi/trab01/blob/master/arquivos/ComprasOnlineNormalizada.xlsx">Tabela de dados normalizada</a>

### 5.MODELO CONCEITUAL<br>
        
![Alt text](https://github.com/grupobsi/trab01/blob/master/images/Modelo%20Conceitual%20Trab%20BD1.png "Modelo Conceitual")
       
#### 5.1 Validação do Modelo Conceitual
    [Lixeira Inteligente]: [Jackson William, Lavinia Corteletti, Thiago Moreira, Vinicius Freitas]
    [Tratamento Efetivo]: [Ana Carolina, Pedro Henrique, Emanuel Medeiros, Filipe Ribeiro]

#### 5.2 DECISÕES DE PROJETO
    [Endereço]: [Optamos por deixar o endereço como uma entidade separada para não sobrecarregar aquelas entidades que o possuíam e
    tornar mais fácil o nosso trabalho]
    
    [Produto Consumo Médio]: [Optamos por separar as tabelas do cliente e admistrador pois por mais que elas tivessem os mesmos
    atributos, suas finalidades são diferentes]

>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: []
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
    
[Descrição dos dados](arquivos/Descrição%20dos%20dados.pdf)

### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
[Estrutura DDL](sql/DDL.sql)
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico 
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script
        (Drop para exclusão de tabelas + create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.4 Principais fluxos de informação e principais tabelas do sistema
        a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
        b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
        c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


