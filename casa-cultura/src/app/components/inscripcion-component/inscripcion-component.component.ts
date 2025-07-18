import { Component, input } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { MatButtonModule } from '@angular/material/button';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';

@Component({
  standalone: true,
  selector: 'app-inscripcion-component',
  imports: [
    CommonModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatSelectModule,
    MatButtonModule,
    MatDatepickerModule,
    MatNativeDateModule
  ],
  templateUrl: './inscripcion-component.component.html',
  styleUrl: './inscripcion-component.component.css'
})
export class InscripcionComponentComponent {
inscripcionForm: FormGroup;

  edades: number[] = Array.from({ length: 100 }, (_, i) => i + 1); // 1 a 100
   tiposSangre: string[]=['A+','A-','B+','B-','AB+', 'AB-', 'O+', 'O-'];
   alergias:string[]=['Si','No']
   tratamientos:string[]=['Si','No']
   enfermedades:string[]=['Si','No']
   estudios:string[]=['Si','No']
   talleres:string[]=['Taller de guitarra','taller de musica y solfeo','taller de dibujo infantil','Taller de fotografia','Taller de danza folclorica','Taller de ballet clasico','Taller decoracion en ceramica','Taller de marimba','Taller dibujo y pintura']
   escuelas:string[]=['Primaria Vicente Guerrero','Primaria Leonceo Gonzales','Primaria La Luz', 'Primaria Sor Juana', 'Secundaria Tecnica 25','Cecyte plantel 25','Universidad UTVCO']
   estados:string[]=['Activo','No activo']

  constructor(private fb: FormBuilder) {
    this.inscripcionForm = this.fb.group({
      // Datos personales
      apellidoPaterno: [''],
      apellidoMaterno: [''],
      nombres: [''],
      fechaNacimiento: [''],
      edad: [''],
      sexo: [''],
      telefono: [''],
      telefonoCasa: [''],

      // Datos médicos
      tipoSangre:[],
      alergias: [''],
      tratamientos:[''],
      respuesta:[],
      emergencia:[],

      // Datos académicos
      escuela: [''],
      talleres: [''],
      estudio:[''],
     estado:[''],

      // Tutor
      tutor: [''],
      domicilio: ['']
    });
  }

  enviarFormulario() {
    if (this.inscripcionForm.valid) {
      console.log('Formulario enviado:', this.inscripcionForm.value);
    } else {
      console.log('Formulario incompleto');
    }
  }
}
