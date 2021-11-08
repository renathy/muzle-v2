@extends('layouts.public')

@section('content')
    <style>
        .static {
        position:absolute;
        background: white;
        }

        .static:hover {
        opacity:0;
        }
    </style>

    <div class="py-16 px-2 print:overflow-x-auto">
        <div class="container w-full flex flex-wrap mx-auto px-2">
            <div class="w-full lg:w-1/6 px-6 text-xl text-gray-800 leading-normal">
                <div class="w-full sticky inset-0 hidden max-h-64 lg:h-auto overflow-x-hidden overflow-y-auto lg:overflow-y-hidden lg:block mt-0 my-2 lg:my-0 border border-gray-400 lg:border-transparent bg-white shadow lg:shadow-none lg:bg-transparent z-20"
                    style="top:6em;" id="menu-content">
                    <ul class="list-reset py-2 md:py-0">
                        <li
                            class="py-1 md:my-2 hover:bg-yellow-100 lg:hover:bg-transparent border-l-4 border-transparent font-bold border-yellow-600">
                            <a href="#spelu_apraksti"
                                class="block pl-4 align-middle text-gray-700 no-underline hover:text-yellow-600">
                                <span class="pb-1 md:pb-0 text-sm">Spēļu apraksti</span>
                            </a>
                        </li>
                        <li class="py-1 md:my-2 hover:bg-yellow-100 lg:hover:bg-transparent border-l-4 border-transparent">
                            <a href="#objekti"
                                class="block pl-4 align-middle text-gray-700 no-underline hover:text-yellow-600">
                                <span class="pb-1 md:pb-0 text-sm">Visi spēles objekti</span>
                            </a>
                        </li>
                        <li class="py-1 md:my-2 hover:bg-yellow-100 lg:hover:bg-transparent border-l-4 border-transparent">
                            <a href="#instrukcijas"
                                class="block pl-4 align-middle text-gray-700 no-underline hover:text-yellow-600">
                                <span class="pb-1 md:pb-0 text-sm">Instrukcijas</span>
                            </a>
                        </li>
                        <li class="py-1 md:my-2 hover:bg-yellow-100 lg:hover:bg-transparent border-l-4 border-transparent">
                            <a href="#plans"
                                class="block pl-4 align-middle text-gray-700 no-underline hover:text-yellow-600">
                                <span class="pb-1 md:pb-0 text-sm">Plānotie papildinājumi</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <section class="w-full lg:w-5/6 print:overflow-x-auto">
                <div class="text-4xl text-green-900 font-bold text-center">
                    <h1 class="text-center inline-block">Lielā dabas spēle Mežs</h1>
                    <a class="inline-block" href="#" onclick="window.print()">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M5 4v3H4a2 2 0 00-2 2v3a2 2 0 002 2h1v2a2 2 0 002 2h6a2 2 0 002-2v-2h1a2 2 0 002-2V9a2 2 0 00-2-2h-1V4a2 2 0 00-2-2H7a2 2 0 00-2 2zm8 0H7v3h6V4zm0 8H7v4h6v-4z" clip-rule="evenodd" />
                        </svg>
                    </a>
                </div>
               
                <div id="spelu_apraksti" class="mt-3 text-xl text-green-700">
                    <p class="mb-2">
                        Spēle Mežs ir daudzveidīgi lietojams izzinošs materiāls, kas ļaus izprast
                        meža un tā iemītnieku dzīvi, savstarpējo mijiedarbību.
                    </p>
                </div>
                <div>
                    <ul class="list-disc">
                        <li> Spēle šobrīd izmantojama 10 dažādos veidos. </li>
                        <li> Spēles var spēlēt gan pa vienam, gan grupā, gan sadaloties lomās.</li>
                        <li>Šādu spēles formātu var izmantot arī dažādās logopēda, psihologa vai mūzikas
                            pedagoga nodarbībās.</li>
                        <li>Katrā no piedāvātajām spēlēm iespējams izdomāt un izspēlēt savus spēļu veidus.</li>
                        <li>Spēlēs lietotos vai jauniegūtos vārdus, vārdu savienojumus vai teikumus vēlams arī
                            rakstīt, attīstot rakstītprasmi.</li>
                    </ul>
                    </h2>
                </div>
                <div class="grid grid-cols-2 gap-4 mt-2">
                    <div>
                        <div class="flex items-center m-4">
                            <h4 class="m-4">1. Meža stāvi</h4>
                            <img width="96" src="/img/frontend_img_thumb/meza_stavi.jpg" alt="Meža stāvi" />
                        </div>

                        <ul class="list-disc">
                            <li>
                                Sagrupēt mežā augošos augus pēc to izmēra (īss - garš), formas (apaļīgs – izstiepts,
                                regulārs - neregulārs), krāsas (vienkrāsains - raibs)utt.
                            </li>
                            <li> Nosaukt meža augšējā, koku stāva, augu sugas (priede, egle,bērzs);</li>
                            <li>Nosaukt un salikt krūmu augstākā stāva augus (pīlādzis, kadiķis, lazda, meža jāņoga);</li>
                            <li>Nosaukt un salikt krūmu un puskrūmu zemākā stāva augus (vaivariņš, mellene);</li>
                            <li>Nosaukt un salikt lakstaugus meža zemākajā stāvā (pienene, zāle).</li>

                    </div>
                    <div>
                        <div class="flex items-center m-4">
                            <h4 class="m-4"><a href="/games/1">2. Augi un to daļas</a></h4>
                            <img width="96" src="/img/frontend_img_thumb/augi_lapas_augli.jpg" alt="Meža stāvi" />
                        </div>

                        <ul class="list-disc">
                            <li>
                                Sameklēt un nosaukt augiem piederošās daļas (lazdai - lazdas lapa un rieksts, priedei -
                                priedes skujas un čiekurs, ozolam - ozola lapa un zīle
                                utt.).</li>
                            <li>Nosaukt augu sugas.</li>
                        </ul>
                    </div>

                    <div>
                        <div class="flex items-center m-4">

                            <h4 class="m-4">3. Dzīvnieki</h4>
                            <img  width="96" src="/img/frontend_img_thumb/mazuli_un_vecaki.jpg" alt="Meža stāvi" />

                        </div>

                        <li>Atpazīt, nosaukt un sagrupēt dzīvniekus un putnus ar viņu mazuļiem (lūsis - lūsēns, pūce -
                            pūculēns, alnis - alnēns utt.).</li>
                        <li> Pedagogs saliek dzīvniekus un to mazuļus nepareizi (lapsa – zaķēns utt.), bērniem jāatrod un
                            jāizlabo kļūdas.</li>
                        <li> Sagrupēt dzīvniekus plēsīgajos un neplēsīgajos.</li>
                        <li> Sagrupēt dzīvniekus pēc ārējām pazīmēm (auguma, krāsas, astes garuma utt.).</li>
                        <li> Sagrupēt tos dzīvniekus, kas ikdienā uzturas tikai uz zemes (alnis, vilks utt.) un tos, kuri
                            spēj uzturēties arī augstāk par zemi (putni, lūsis,
                            vāvere, caune utt.).</li>
                        <li> Pedagogs izveido neiespējamas situācijas attēlu (ezis koka dobumā, āpsis uz zara utt.), bērnam
                            jāatrod un jāizlabo kļūdas.</li>
                        </ul>
                    </div>
                    <div>
                        <div class="flex items-center m-4">
                            <h4 class="m-4">4. Barības ķēdes</h4>
                            <img width="96" src="/img/frontend_img_thumb/baribas_kedes.jpg" alt="Meža stāvi" />
                        </div>
                        <ul class="list-disc">
                            <li>Izdomāt un salikt visas iespējamās barības ķēdes, sākot ar vienkāršām (pienene – zaķis –
                                lapsa), līdz iespējami garākām (pienene – tauriņš –
                                varde – zalktis – ezis - lapsa). Izmanto spēles attēlus, savienojot tos ar bultiņām.</li>
                            <li>Izdomāt, kas ir barības ķēds pamatā (Saule, ūdens, augi).</li>
                            <li>Bērni sadalās komandās un sacenšas, kuri saliks garāko barības ķēdi. Komandas izmanto dažādu
                                krāsu bultiņas. Uzvar tā komanda, kurai
                                visgarākā barības ķēde.</li>
                            <li>Pedagogs saliek barības ķēdes objektus uz meža fona. Bērni sameklē un ar bultiņām savieno
                                iespējamās barības ķēdes.</li>
                        </ul>
                    </div>
                    <div>
                        <div class="flex items-center m-4">

                            <h4 class="m-4">5. Kurš kuru apdraud?</h4>
                            <img width="96" src="/img/frontend_img_thumb/kurs_kuru_apdraud.jpg" alt="Kurš kuru apdraud" />

                        </div>

                        <ul class="list-disc">
                            <li>Uz meža fona salikt daļu vai visus putnus un dzīvniekus ar viņu mazuļiem. Uzlikt vienu
                                plēsīgo dzīvnieku vai putnu un sekojoši noņemt tos no
                                dzīvniekiem vai putniem, kuri šī plēsēja klātbūtnē ir apdraudēti un bēg.</li>
                            <li>Salikt daļu vai visus neplēsīgos meža iemītniekus atpakaļ un atkārtot to pašu ar kādu citu
                                plēsēju (pūces klātbūtnē apdraudēta ir pele, pelēns,
                                vabole, slieka, zaķis, zaķēns, cauna, caunēns, mazie putni un to mazuļi utt., bet
                                neapdraudēti paliek - lapsa, vilks, vanags utt.).</li>
                            <li>Palīdzēt dzīvniekiem atrast drošas paslēptuves (zaķis – zālē vai zem krūma, vāvere – augstu
                                kokā, stirna – biezoknī utt.). </li>
                        </ul>
                    </div>
                    <div>
                        <div class="flex items-center m-4">

                            <h4 class="m-4">6. Barība</h4>
                            <img width="96" src="/img/frontend_img_thumb/baribas.jpg" alt="Barība" />

                        </div>
                        <ul class="list-disc">
                            <li>Atrast dzīvniekiem pašu raksturīgāko barību (stirna – zāle un zari, lapsa – zaķis, cauna –
                                vāvere utt.)</li>
                            <li>Katram dzīvniekam un putnam sameklēt visu iespējamo barību, kuru viņš lieto ikdienā (lācis -
                                alnis un stirna ar mazuļiem, olas, slieka, augi, pele
                                ar pelēniem, sēne utt.; mežacūka - zīles, sēne, olas, putnēni, zaķēns, pelēni utt.).</li>
                            <li>Bērni sadalās komandās un sacenšas, meklējot dzīvnieku ar visplašāko barības klāstu. Uzvar
                                tā komanda, kuras izvēlētajam dzīvniekam
                                atrasts visvairāk barības.</li>
                            <li>Pedagogs pievieno kādam dzīvniekam atbilstošus un neatbilstošus barības veidus. Bērns marķē
                                atbilstošos ar zaļiem un neatbilstošos ar
                                sarkaniem marķieriem. Spēli var izspēlēt arī kā sacensību starp bērniem vai komandām.</li>
                        </ul>
                    </div>

                    <div>
                        <div class="flex items-center m-4">

                            <h4 class="m-4">7. Mājvietas</h4>
                            <img width="96" src="/img/frontend_img_thumb/majvietas.jpg" alt="Barības ķēdes" />

                        </div>
                        <ul class="list-disc">
                            <li>Atrast sev zināmajiem dzīvniekiem to mājvietas.</li>
                            <li> Sagrupēt ap kādu no mājvietām visus dzīvniekus, kas tādā dzīvo (dobums – pūce, ūpis, vāvere
                                utt., biezoknis - alnis, mežacūka, stirna un viņu
                                mazuļi utt. ).To izspēlēt ar visām iespējamām mājvietām.</li>
                            <li>Pedagogs ap mājvietu izvieto atbilstošus un neatbilstošus iemītniekus. Bērns marķē
                                atbilstošos ar zaļiem un neatbilstošos ar sarkaniem
                                marķieriem.</li>
                        </ul>
                    </div>
                    <div>
                        <div class="flex items-center m-4">
                            <h4 class="m-4"><a href="/games/11">8. Kas mežā neiederas?</a></h4>
                            <img width="96" src="/img/frontend_img_thumb/kas_neiederas.jpg" alt="Kas mežā neiederas" />
                        </div>

                        <ul class="list-disc">
                            <li> Pedagogs uzbūvē mežu un saliek tajā dažādus objektus (dzīvnieki, putni, atkritumi utt.), ko
                                mežā var atrast. Bērns nomarķē ar sarkaniem
                                aplīšiem to, kas mežā neiederas (ugunskurs, atkritumi), savukārt ar zaļiem, kas iederas.
                                Nobeigumā mežu iztīra, izvācot neiederīgos objektus.</li>
                            <li>Ja mežā ir ievietots ugunskurs, pedagogs kopā ar bērniem izrunā ugunsdrošības noteikumus.
                            </li>
                        </ul>

                    </div>
                    <div>
                        <div class="flex items-center m-4">

                            <h4 class="m-4">9. Dzīvās dabas klases</h4>
                            <img width="96" src="/img/frontend_img_thumb/dabas_klases.png" alt="Dzīvās dabas klases" />
                        </div>

                        <ul class="list-disc">
                            <li>Bērni cenšas sadalīt meža dzīvo dabu pa to klasēm (zīdītāji, rāpuļi, abinieki, augi,
                                kukaiņi, putni ).</li>
                        </ul>
                    </div>

                    <div>
                        <div class="flex items-center m-4">

                            <h4 class="m-4">10. Dabas stāstu veidošana</h4>
                            <img width="96" src="/img/frontend_img_thumb/dabas-spele.JPG" alt="Dabas stāstu veidošana" />
                        </div>


                        <ul class="list-disc">
                            <li>Pedagogs stāsta pasaku vai meža stāstu, vienlaicīgi veidojot tam ilustratīvu attēlu. Bērns
                                pēc atmiņas atkārto to pašu – stāsta un veido attēlu.</li>
                            <li>Bērns turpina pasaku vai meža stāstu, brīvi improvizējot.</li>
                            <li>Bērns stāsta savas brīvi izvēlētas vai pedagoga piedāvātas tēmas dabas stāstu, veidojot tam
                                ilustratīvu attēlu. Uzraksta to!</li>
                            <li>Dabas stāstu veidošana izspēlējama pa vienam, grupās vai sadaloties pa lomām.</li>
                        </ul>
                    </div>

                </div>
                <div id="objekti" class="text-2xl text-green-900 font-bold lg:pt-8 pt-2">
                    <h1 class="text-center">Spēlē izmantotie objekti</h1>
                </div>
                <div>
                    <img src="/img/objekti.png"/>
                </div>


                <div id="instrukcijas" class="text-2xl text-green-900 font-bold lg:pt-8 pt-2">
                    <h1 class="text-center font-bold mb-4">Spēles lietošanas instrukcija</h1>
                </div>
                <div>
                    <dl class="space-y-10 md:space-y-0 md:grid md:grid-cols-2 md:gap-x-8 md:gap-y-10">
                        <div class="relative">
                            <dt>
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(1) Darba lapa</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                                Spēles centrālaiks laukums tiek saukts par darba lapu. Spēles būtība paredz to, ka darba lapā jūs varat ievietot dažādus objektus (dzīvniekus, augus un citus elementus). Jūs varat tos pārvietot/pārnest, mainīt to lielumu un veikt dažas citas darbības. Ir iespēja arī mainīt darba lapas fonu.
                                <img src="/img/instructions/darba_lapa.png"/>                               
                            </dd>
                        </div>
                        <div class="relative">
                            <dt>                              
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(2) Kategorijas un objekta izvēle</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                                Blakus darba lapai ir pieejami dažādi objekti (egle, ezis, saule un citi). Visi objekti ir izvietoti kategorijās (dzīvnieki, abinieki, augi un citi).
                                Skolotājam vai skolēnam vispirms jāizvēlas kategorija, uz tās noklišķinot. 
                                Un tad jau var izvēlēties pašu objektu. 
                                <img src="/img/instructions/kategorijas.gif"/>                                                            
                            </dd>
                        </div> 

                        <div class="relative">
                            <dt>                              
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(3) Objekta izvietošana, pārvietošana un pagriešana</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                                Spēles pamatā ir objektu (dzīvnieku, augu un citu objektu) izvietošana uz darba lapas.
                                Objektu izvieto uz darba lapas, ja uz objektu vienu reizi noklišķina.
                                Pēc tam objektu var pārvietot, pagriezt vai mainīt tā izmērus.
                                <img src="/img/instructions/darbs_ar_objektiem.gif"/>                              
                            </dd>
                        </div>                        
                        <div class="relative">
                            <dt>                             
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(4) Fonu maiņa</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                                Katrai spēlei ir noklusējuma fons, piemēram, Mežs. Taču fonu var nomainīt, nospiežot uz Jūsu vēlamā fona.
                                <img src="/img/instructions/foni_pogas.jpg"/> <br/>                               
                                Ja fonu skaits ir lielāks par 3, tad ar bultiņu palīdzību var izvēlēties arī nākamo fonu.
                                <img class="static" src="/img/instructions/foni.jpg"/>                                
                                <img class="active" src="/img/instructions/foni.gif"/>                                
                            </dd>
                        </div>
                        <div class="relative">
                            <dt>
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(5) Visu vai viena objektu dzēšana</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                                Ja vēlaties izdzēst vienu objektu (dzīvnieku, augu, marķieri vai citu), tad ar klikšķi šis objekts ir jāizvēlas. 
                                Un jāizvēlas poga "Dzēst". Tuvākā laikā!!! - objektu varēs izdzēst, nospiežot uz klaviatūrs taustiņu "Delete". <br/>
                                Ja vēlaties izdzēst VISUS elementus jūsu darba lapā, tad izmantojiet pogu "Dzēst visus objektus". Visus objektus var izdzēst arī tad, ja pārlādē lapu vai atver to par jaunu.
                            </dd>
                        </div>
                      
                        <div class="relative">
                            <dt>                              
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(6) Marķieru izmantošana</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                                Spēlē ir pieejami divu veidu (bultiņa un aplis) un krāsu (sarkans un zils) marķieris.
                                Abi mierķieri atrodas kreisajā pusē no darba lapas, figūru izvēlnē.  
                                <img width="400" alt="marķieri" src="/img/instructions/markieri.jpg"/>                                
                                Nospiežot uz marķiera, tas parādās uz darba lapas. Marķieri tāpat kā citus objektus var pārvietot, pagriezt, mainīt tā izmērus, dzēst.
                                Ar marķieru palīdzību jūs varat kaut ko īpaši izcelt darba lapā.
                            </dd>
                        </div>                      

                        <div class="relative">
                            <dt>                              
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(7) Brīvā zīmēšana</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                               Izmantojot zīmuli, kas atrodas pie rīkiem, jūs varat uzsākt brīvo zīmēšanu uz darba lapas. 
                               Lai to pārtrauktu, zīmulis janospiež vēlreiz.
                               <img width="400" alt="marķieri" src="/img/instructions/brivi.jpg"/>
                               Brīvi uzzīmētās līnijas var izdzēst vai pārvietot.
                            </dd>
                        </div>   
                        
                        <div class="relative">
                            <dt>                              
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(8) Attēla lejupielādēšana</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                               Izveidoto attēlu ir iespējams lejupielādēt. To var, piemēram, izdrukāt un pievienot kaut kur klasē vai pievienot e-pastam kā bildi.
                            </dd>
                        </div>  

                        <div class="relative">
                            <dt>                              
                              <p class="ml-16 text-lg leading-6 font-medium text-gray-900">(9) Teksta pievienošana</p>
                            </dt>
                            <dd class="mt-2 ml-16 text-base text-gray-500">
                                Spēlē ir iespējams pievienot tekstu, izmantojot pogu "Pievienot tekstu".
                                Nospiežot šo pogu, uz spēles parādās noklusējuma teksts 'TEXT'. 
                                Nospiežot uz šo tekstu, ir iespējams nomainīt tekstu, rakstot to uz klaviatūras.
                                Tekstu var pagriezt, mainīt tā krāsu vai izdzēst.
                                <img width="400" alt="marķieri" src="/img/instructions/teksts.jpg"/>
                                Iespējams pievienot arī garāku "neredzamo tekstu". Šis teksts nav redzams uz darba lapas, bet tas parādās attēlā, ja to lejupielādē.
                            </dd>
                        </div>  
                    </dl>                                   
                </div>

                <div id="plans" class="text-2xl text-green-900 font-bold lg:pt-8 pt-2">
                    <h1 class="text-center">Plānotie papildinājumi</h1>
                </div>
                <div class="print:overflow-x-auto">
                    <ul class="list-disc">
                        <li>Saglabāt veidotos attēlus un tos atvērt</li>
                        <li>Uzlabotas iespējas brīvai zīmēšanai, pievienojot dažādas krāsas</li>
                        <li>Jaunas spēles - valodas spēles, burtu mīklas, tautasdziesmas, mīklas, dzīvnieku valodas, sēnes,
                            mežs ziemā u.c.</li>
                    </ul>
                    <div class="mt-8">

                        <a href="https://muzle.lv/lv/kontakti/" target="_blank"
                            class="h-full px-2 flex items-center hover:bg-yellow-800 active:bg-yellow-800">
                            Lai atsūtītu ieteikumu vai paziņotu par kļūdu spied "šeit" vai sūti uz epastu "info@muzle.lv"
                        </a>
                    </div>
                </div>
            </section>
        </div>
    </div>
@stop
