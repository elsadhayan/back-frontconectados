import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EstadoCuatri1Component } from './estado-cuatri1.component';

describe('EstadoCuatri1Component', () => {
  let component: EstadoCuatri1Component;
  let fixture: ComponentFixture<EstadoCuatri1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [EstadoCuatri1Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(EstadoCuatri1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
