import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { LoginComponent } from './views/login/login.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { LibreriaComponent } from './views/libreria/libreria.component';
import { MenuComponent } from './menu/menu.component';
import { SalidaComponent } from './views/libreria/salida/salida.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    LibreriaComponent,
    MenuComponent,
    SalidaComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    AppRoutingModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
