import { Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { InfoEmpresaComponent } from './page/info-empresa/info-empresa.component';

import { CrearcuentaComponent } from './page/crearcuenta/crearcuenta.component';
import { InicioSesionComponent } from './page/inicio-sesion/inicio-sesion.component';
import { Cuatrimestral2Component } from './page/inscripciones/cuatrimestral2/cuatrimestral2.component';


export const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  {
    path:'nosotros', component:InfoEmpresaComponent
  },
  {
    path:'registro',component:CrearcuentaComponent
  },
  {
    path:'login',component:InicioSesionComponent
  },

  {
    path: 'talleres/guitarra', loadComponent: () =>import('./pages/talleres/guitarra/guitarra.component').then(m => m.GuitarraComponent)
  },
  {
  path: 'talleres/ballet-clasico',loadComponent: () =>import('./pages/talleres/ballet-clasico/ballet-clasico.component').then(m => m.BalletClasicoComponent)
  },
{path: 'talleres/decoracionceramica', loadComponent:() => import('./pages/talleres/ceramica-deco/ceramica-deco.component').then(m =>m.CeramicaDecoComponent)
  },
  {
  path:'talleres/musica-solfeo',loadComponent:() => import('./pages/talleres/musica-solfeo/musica-solfeo.component').then(m =>m.MusicaSolfeoComponent)
  },
  {
  path: 'talleres/danza-folclorica',loadComponent:() => import('./pages/talleres/danza-folclorika-mexicana/danza-folclorika-mexicana.component').then(m =>m.DanzaFolclorikaMexicanaComponent)
  },
  {
  path:'talleres/dibujo-infantil',loadComponent:()=>import('./pages/talleres/dibujo-infantil/dibujo-infantil.component').then(m =>m.DibujoInfantilComponent)
  },
  {
    path: 'talleres/Marimba', loadComponent:()=>import('./pages/talleres/marimba/marimba.component').then(m=>m.MarimbaComponent)

  },
  {
    path:'talleres/fotografia',loadComponent:()=>import('./pages/talleres/fotografia/fotografia.component').then(m =>m.FotografiaComponent)
  },
{
  path:'talleres/dibujo-pintura',loadComponent:()=>import('./pages/talleres/dibujo-pintura/dibujo-pintura.component').then(m =>m.DibujoPinturaComponent)

},

{
  path: 'inscripciones/cuatrimestral',
  loadComponent: () => import('./page/inscripciones/cuatrimestral/cuatrimestral.component').then(m => m.CuatrimestralComponent)
},
{ path: 'inscripciones/reinscripciones/cuatrimestral2', component:Cuatrimestral2Component },

{
  path:'inscripciones/cuatrimestral/estado-cuatri1',loadComponent:()=>import('./page/inscripciones/cuatrimestral/estado-cuatri1/estado-cuatri1.component').then(m=>m.EstadoCuatri1Component)

  },
  {
    path:'inscripciones/reinscripciones/cuatrimestral2/estado-reins',loadComponent:()=>import('./page/inscripciones/reinscripciones/cuatrimestral2/estado-reins/estado-reins.component').then(m=>m.EstadoReinsComponent),
  }



];
