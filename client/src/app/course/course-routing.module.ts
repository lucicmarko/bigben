import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { CourseListComponent } from './course-list/course-list.component';


const routes: Routes = [
    {
        path: '',
        data: {
            title: 'Courses'
        },
        children: [
            {
                path: 'list',
                component: CourseListComponent,
                data: {
                    title: 'List',
                }
            },
            {
                path: '',
                pathMatch: 'full',
                redirectTo: 'list'
            }
        ]
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class CourseRoutingModule { }
