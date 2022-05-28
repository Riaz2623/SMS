<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WebController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\TeacherDasboardController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\StudentDasboardController;
use App\Http\Controllers\AdminStudentController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/////=========View======////
Route::get('/', [WebController::class,'index'])->name('home');
Route::get('/detail/{id}', [WebController::class,'detail'])->name('detail');
Route::get('/enroll-now/{id}', [WebController::class,'enroll'])->name('enroll-now');
Route::post('/new-Enroll/{id}', [WebController::class,'newEnroll'])->name('new-Enroll');



///-------Login View------//
Route::get('/user-login', [AuthController::class,'login'])->name('user-login');
Route::post('/new-login', [AuthController::class,'newLogin'])->name('new-login');
Route::post('/user-logout', [AuthController::class,'logout'])->name('user-logout');
Route::post('/student-logout', [AuthController::class,'studentLogout'])->name('student-logout');
//-----End Login-----///

Route::get('/user-register', [AuthController::class,'register'])->name('user-register');

Route::get('/teacher-dashboard',[TeacherDasboardController::class,'index']) ->name('teacher-dashboard');
Route::get('/student-dashboard',[StudentDasboardController::class,'index']) ->name('student-dashboard');
Route::get('/student-profile',[StudentDasboardController::class,'profile']) ->name('student-profile');
Route::post('/update-student-profile/{id}',[StudentDasboardController::class,'updateProfile']) ->name('update-student-profile');
Route::get('/change-password',[StudentDasboardController::class,'changePassword']) ->name('change-password');
Route::post('/update-student-password/{id}',[StudentDasboardController::class,'updatePassword']) ->name('update-student-password');

Route::get('/add-subject',[SubjectController::class,'index']) ->name('add-subject');
Route::post('/new-subject',[SubjectController::class,'create']) ->name('new-subject');
Route::get('/manage-subject',[SubjectController::class,'manage']) ->name('manage-subject');
Route::get('/approved-course',[SubjectController::class,'approved']) ->name('approved-course');
Route::get('/enrolled-student/{id}',[SubjectController::class,'enrolledStudent']) ->name('enrolled-student');



Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard',[DashboardController::class,'index'] )->name('dashboard');

Route::middleware(['auth:sanctum', 'verified','superAdmin'])->get('/add-user',[UserController::class,'index'] )->name('add-user');
Route::middleware(['auth:sanctum', 'verified','superAdmin'])->post('/new-user',[UserController::class,'create'] )->name('new-user');
Route::middleware(['auth:sanctum', 'verified','superAdmin'])->get('/add-manage',[UserController::class,'manage'] )->name('add-manage');
Route::middleware(['auth:sanctum', 'verified','superAdmin'])->get('/edit-user/{id}',[UserController::class,'edit'] )->name('edit-user');
Route::middleware(['auth:sanctum', 'verified','superAdmin'])->post('/update-user/{id}',[UserController::class,'update'] )->name('update-user');
Route::middleware(['auth:sanctum', 'verified','superAdmin'])->get('/delete-user/{id}',[UserController::class,'delete'] )->name('delete-user');

Route::middleware(['auth:sanctum', 'verified'])->get('/add-teacher', [TeacherController::class,'index'])->name('add-teacher');
Route::middleware(['auth:sanctum', 'verified'])->post('/new-teacher', [TeacherController::class,'create'])->name('new-teacher');

Route::middleware(['auth:sanctum', 'verified'])->get('/manage-teacher', [TeacherController::class,'manage'])->name('manage-teacher');
Route::middleware(['auth:sanctum', 'verified'])->get('/edit-teacher/{id}', [TeacherController::class,'edit'])->name('edit-teacher');
Route::middleware(['auth:sanctum', 'verified'])->post('/update-teacher/{id}', [TeacherController::class,'update'])->name('update-teacher');
Route::middleware(['auth:sanctum', 'verified'])->get('/delete-teacher/{id}', [TeacherController::class,'delete'])->name('delete-teacher');


Route::middleware(['auth:sanctum', 'verified'])->get('/manage-course', [AdminController::class,'manage'])->name('manage-course');
Route::middleware(['auth:sanctum', 'verified'])->get('/view-detail/{id}', [AdminController::class,'detail'])->name('view-detail');
Route::middleware(['auth:sanctum', 'verified'])->get('/update-status/{id}', [AdminController::class,'updateStatus'])->name('update-status');

Route::middleware(['auth:sanctum', 'verified'])->get('/manage-student', [AdminStudentController::class,'manageStudent'])->name('manage-student');
Route::middleware(['auth:sanctum', 'verified'])->get('/manage-student-course', [AdminStudentController::class,'manageStudentCourse'])->name('manage-student-course');
Route::middleware(['auth:sanctum', 'verified'])->get('/student-status/{id}', [AdminStudentController::class,'updateStatus'])->name('student-status');
Route::middleware(['auth:sanctum', 'verified'])->get('/update-enroll-status/{id}', [AdminStudentController::class,'updateEnrollStatus'])->name('update-enroll-status');
