<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DetailPenumpang extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'id', 'name', 'address'
    ];

    protected $hidden = [

    ];
    // public function Penumpang(){
    //     return $this->belongsTo(TravelPackage::class, 'id', 'id');
    // }
}