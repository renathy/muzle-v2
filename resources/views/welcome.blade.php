@extends('layouts.public')

@section('content')
<div class="py-16 px-2">
    <div class="container max-w-screen-xl mx-auto">
        <div class="grid grid-cols-5 gap-2">
            <div class="header col-span-2 text-center">
                <div class="text-6xl text-green-900 font-bold">
                    Lielā dabas spēle Mežs
                </div>
                <img class="w-1/2" alt="Lielā dabas spēle mežs" src="img/dabas-spele.jpg">
                <div>
                    Šeit būs īss visu spēļu apraksts
                </div>
            </div> 
            @foreach($games as $game) 
                <div class="max-w-sm rounded overflow-hidden shadow-lg py-2 card-game mx-1 my-2">
                    <div class="font-bold text-xl mb-2 card-header text-center">{{$game->name}}</div>
                    <img class="w-full" src="/storage/{{$game->frontend_img_thumb}}" alt="{{$game->name}}" >
                    <div class="text-center">{{$game->description}}</div>
                    <div class="px-6 pt-4 pb-2 game-card-button">                    
                        <button class="bg-green-700 hover:bg-green-900 text-white font-bold py-2 px-4 rounded ">
                            <a href="/games/{{$game->id}}" title="Doties uz spēli">Spēlēt</a>
                        </button>
                    </div>
                    <a class="underline" href="#static">Uz aprakstu</a>
                </div>  
            @endforeach
        </div>
    </div>
</div>
@stop