<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Game;
use App\Models\Category;
use App\Models\Background;
use Inertia\Inertia;

class GameController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $games = Game::where('is_archivated', 0)->get();
        return Inertia::render('User/Game/Index', [
            'games' => $games,
        ]);
    }

    // public function frontend_index()
    // {
    //     $games = Game::where('is_archivated', 0)->get();
    //     return Inertia::render('User/Game/Index', [
    //         'games' => $games,
    //     ]);
    // }


 
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $game = Game::find($id);
        $backgrounds = $game->backgrounds()->get();
        $backgrounds = $backgrounds->sortBy('is_default');
        $categories = $game->categories()->with('images')->get();
        return response()->json([
            'game' => $game,
            'backgrounds' => $backgrounds,
            'categories' => $categories
        ]);
    }
}
