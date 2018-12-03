<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;
use \App\gudang;

class GudangController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
     

    public function all(){
        $data['gudang'] = \App\gudang::all();

    	return view('gudang.all')->with($data);
    }

    public function add(){
    	return view('gudang.add');
    }

    public function save(Request $r){
        $gdg = new gudang;
        $gdg->alamat = $r->input('alamat');
        $gdg->kapasitas = $r->input('kapasitas');

        $foto = $r->file("foto");
        $nama_foto = $foto->getClientOriginalName();
        $r->file('foto')->move("uploads/img/", $nama_foto);

        $gdg->pic = $nama_foto;

        $gdg->save();

        echo "'Anda Sukses', 'Gudang Baru Telah Terdaftar'";

        return redirect()->route('semua_gudang');
    }

    public function edit($id){
       
        $gudang = gudang::all()->where('id',$id);
        $data['gudang'] = \App\gudang::find($id);

    	return view('gudang.edit')->with($data);
    }

    public function update(Request $r){

        $id = $r->id;
        $alamat = $r->alamat;
        $kapasitas = $r->kapasitas;
        $gambar = $r->pict;

        $gudang = gudang::find($id);
        $gudang->alamat = $alamat;
        $gudang->kapasitas = $kapasitas;

        if($r->file('foto') == "")
        {
            $gudang->pic = $gudang->pic;
        } 
        else
        {
            $file       = $r->file('foto');
            $fileName   = $file->getClientOriginalName();
            $r->file('foto')->move("uploads/img/", $fileName);
            $gudang->pic = $fileName;
        }
        $gudang->save();
        return redirect()->route('semua_gudang');

// 4-----------
      // $share = gudang::findOrFail($id);
      // $share->alamat = $r->input('alamat');
      // $share->kapasitas = $r->input('kapasitas');
      
      // if($r->file('foto') == "")
      //   {
      //       $share->pic = $share->pic;
      //   } 
      //   else
      //   {
      //       $file       = $r->file('foto');
      //       $fileName   = $file->getClientOriginalName();
      //       $r->file('foto')->move("uploads/img/", $fileName);
      //       $share->pic = $fileName;
      //   }

      // $share->save();
      // return redirect()->route('semua_gudang');



        // $update = gudang::where('alamat', $alamat)->first();
        // $update->alamat = $r['alamat'];
        // $update->kapasitas = $r['kapasitas'];

        // if($r->file('foto') == "")
        // {
        //     $update->pic = $update->pic;
        // } 
        // else
        // {
        //     $file       = $r->file('foto');
        //     $fileName   = $file->getClientOriginalName();
        //     $r->file('foto')->move("uploads/img/", $fileName);
        //     $update->pic = $fileName;
        // }
        
        // $update->update();
        // return redirect()->route('semua_gudang');

//1------------------------
        // $edit_gudang = gudang::find($r->input('id'));

        // $edit_gudang->alamat = $r->input('alamat');
        // $edit_gudang->kapasitas = $r->input('kapasitas');


        // $foto = $r->file("foto");
        // $nama_foto = $foto->getClientOriginalName();
        // $r->file('foto')->move("uploads/img/", $nama_foto);
        // $edit_gudang->pic = $nama_foto;
        // //echo $foto->getClientOriginalName();
        // return redirect()->route('semua_gudang');



//2----------------

        // $edit_gudang->pic = $nama_foto;
        // $edit_gudang->save();
        

        // if ($foto != ''){
        //     $nama_foto = $foto->getClientOriginalName();
        //     $r->file('foto')->move("uploads/img/", $nama_foto);
        //     $edit_gudang->pic = $nama_foto;
        // }

        // $edit_gudang->save();
        // return redirect()->route('semua_gudang');
    }

    public function delete($id){
    	$hapus = gudang::findOrFail($id);
        $path_foto = app_path("../public/uploads/img/{{$hapus->pic}}");
        Storage::delete($path_foto);    
        $hapus->delete();   
        return redirect()->route('semua_gudang');
        
    }
}
