//Vetor

let vetor = [];

// Cadastrar
function cadastrar() {
    
    var nome = document.getElementById('nome');
    var idade = document.getElementById('idade');

    // alert( `Meu nome é ${nome.value} e tenho ${idade.value} anos`)
   
    //Criar JSON (objeto)
    var pessoa = {
        'nome': nome.value,
        'idade': parseInt(idade.value)
    }

    // Cadastrar ob JSON no vetor

    vetor.push(pessoa);

    console.log(vetor);

    // Limpar os inputs
    nome.value = "";
    idade.value = "";

    // Adicionar o cursor no campo nome
    nome.focus();

    //Atualizar TABELA
    listar();


}

    // Listar pessoas
    function listar() {

        //obter o tbody
        var tabela = document.getElementById('tabela');

        //Limpar todas a linhas e colunas
        tabela.innerHTML = "";

        // Laço de repetição
        for(let i = 0; i < vetor.length; i++ ){

            // Criar um linha de tabela
            var linha = tabela.insertRow(-1);

            // ColunasinsertCell
            var colunaNome = linha.insertCell(0);
            var colunaIdade = linha.insertCell(1);

            // Informaçoes das colunas
            colunaNome.innerHTML = vetor[i].nome;
            colunaIdade.innerHTML = vetor[i].idade;

            
        }
    }