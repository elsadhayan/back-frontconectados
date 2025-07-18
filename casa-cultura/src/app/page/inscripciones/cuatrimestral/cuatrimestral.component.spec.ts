import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CuatrimestralComponent } from './cuatrimestral.component';

describe('CuatrimestralComponent', () => {
  let component: CuatrimestralComponent;
  let fixture: ComponentFixture<CuatrimestralComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CuatrimestralComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CuatrimestralComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
