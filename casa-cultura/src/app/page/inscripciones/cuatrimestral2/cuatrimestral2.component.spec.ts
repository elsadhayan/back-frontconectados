import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Cuatrimestral2Component } from './cuatrimestral2.component';

describe('Cuatrimestral2Component', () => {
  let component: Cuatrimestral2Component;
  let fixture: ComponentFixture<Cuatrimestral2Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Cuatrimestral2Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Cuatrimestral2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
