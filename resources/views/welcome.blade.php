@extends('layouts.public')

@section('content')
<div class="py-16 px-2">
    <div class="container max-w-screen-xl mx-auto">
        <div class="grid grid-cols-5 gap-2">
            <div class="header col-span-2 text-center">
                <div class="text-6xl text-green-900 font-bold">
                    Lielā dabas spēle Mežs
                </div>
                <img class="w-1/2" alt="Lielā dabas spēle Mežs" src="img/dabas-spele.jpg">
                <div>
                    Šeit būs īss visu spēļu apraksts
                </div>
            </div>
            @foreach($games as $game) 
                <div class="c-card block bg-white shadow-md hover:shadow-xl rounded-lg overflow-hidden">
                    <div class="relative pb-48 overflow-hidden">
                        <img class="absolute inset-0 w-full object-cover" src="/storage/{{$game->frontend_img_thumb}}" alt="">
                    </div>
                    <div class="px-4 py-2">
                        <h2 class="mt-2 mb-2  font-bold">{{$game->name}}</h2>
                        <p class="text-sm">{{$game->description}}</p>
                    </div>
                <div class="px-4 py-4 border-t border-b text-xs text-gray-700">
                    <span class="flex items-center">
                        <a href="/games" class="inline-block bg-green-700 text-white font-bold rounded py-2 px-4">
                            Spēlēt
                        </a>
                    </span>
                </div>
                <div class="p-4 flex items-center text-sm text-gray-600">
                    <span class="ml-2"><a>Lasīt vairāk</a></span></div>
                </div>
            @endforeach           
        </div>
    </div>
</div>
@stop