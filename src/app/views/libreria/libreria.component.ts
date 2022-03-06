import { Component, OnInit } from '@angular/core';
import { Libros } from 'src/app/shared/clases/libros';

@Component({
  selector: 'app-libreria',
  templateUrl: './libreria.component.html',
  styleUrls: ['./libreria.component.css']
})
export class LibreriaComponent implements OnInit {
  public libros: Libros[];
  constructor() {
    this.libros = [
      {
        titulo: "Subidón",
        autor: "Joaquín Reyes",
        categoria: "Comedia"
      },
      {
        titulo: "Vive como un mendigo, baila como un rey",
        autor: "Ignatius Farray",
        categoria: "Comedia"
      },
      {
        titulo: "Besos prohibidos",
        autor: "Noelia Amarillo",
        categoria: "Comedia"
      },
      {
        titulo: "Reír es la única salida: El mejor libro de humor de Buenafuente 2020'",
        autor: "Andreu Buenafuente",
        categoria: "Comedia"
      },
      {
        titulo: "¡A la mierda el príncipe azul! Yo quiero un lobo que me coma mejor",
        autor: "Anabel Garcia",
        categoria: "Comedia"
      },
      {
        titulo: "Guía del club de lectura para matar vampiros",
        autor: "Grady Hendrix",
        categoria: "Terror"
      },
      {
        titulo: "Los sonámbulos",
        autor: "Chuck Wendig",
        categoria: "Terror"
      },
      {
        titulo: "The Book of Accidents",
        autor: "Chuck Wendig",
        categoria: "Terror"
      },
      {
        titulo: "Whisper Down the Lane",
        autor: "Clay McLeod Chapman",
        categoria: "Terror"
      },
      {
        titulo: "What Big Teeth",
        autor: "Rose Szabo",
        categoria: "Terror"
      },
      {
        titulo: "Antes de diciembre",
        autor: "Grady Hendrix",
        categoria: "Romance"
      },
      {
        titulo: "¿Un último baile, milady?",
        autor: "Megan Maxwell",
        categoria: "Romance"
      },
      {
        titulo: "Te espero en el fin del mundo",
        autor: "Andrea Longarela",
        categoria: "Romance"
      },
      {
        titulo: "Hay momentos que deberían ser eternos",
        autor: "Megan Maxwell",
        categoria: "Romance"
      },
      {
        titulo: "Solo Un Amor de Verano",
        autor: "Alexandra Roma",
        categoria: "Romance"
      },
      {
        titulo: "El instinto",
        autor: "Ashley Audrain",
        categoria: "Drama"
      },
      {
        titulo: "Ojalá ésta fuera nuestra historia de amor",
        autor: "Andrea LongarelaAndrea Longarela",
        categoria: "Drama"
      },
      {
        titulo: "El silencio de nuestras palabras: Premio DeA Planeta Italia 2019",
        autor: "Simona Sparaco",
        categoria: "Drama"
      },
      {
        titulo: "Drama",
        autor: "Raina Telgemeier",
        categoria: "Drama"
      },
      {
        titulo: "Dramas históricos",
        autor: "William Shakespeare",
        categoria: "Drama"
      }
    ];
  }

  ngOnInit(): void {
  }

}
