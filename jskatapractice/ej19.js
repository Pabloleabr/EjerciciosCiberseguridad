const toys = [
    {id: 5, name: 'Buzz MyYear'}, 
    {id: 11, name: 'Action Woman'}, 
    {id: 23, name: 'Barbie Man'}, 
    {id: 40, name: 'El gato con Guantes'},
    {id: 40, name: 'El gato felix'}
    ]
/*Mixed For e includes: Usa un bucle for para recorrer todos los juguetes y elimina los que incluyan la palabra gato. Recuerda que puedes usar la función .
includes() para comprobarlo. Puedes usar este array:  */

for (let x = 0;x < toys.length; x++){
    if (toys[x]["name"].includes("gato")){
        toys.splice(x,1)
        x--
    }
}
console.log(toys);