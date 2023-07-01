function calcular(){
    let valor = document.getElementById('valor').value;
    let moeda = document.getElementById('moeda');
    let res = document.getElementById('res');

    let dolar = 5.25;
    
   
    if(valor == 0 || moeda.value == [0] ){
        res.innerHTML = 'Impossivel Contar! Preencha todos os dados';

    }else if(moeda.value ==  [1]){


        valorEmDolar = Number(valor / dolar);
        res.innerHTML = `Valor em Dólar: R$${valorEmDolar.toFixed(2)}`

    }else{
    
        let valorEmReal = Number(valor * dolar);
        res.innerHTML = `Valor em Real: US$${valorEmReal.toFixed(2)}`
    }

}