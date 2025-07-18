import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EstadoReinsComponent } from './estado-reins.component';

describe('EstadoReinsComponent', () => {
  let component: EstadoReinsComponent;
  let fixture: ComponentFixture<EstadoReinsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [EstadoReinsComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EstadoReinsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
