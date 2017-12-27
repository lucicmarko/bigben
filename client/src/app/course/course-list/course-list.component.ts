import { Component, OnInit } from '@angular/core';
import { CourseService } from '../common/course.service.';
import { Course } from '../common/course';

@Component({
  selector: 'app-course-list',
  templateUrl: './course-list.component.html',
  styleUrls: ['./course-list.component.scss']
})
export class CourseListComponent implements OnInit {
  course: Course;
  courses: Course[];

  constructor(
    private courseService: CourseService
  ) { }

  ngOnInit() {
    this.getCourses();
  }

  getCourses() {
    this.courseService.getAllCourses().subscribe(res => this.courses = res);
  }
}
