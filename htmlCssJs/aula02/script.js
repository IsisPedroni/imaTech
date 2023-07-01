function calcular(){
    let valor = document.getElementById('valor').value;
    let moeda = document.getElementById('moeda');
    let res = document.getElementById('res');

    let dolar = 4.79;
    
   
    if(valor == 0 || moeda.value == [0] ){
        res.innerHTML = 'Impossivel Contar! Preencha todos os dados';

    }else if(moeda.value ==  [1]){


        valorEmDolar = Number(valor / dolar);
        res.innerHTML = `Valor em Dolar: US$${valorEmDolar.toFixed(2)}`

    }else{
    
        let valorEmReal = Number(valor * dolar);
        res.innerHTML = `Valor em Real: R$${valorEmReal.toFixed(2)}`
    }

}