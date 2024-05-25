/* Usa un bucle para crear 3 arrays de peliculas filtrados por categorias. Pelicula pequeña, menos de 100 minutos, pelicula mediana, mas de 100 minutos y 
menos de 200 y pelicula grande, mas de 200 minutos. Imprime cada array en por consola. */
const movies = [
    { name: "Titan A.E.", durationInMinutes: 130 },
    { name: "Nightmare before Christmas", durationInMinutes: 225 },
    { name: "Inception", durationInMinutes: 165 },
    { name: "The Lord of the Rings", durationInMinutes: 967 },
    { name: "Star Wars: A New Hope", durationInMinutes: 214 },
    { name: "Terminator", durationInMinutes: 140 },
  ];

let sMovies = []
let mMovies = []
let lMovies = []

// ya que no se especifica en el enunciado donde entran las de 100 y 200 exacto, estoy haciendo que se incluyan en la categoria mas grande de las dos entre las que estan.
for (movie of movies){
    if (movie["durationInMinutes"]<100){
        sMovies.push(movie)
    }else if(movie["durationInMinutes"]<200){
        mMovies.push(movie)
    }else{
        lMovies.push(movie)
    }
}
console.log(sMovies);
console.log(mMovies);
console.log(lMovies);