import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { LibreriaComponent } from './views/libreria/libreria.component';
import { LoginComponent } from './views/login/login.component';

const routes: Routes = [
  { path: "login", component: LoginComponent },
  { path: "libreria", component: LibreriaComponent },

  { path: "", redirectTo: "/login" , pathMatch: "full" }
];

@NgModule({
  exports: [RouterModule],
  imports: [RouterModule.forRoot(routes)]
})
export class AppRoutingModule { }
