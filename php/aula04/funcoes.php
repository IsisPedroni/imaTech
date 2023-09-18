<?php

function calculaPorcentagem(float $valor, float $porcetagem): float {
    $total = $valor * ($porcetagem / 100);
    return $total;
}

$numero = 100;
$porcentagem1 = calculaPorcentagem($numero, 20);
echo $porcentagem1;

echo '<hr>';

$valor2 = 130_080;
$porcentagem2 = $valor2 +  calculaPorcentagem($valor2, 5.5);
echo $porcentagem2;