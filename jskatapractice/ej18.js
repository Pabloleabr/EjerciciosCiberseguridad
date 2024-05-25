/* Probando For: Usa un bucle for para recorrer todos los destinos del array y elimina los elementos que tengan el id 11 y 40.
 Imprime en un console log el array. Puedes usar este array: */
const placesToTravel = [{id: 5, name: 'Japan'}, {id: 11, name: 'Venecia'}, {id: 23, name: 'Murcia'},
                        {id: 40, name: 'Santander'}, {id: 44, name: 'Filipinas'}, {id: 59, name: 'Madagascar'}];

for(let a = 0;a < placesToTravel.length; a++){
    if (placesToTravel[a]["id"] == 11 || placesToTravel[a]["id"] == 40){
        placesToTravel.splice(a,1)
        a--
    }
}
console.log(placesToTravel);