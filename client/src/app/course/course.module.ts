import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CourseListComponent } from './course-list/course-list.component';
import { CourseService } from './common/course.service.';
import { CourseRoutingModule } from './course-routing.module';

@NgModule({
  imports: [
    CommonModule,
    CourseRoutingModule
  ],
  declarations: [CourseListComponent],
  providers: [
  CourseService
  ]
})
export class CourseModule { }
