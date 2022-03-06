import { Component,OnInit } from '@angular/core';
import { Usuario } from './shared/clases/usuario';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent implements OnInit{
  public usuarios: Usuario[];

  constructor() {
    this.usuarios = [
      {
        nombre: 'admin',
        contrasegna: 'admin'
      },
      {
        nombre: 'user',
        contrasegna: 'user'
      }
    ];

  }
  ngOnInit(): void {
    localStorage.setItem('usuarios', JSON.stringify(this.usuarios));
  }

}
