/* Ejercicio 14

Contador de repeticiones: Crea una función que nos devuelva el número de veces que se repite cada una de las palabras que lo conforma.
 Puedes usar este array para probar tu función */
 const counterWords = [
    'code',
    'repeat',
    'eat',
    'sleep',
    'code',
    'enjoy',
    'sleep',
    'code',
    'enjoy',
    'upgrade',
    'code'
  ];
  function repeatCounter(param) {
    const counter = {}
    for (word of param){
        if (word in counter){
            counter[word] += 1
        }else{
            counter[word] = 1
        }
    }
    return counter
  }
  console.log(repeatCounter(counterWords));