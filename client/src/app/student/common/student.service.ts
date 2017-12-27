import { Injectable } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import 'rxjs/add/operator/map';
// tslint:disable-next-line:import-blacklist
import { Observable } from 'rxjs/Rx';
import { environment } from '../../../environments/environment';
import { Student } from './student';

@Injectable()
export class StudentService {
  baseUrl: string;
  constructor(
      private http: Http
  ) {
      this.baseUrl = environment.apiHost;
   }

  getAllStudents(): Observable<Student[]> {
      return this.http.get(this.baseUrl + 'students')
                      .map(response => response.json());
  }
}
