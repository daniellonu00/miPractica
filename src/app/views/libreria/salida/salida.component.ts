import { Component, Input, OnInit } from '@angular/core';
import { Libros } from 'src/app/shared/clases/libros';

@Component({
  selector: 'app-salida',
  templateUrl: './salida.component.html',
  styleUrls: ['./salida.component.css']
})
export class SalidaComponent implements OnInit {
  @Input()
  public salida: Libros;

  constructor() {
    this.salida = {
      titulo: '',
      autor: '',
      categoria: ''
    }
  }

  ngOnInit(): void {
  }

}
