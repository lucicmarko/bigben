import { Component, OnInit } from '@angular/core';
import { StudentService } from '../common/student.service';
import { Student } from '../common/student';

@Component({
  selector: 'app-student-list',
  templateUrl: './student-list.component.html',
  styleUrls: ['./student-list.component.scss']
})
export class StudentListComponent implements OnInit {
  student: Student;
  students: Student[];

  constructor(
    public studentService: StudentService
  ) { }

  ngOnInit() {
    this.getStudent();
  }

  getStudent() {
    this.studentService.getAllStudents().subscribe((res) => {
        this.students = res;
      });
  }
}
