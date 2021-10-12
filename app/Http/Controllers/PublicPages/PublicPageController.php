<?php

namespace App\Http\Controllers\PublicPages;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Game;

class PublicPageController extends Controller {
    public function index()
    {
        $games = Game::all();
        return view('welcome')->with('games', $games);
    }
}
?>