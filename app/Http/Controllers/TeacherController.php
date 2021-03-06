<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use function Symfony\Component\Routing\Loader\Configurator\Traits\format;

class TeacherController extends Controller
{

    private $code;
    private $id;
    private $name;
    private $year;
    private $teacher;
    private $teachers;
    private $updateString;

    public function index()
    {
        return view('admin.teacher.add');
    }
    public function create(Request $request)
    {
//    return $request->all();

        Teacher::newTeacher($request,$this->getTeacherCode($request));
        return redirect('/add-teacher')->with('message' , 'Teacher info create successfully');
    }
    public function getTeacherCode($request)
    {
        $this->teacher = Teacher::orderBy('id', 'desc')->first();
        if($this->teacher)
        {
            $this->id = $this->teacher->id +1;
        }
        else
        {
            $this->id = 1;
        }
        $this->updateString =preg_replace('/[^A-Za-z0-9]/',"",$request->name);
        $this->name =strtoupper(substr($this->updateString,0,3));
        $this->year =date('Y');
        $this->code =$this->name.$this->year.$this->id;
        return $this->code;
    }
    public function manage()
    {
        $this->teachers = Teacher::orderBy('id','desc')->get();


        return view('admin.teacher.manage',['teachers'=>$this->teachers]);
    }
    public function edit($id)
    {
        $this->teacher = Teacher::find($id);
        return view('admin.teacher.edit',['teacher'=>$this->teacher]);

    }
    public function update(Request $request,$id)
    {
        Teacher::updateTeacher($request,$id, $this->getTeacherCode($request));
        return redirect('/manage-teacher')->with('message','Teacher info Update Successfully');
    }
    public function delete($id)
    {
        $this->teacher =Teacher::find($id);
        if(file_exists($this->teacher->image))
        {
            unlink($this->teacher->image);
        }
        $this->teacher->delete();
        return redirect('/manage-teacher')->with('manage','Teacher info delete successfully');

    }
}
