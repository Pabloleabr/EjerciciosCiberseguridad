const avengers = ['Hulk', 'Thor', 'IronMan', 'Captain A.', 'Spiderman', 'Captain M.'];

/* Buscar la palabra más larga Completa la función que tomando un array de strings como argumento devuelva el más largo,
 en caso de que dos strings tenga la misma longitud deberá devolver el primero.

Puedes usar este array para probar tu función: */
function findLongestWord(param) {
    let longest = ""
    for(x of param){
        if (longest.length < x.length){
            longest = x
        }
    }
    return longest
}
console.log(findLongestWord(avengers));