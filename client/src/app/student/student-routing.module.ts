import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { StudentListComponent } from './student-list/student-list.component';

const routes: Routes = [
    {
        path: '',
        data: {
            title: 'Students'
        },
        children: [
            {
                path: 'list',
                component: StudentListComponent,
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
export class StudentRoutingModule { }
