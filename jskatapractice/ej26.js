/* Usa un bucle para recorrer el array de productos (products) y añade al array goodProducts los que tengan más de 20 ventas (sellCount) 
y al array badProducts los que tengan menos. */
const goodProducts = [];
const badProducts = [];
const products = [
  { name: "Funko Dr. Strange", sellCount: 10 },
  { name: "Mochila de protones: Ghostbusters", sellCount: 302 },
  { name: "Sable laser FX", sellCount: 23 },
  { name: "Varita de Voldemort", sellCount: 6 },
];
for(p of products){
    if (p.sellCount > 20){
        goodProducts.push(p)
    }else{ //como no especifica si los de 20 entran en good product los dejo como bad, si se diera el caso que no son ni malos ni buenos y no hay que añadirlos se pondria otra condicion aqui != 20
        badProducts.push(p)
    }
}
console.log(goodProducts);
console.log(badProducts);