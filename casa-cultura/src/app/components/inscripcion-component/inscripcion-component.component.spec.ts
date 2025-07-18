import { ComponentFixture, TestBed } from '@angular/core/testing';

import { InscripcionComponentComponent } from './inscripcion-component.component';

describe('InscripcionComponentComponent', () => {
  let component: InscripcionComponentComponent;
  let fixture: ComponentFixture<InscripcionComponentComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [InscripcionComponentComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(InscripcionComponentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
