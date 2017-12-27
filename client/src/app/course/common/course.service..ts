import { Injectable } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import 'rxjs/add/operator/map';
// tslint:disable-next-line:import-blacklist
import { Observable } from 'rxjs/Rx';
import { environment } from '../../../environments/environment';
import { Course } from './course';

@Injectable()
export class CourseService {

  baseUrl: string;
  constructor(
      private http: Http
  ) {
      this.baseUrl = environment.apiHost;
   }

  getAllCourses(): Observable<Course[]> {
      return this.http.get(this.baseUrl + 'courses')
                      .map(response => response.json());
  }
}
