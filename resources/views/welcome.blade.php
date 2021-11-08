@extends('layouts.public')

@section('content')
<div class="py-16 px-2">
    <div class="container max-w-screen-xl mx-auto">
        <div class="grid grid-cols-12">
            <div class="col-start-3 col-span-8 text-center mb-2">
                <div class="text-4xl text-green-900 font-bold">
                    Lielā dabas spēle Mežs
                </div>
                <div class="mt-4 flex justify-center w-full">
                    <img class="w-1/3" alt="Lielā dabas spēle Mežs" src="img/dabas-spele.jpg">
                </div>
                <div class="mt-4 text-2xl text-green-700">
                    Spēle Mežs ir daudzveidīgi lietojams izzinošs materiāls, kas ļaus izprast meža un tā iemītnieku dzīvi, savstarpējo mijiedarbību.
                </div>
            </div> 
        </div>
        <div class="grid grid-cols-12">

            @foreach($games as $game) 
                <div class="col-span-3 md:col-span-3 sm:col-span-6 xs:col-span-12 max-w-sm rounded overflow-hidden shadow-2xl bg-green-50 py-2 card-game mx-1 my-2">
                    <div class="p-3">
                        <div class="font-bold text-xl mb-2 card-header text-center">{{$game->name}}</div>
                        <div class="text-center border border-gray-700 overflow-hidden flex justify-center" style="height:170px;">
                            <a href="/games/{{$game->id}}">
                                <img src="/storage/{{$game->frontend_img_thumb}}" alt="{{$game->name}}" style="height:170px">
                            </a>
                        </div>
                        <!-- <div class="text-center mt-3" style="height:54px;overflow:hidden">{{$game->description}}</div> -->
                        <div class="flex justify-between items-end mt-4">
                            <div class=" game-card-button">                    
                                <button class="bg-yellow-700 hover:bg-yellow-900 text-white font-bold py-2 px-4 rounded ">
                                    <a href="/games/{{$game->id}}" title="Doties uz spēli">Spēlēt</a>
                                </button>
                            </div>
                            <div class="text-right">
                                <a href="/apraksts" class="hover:text-yellow-900">Uz aprakstu >> </a>
                            </div>
                        </div>
                    </div>
                </div>  
            @endforeach
        </div>
    </div>
</div>
@stop