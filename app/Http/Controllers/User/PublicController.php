<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Game;

class PublicController extends Controller {
    public function index()
    { 
        $games = Game::where('is_archivated', 0)->orderBy('name')->get();
        return view('welcome')->with('games', $games);
    }
}
?>