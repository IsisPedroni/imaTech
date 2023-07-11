function acao() {
   
    let cep = document.getElementById('cep').value;

    //Requicição
    // fetch('https://viacep.com.br/ws/'+cep+'/json/')

    //Requicição
    fetch(`https://viacep.com.br/ws/${cep}/json/`)

    .then(retorno => retorno.json())
    .then(dados => {
        document.getElementById('estado').innerHTML = 'Estado' + dados.uf;
        document.getElementById('cidade').innerHTML = dados.localidade;
        document.getElementById('bairro').innerHTML = dados.bairro;
        document.getElementById('logradouro').innerHTML = dados.logradouro;
    })
}