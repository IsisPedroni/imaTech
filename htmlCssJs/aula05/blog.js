function listar() {

    fetch('https://jsonplaceholder.typicode.com/posts')
    .then(requisicao => requisicao.json())
    .then(postagens => {
        
        let tabela = document.getElementById("tabela");

        for(let indice = 0; indice < postagens.length; indice++){

            var linha = tabela.insertRow(-1);

            var colunaCodigo = linha.insertCell(0);
            var colunaTitulo = linha.insertCell(1);
            var colunaTexto = linha.insertCell(2);

            //Informar os valores de cada coluna

            colunaCodigo.innerHTML = postagens[indice].id;
            colunaTitulo.innerHTML = postagens[indice].title;
            colunaTexto.innerHTML = postagens[indice].body;

        }

    });

}


function cadastrar() {

    let titulo = document.getElementById('titulo').value;
    let texto = document.getElementById('texto').value;

    //criar obj
    let obj = {
        'title': titulo,
        'body': texto
    }

    //Requisição executar um POST
    fetch('https://jsonplaceholder.typicode.com/posts', {
        method: 'POST',
        headers: {'content-type':'application/json'
        },
        body:JSON.stringify(obj)
    })
    .then(retorno => retorno.json())
    .then(postagem => {

        let tabela = document.getElementById('tabela');

        var linha = tabela.insertRow(-1)

        var colunaCodigo = linha.insertCell(0);
        var colunaTitulo = linha.insertCell(1);
        var colunaTexto = linha.insertCell(2);


        colunaCodigo.innerHTML = postagem.id;
        colunaTitulo.innerHTML = postagem.title;
        colunaTexto.innerHTML = postagem.body;

    })
}