<%--
  Created by IntelliJ IDEA.
  User: Mattia
  Date: 12/06/2018
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <jsp:include page="static/head.jsp"></jsp:include>
  </head>
  <body onload="loadData()">

  <button onclick="goTop()" id="topButton" class="topButton" title="top">
    <img src="https://png.icons8.com/windows/64/000000/circled-chevron-up.png" height="30px" width="30px">
  </button>

  <a href="Tesina/Tesina Schettini Mattia.pdf" id="downloadTesina" class="downloadTesina" title="top">
    <img src="https://png.icons8.com/metro/26/000000/downloading-updates.png">
  </a>

  <button onclick="window.location='https://prezi.com/view/0KzY2fiD2OnQ4gO58yOt/'" id="prezi" class="preziButton" title="top" download>
    <img src="immages/Senza titolo-4.png" height="30px" width="30px">
  </button>

  <div class="header">
    <h1 style="color:#0000bc;" >Le Facce della musica </h1>
  </div>

  <div id="homeBar">
      <ul>
          <li>
            <a id="Bar" class="unactive"></a>
            <a  onclick="clickedButton('.textPresentazione')" class="unactive" id="PresentazioneBar">Presentazione</a>
            <a onclick="clickedButton('.textItaliano')" class="unactive" id = "ItalianoBar">Italiano</a>
            <a  onclick="clickedButton('.textStoria')" class="unactive" id = "StoriaBar">Storia</a>
            <a onclick="clickedButton('.textInglese')" class="unactive" id="IngleseBar">Inglese</a>
            <a  onclick="clickedButton('.textSistemi')" class="unactive" id="SistemiBar">Sistemi</a>


          </li>
      </ul>

  </div>


<div class="all-covered" onmouseover="clickedButton('Presentazione')">
  <div class="textPresentazione" id="Presentazione" onmouseover="menuEvidence('Presentazione')">
    <h1 class="materia">
      <br>
      Presentazione
    </h1>
    <p class="sottoTitolo">
      Come ho Strutturato questa tesina?
    </p>
    <p class="textMaterie">
      Ci sono svariati motivi per cui ho scelto quest'argomento. Vedo la musica come la forma d'arte più diretta che ci sia, chiunque piò capirne un testo di una canzone, al contrario delle altre forme artistiche.
      <br>
      Ho scelto l’argomento anche per portare qualcosa di interessante, cosi da cercar di stimolare una ricerca più approfondita da parte dei lettori e far apprezzare le varie culture della musica; difatti, ogni materia tratta un genere musicale differente, per poter far apprezzare a voi non solo il vostro genere musicale preferito ma anche generi più moderni ripercorrendone le origini, toccando generi tipo rock, hip hop ed elettronica.
      <br>Attualmente ci sono svariati generi e sotto generi, a parer mio ciò ha portato a una maggior diffusione della musica, specialmente negli ultimi anni, dove c’è stato un incremento esponenziale di creatori musicali.  Uno dei tanti punti di forza, è che chiunque può fare musica, soprattutto oggi che abbiamo a disposizione un’infinità di oggetti con cui creare contenuti musicali, dagli strumenti ai computer.  I campionatori ed i software di produzione musicale hanno consentito alle persone di creare musica, senza nessun tipo di istruzione musicale, con l’ausilio di un computer riproducendo suoni precedentemente campionati da altre persone.
      <br> Oggi essa ha un enorme influenza sulle persone, in particolare sui giovanissimi, e ciò ci fa capire la sua potenza propagandistica, ad esempio una delle leggi razziste era la limitazione di alcune regole della musica jazz, principalmente le tonalità che rendevano la canzone più cupa, e prediligere le tonalità più divertenti del genere.  Sempre nella seconda guerra mondiale Goebbels credeva molto nella propaganda musicale via radio.
    </p>
    <p class="sottoTitolo">
      Cos'è la musica?
    </p>
    <p class="textMaterie">
     <br> La musica non è altro che una composizione di suoni di varie tonalità che unite insieme creano un qualcosa di unico.  Si, unico! Ogni canzone è unica, quando una persona crea una canzone sarà sempre il primo al mondo a creare ciò che ha fatto.
     <br> Come detto in precedenza è una composizione di suoni, perché la musica non è solamente un qualcosa creato con strumenti appositi o con computer, ma anche con i suoni che ci offre la civiltà e la natura; un ottimo esempio di suoni provenienti da persone è la disciplina del beat-box, dove i suoi esecutori creano una traccia con le proprie corde vocali senza l’ausilio di strumenti.
    </p>

    <p class="sottoTitolo">
      Come ho strutturato la tesina?
    </p>
    <p class="textMaterie">
      La tesina ho voluta strutturarla in modo che sembrasse il mio percorso musicale.  Come potete notare, ogni materia ha il suo argomento con un genere musicale differente, eccetto italiano per mancanza di collegamenti.
    </p>

    <p class="sottoTitolo">
      Accenni sul sito web
    </p>
    <p class="textMaterie">
      Il sito e strutturato in modo che sia user-frendly, in alto avremo il titolo che scomparirà non appena si scorrerà in basso; subito sotto possiamo notare una barra.  Potremo cliccare sulla materia desiderata per far scorrere la pagina web fino alla sezione inerente.  Per poter tornare in alto in basso a destra troviamo un pulsante atto per far scorrere la pagina all’inizio della pagina.
      <br>In basso a sinistra troviamo 2 pulsanti:
      <ul class="textPuntato" style="margin-top: -5%">
        <li>
          Uno per scaricare la tesina completa;
        </li>
        <li>
          L’altro per poter andare a vedere la presentazione in Prezi.
        </li>
      </ul>
        <p class="textMaterie" >
          Il sito è stato realizzato utilizzando le tavole di css, e gli script in js per quanto riguarda la parte grafica, utilizzando di base html.
          <br>Per quanto riguarda la ricezione dei dati e il download della tesina ho utilizzato un sistema chiamato Ajax che sfrutta la libreria di jQuery.  Esso serve per interfacciarsi con la Servlet senza dover ricaricare la pagina (sistema asincrono).
        </p>


    </p>

  </div>
</div>

<div class="all-covered" onmouseover="clickedButton('Italiano')">
  <div class="textItaliano" id="Italiano">
    <h1 class="materia">
      <br>
      Italiano: Il futurismo e la correlazione con la musica
    </h1>
    <p class="textMaterie">
      Il futurismo è un movimento letterario in cui gli autori inserirono suoni nelle proprie poetiche.  La musica è molto simile perché coniuga suoni con i testi.
      <br>I futuristi, all’interno delle proprie poesie, inserivano parole (onomatopee) per poter rappresentare un tipo di suono.   Per rendere più comprensibile questo concetto prendiamo d’esempio il poemetto “Bombardamenti” di Tommaso Marinetti dove, per poter rendere partecipe il lettore il più fedelmente possibile, utilizzò dei versi (nel vero senso della parola) per rappresentare le varie situazioni come per esempio per rappresentare dei nitriti di dei cavalli che impennano per scappare troviamo nel testo il verso “iiiiiii”.
    </p>
    <p class="sottoTitolo">
      Cos’è il futurismo
    </p>
    <p class="textMaterie">
      Il futurismo è un movimento culturale, non solo letterario difatti comprendeva anche la gastronomia, che stravolse totalmente la concezione di artistica di quell’epoca in tutte le sue discipline, dalla letteratura all’arte, per esempio i quadri futuristici esprimevano la velocità attraverso l’astrazione.
    </p>
    <p class="sottoTitolo">
      Quando è nato, e cosa rappresentava?
    </p>
    <p class="textMaterie">
      Il primo manifesto fu pubblicato a febbraio del 1909 da Marinetti sul giornale “Le figaro” di Parigi, e questo determinò l’inizio del movimento.
      <br>I loro esponenti erano un gruppo di ragazzi affascinati dal progresso, derivanti dalla rivoluzione industriale, che volevano rompere i legami con il passato.
      <br>Siamo durante la rivoluzione industriale ed i futuristi sentirono il bisogno di rappresentare il progresso derivante da: auto, metropoli, treni e molto altro.
      <br> Nella pittura il futurismo lo vediamo rappresentato principalmente tramite il dinamismo dove i pittori rappresentavano i movimenti tramite scie e astrattismo.
      <br>Abbiamo un ottimo esempio qui a Torino all’interno della Pinacoteca Agnelli, quale “Espansione dinamica velocità” di Giacomo Balla, il quale rappresenta l’aumento della velocità di un automobile in corsa tramite:
      <br><img src="immages/Italiano/01.jpg" width="300" height="180" border="1" align="right">
        <ul class="textPuntato" style="margin-top: -4%">
          <li>
            vortici di dimensioni diverse, che richiamano il movimento delle ruote;
          </li>
          <li>
            triangoli che stanno ad indicare lo spazio in maniera prospettica, ed una linea lunga e curva che si ripete espandendosi;
          </li>
          <li>
            colori bicromatici molto scuri per concentrare il dinamismo.
          </li>
        </ul>
    <p class="textMaterie">
      Il futurismo letterario vuole sempre stravolgere il concetto di letteratura.
     <br> I futuristi stravolsero la sintassi e le norme che strutturavano i componenti poetici del passato; quindi:
    </p>

    <ul class="textPuntato" style="margin-top: -4%">
      <li>
        eliminarono la punteggiatura;
      </li>
      <li>
        abolirono la gerarchia tra le proposizioni e l’aggettivazione di parole essenziali slegate (le così dette “parole in libertà”).
      </li>
    </ul>
    <p class="textMaterie">
      Tutte queste linee teoriche vengono esposte nel manifesto teorico del 1912 e continua in forma più approfondita nel manifesto del 1913 chiamato “Distruzione della Sintassi.  Immaginazione senza fili.  Parole in libertà”.
    </p>
    </p>
    <p class="sottoTitolo">
      I manifesti futuristi
    </p>
    <p class="textMaterie">
      Il primo manifesto futurista fu scritto da Marinetti sul giornale francese “Le figaro” nel 1909.
      <img src="immages/Italiano/02.jpg" border="1" align="right" height="280" width="200">
      Esso contiene il programma ideologico del futurismo:
      <ul class="textPuntato" style="margin-top: -4%">
        <li>
          il rifiuto totale dei valori del passato;
        </li>
        <li>
          ansia di un rinnovamento artistico;
        </li>
        <li>
          la totale adesione al ritmo della vita tecnologica moderna;
        </li>
        <li>
          l’esaltazione della guerra concepita come “sola igiene del mondo”.
        </li>
      </ul>
    </p>
    <p class="sottoTitolo">
      Brani interessanti
    </p>
    <p class="paragrafoTitolo">
      Bombardamento (Marinetti)
    </p>
    <p class="textMaterie">
      Un brano molto interessante che sottolinea l’esaltazione della Guerra come sola igiene del mondo è “Bombardamento” di Marinetti.
      <br>Esso è tratto da “Zang Tumb Tumb, Adrianipoli”.  Descrive il bombardamento di Adrianopoli da parte dei Bulgari senza alcun intento realistico.
      <img src="immages/Italiano/03.jpg" border="1" align="right" height="280" width="200">
      <br>La guerra è descritta come un enorme spettacolo pirotecnico corredato di suoni, rumori, immagini che si accavallano senza ordine o gerarchia.
      <br>Nel testo notiamo che ci sono tutti i canoni del manifesto futuristico come l’immaginazione senza fili conduttori che mettono in relazione oggetti (“buoi, bufali”) immagini (“ufficiali sbataccccchiare come piatttti d’otttttone”) e suoni (“tam-tuuumb”) il tutto sfruttando parole “essenziali” e“in libertà” utilizzando l’analogia che per Marinetti è un amore che collega le cose distanti.
      <br>I verbi son tutti formulati all’infinito per far si che la poesia sia continua essendo che il brano è privo di punteggiatura.
      <br>Marinetti da anche un senso visivo alle parole (vedi le parole “vampe” che sono scritte in corsivo e frastagliate in uno spazio o tutti i suoni che son rappresentati in grassetto) per dare non solo un aspetto acustico della scena, ma anche visivo per esempio “vampe” è stato disposto in questo modo per far sembrare al lettore che questi lampi siano sistemati in quel modo nella realtà.
    </p>
    <p class="paragrafoTitolo">
      Lasciatemi divertire (Palazzeschi)
    </p>
    <p class="textMaterie">
      Una canzonetta che ho trovato interessante è “Lasciatemi Divertire” di Palazzeschi.
      <br>Essa suddivide in 2 il testo, strofe pari e strofe dispari, dove:
      <img src="immages/Italiano/04.jpg" border="1" align="right" height="280" width="200">
      <ul class="textPuntato" style="margin-top: -4%">
      <li>
        Le strofe pari sono semplici strofe composte in rima con la punteggiatura;
      </li>
      <li>
        Le strofe dispari son versi, questi versi stanno a rappresentare il gioco della poesia, infatti ricordano molto le vocali e consonanti dette dai bambini quando non sanno ancora parlare.
      </li>

    <br>Questo testo mi ha colpito perché l’autore non vuole dare un significato eremitico della canzonetta, anzi, scrive persino nel titolo “Lasciatemi Divertire”, quindi questa poesia è stata fatta per far divertire lo scrittore, e allo stesso tempo il lettore.
    <br>Questa poesia potrebbe avere molte interpretazioni, probabilmente molti critici hanno dato la loro interpretazione scovando messaggi nascosti nel testo, ma io la vedo più come un senso di critica verso la letteratura.
    <br>Io credo che Palazzeschi abbia fatto questa canzonetta per far capire ai poeti che per lui l’importante era far divertire il lettore, senza alcun messaggio.
    </ul>
  </p>
  </ul>
    </p>
  </div>
</div>

<div class="all-covered" onmouseover="clickedButton('Storia')">
  <div class="textStoria" id="Storia">
    <h1 class="materia">
      <br>
      Storia: Il ‘68 e Woodstock
    </h1>
    <p class="sottoTitolo">
      Cos’è il ‘68 e perché è unico nel suo genere?
    </p>
    <p class="textMaterie">
      Il “Sessantotto” è stato il movimento di massa più ampio del nostro secolo e comprese tutti i giovani del mondo.  Per la prima volta nella storia si verificarono episodi che non restarono confinati nel singolo stato, ma interagì direttamente con tutti i giovani e gli operai del pianeta.
     <br> Essi protestavano contro la nuova società dei consumi che propone come unico valore il denaro.
      <br> Il nemico comune erano le autorità: dai professori nelle scuole, alle autorità genitoriali delle famiglie, per finire con l’autorità del potere economico e organizzativo nelle fabbriche.
      <br> In qualunque caso, veniva sempre messo in discussione: il potere politico, la discriminazione delle razze, della ricchezza, del sesso e della religione.
      <br> Gli obbiettivi principali erano: la riorganizzazione della società basandola sull’uguaglianza e l’estirpazione della guerra.
    </p>
    <p class="sottoTitolo">
      I moti di protesta negli stati uniti
    </p>
    <p class="textMaterie">
      La rivolta negli USA veniva portata avanti dagli hippy (“figli dei fiori”), con il loro famosissimo motto “Peace and love”.  Questi, avevano usi e costumi molto particolari e facevano uno smodato uso di droghe, prettamente allucinogene come l’LSD.  Essi si battevano contro la guerra nel Vietnam dove gli americani non volevano l’unificazione del nord e del sud.  Al nord vi era un governo comunista mentre a sud  un governo americano.  In Vietnam del sud c’era un afferrato gruppo di comunisti, chiamati Vietcong, che volevano l’unificazione delle 2 Vietnam.  L’opinione pubblica si indignò per l’assolutismo degli Usa e questi ultimi  si ritirarono nel ‘68 perché rischiarono di perdere il conflitto.
      <br>Nel frattempo in America i neri stavano combattendo per i diritti civili elementari.
      <br>Questa battaglia era divisa in 2 sezioni:
      <img src="immages/Italiano/05.jpg" width="300" height="180" border="1" align="right">
    <ul class="textPuntato" style="margin-top: -4%">
    <li>
      Quella pacifista guidata ma Martin Luther King che basava la sua campagna sulla non violenza.  Egli si dedicò fin da giovane a questa causa, il suo celebre discorso scatenò un’ondata di proteste violente, culminate con il suo assassinio nel ’68;
    </li>
    <li>
      -	La battaglia del Black Panther Party, che chiedeva la formazione di un potere nero contrapposto al potere bianco; chiedevano case e istruzione per tutti e la fine delle oppressioni verso le minoranze etniche. Questo movimento era capitanato da Angela Davis, Cleaver e Malcom X.   Malcom era un avvocato cresciuto da una coppia di bianchi che gli avevano dato il cognome di “Little” ma lui lo cambiò in X quando divenne adulto.  Malcom lottava per la superiorità raziale del suo popolo; pensava che la supremazia fosse inevitabile e accusava il popolo bianco di non fare abbastanza per combattere questo fenomeno.
    </li>
  </ul>
    </p>
    <p class="sottoTitolo">
      La musica nel ‘68
    </p>
    <p class="textMaterie">
      Il 68 non è conosciuto solamente per le lotte sociali, ma anche per la musica.
      <br>Questi anni sono segnati dalla musica di Bob Dylan.
      <br>Ci furono 2 sue canzoni che mandarono avanti le rivolte del ‘68.
      <br>Queste 2 canzoni erano: “Blowin’ in the Wind” e “Master of War” entrambe scritte nel 1963.  La melodia del primo brano fu ispirata da un canto di degli schiavi afro-americani.  Dylan ebbe un Nobel per la letteratura nel 2016 grazie a questo brano, che non ritirò.
      <img src="immages/Italiano/06.jpg" border="1" align="right" height="280" width="200">
      <br>Sempre in quel periodo ci fu uno degli eventi musicali più grandi creati nella storia dell’uomo, il festival di Woodstock.
      <br>Si svolse tra il 15 e il 18 agosto del 1969 a Bethel, una città vicino a New York (a 69 km da Woodstock).  Parteciparono più di 500 mila persone ed era a ingresso libero.  Sul palco si esibirono 32 musicisti tra cui Janis Joplin, the Who e Jimi Hendrix.
      <br>Molti rifiutarono tra cui i Rolling Stones e i Doors (Jim Morrison non si fidava dell’acustica).
      <br>L’evento fu molto importate non solo per la sua enormità, ma anche perché unì gli hippy e i Free Speech Movement (rinfacciavano agli hippy di vivere tra le nuvole).  Non fu solamente il festival della musica, ma anche delle droghe.  All’interno del festival era d’uso normale la marijuana e L’LSD (una droga allucinogena che offriva la sensazione di varcare la soglia percettiva).
    </p>
    <p class="sottoTitolo">
      Il ‘68 in Italia
    </p>
    <p class="textMaterie">
      Possiamo dire che i protagonisti delle ribellioni erano 2:
    </p>
    <p class="paragrafoTitolo">
      Gli Studenti
    </p>
    <p class="textMaterie">
      La prima occupazione avvenne a Trento nel 67 e poi fu seguita dall’università cattolica di Milano e dalla facoltà di lettere di Torino e successivamente quasi tutte le università italiane.  Dalle università il movimento uscì per le strade, dando luogo a scontri nelle piazze contro la polizia.
     <br> Gli studenti volevano un rapporto diverso con i docenti e nuovi metodi didattici, ma presto le proteste si estesero alle famiglie.
      <img src="immages/Italiano/07.jpg" width="300" height="180" border="1" align="right">
    </p>
    <p class="paragrafoTitolo">
      Gli Operai
    </p>
    <p class="textMaterie">
      Nel 69 gli operai diedero una mano agli studenti per non far declinare il loro progetto come nel resto dell’Europa.  Il tutto iniziò con scioperi spontanei e improvvisi nella fabbrica fiat senza il controllo sindacale.  In prima linea c’erano gli operai meno qualificati e spesso immigrati dal meridione, che vollero fare un’assemblea con gli studenti.  Si raggiunse il massimo dello scontro quando il 3 luglio, grazie a uno sciopero generale cittadino, gli operai torinesi affrontarono per 24 ore la polizia.  Il conflitto riprese in autunno con il licenziamento di oltre 5 milioni di operai, questo periodo venne chiamato “autunno caldo” e segna il massimo scontro sociale in Italia dopo la guerra.
      <br>I lavoratori chiedono che il salario sia svincolato dalla produttività.
      <br>Il 12 dicembre a Milano una bomba venne messa una bomba nella banca nazionale dell’agricoltura che uccise 12 persone.  Da lì in poi lo stato accontentò molte richieste degli operai ma gli scontri non finirono, anzi si ampliarono fino a tutti i civili.

    </p>
  </div>

</div>

  <div class="all-covered" onmouseover="clickedButton('Inglese')">
    <div class="textInglese" id="Inglese">
      <h1 class="materia">
        <br>
        Inglese : The History of Hip-Hop
      </h1>
      <p class="sottoTitolo">
        What is the Hip-Hop ??
      </p>
      <p class="textMaterie">
        Hip hop is not only music, is a cultural movement born in the seventies.  It includes music, dance and graffiti.  Hip Hop music was born as a rebellion form because it gave voice to the people.  It was used like an anti-racism instruments, principally in the 90st.
      </p>
      <p class="sottoTitolo">
        When was it born and what were its beginnings?
      </p>
      <p class="textMaterie">
        Hip-hop was born in 1973 from a Jamaican immigrate, DJ Kool Herc.  He was one of the most popular New York DJs, he played in block parties and he combined reggae disk with funk and rock but new Yorkers did not love reggae music.
        <img src="immages/Italiano/08.jpg" border="1" align="right" height="280" width="200">
        <br>He saw that those who danced preferred the pieces with more percussion.  Than Herc has started to use mixer to amplify percussion.
        <br>As in Jamaica the bases were accompanied by performer who spoke while playing the music, these speaker was called MC.
        <br>Initially they introduced the insiders but later they began to improvise texts, often humorous.
        <br> While even the writing was catching on.  It served to give an identity to its people, they saw the city like a life space where they express their identity.
        <br> In  the 90st the hip-hop culture has overtaken the American barriers coming out all over the world.
        <br> The influences are many, for example the styles resemble the toasting of the Jamaican songs.
      </p>
      <p class="sottoTitolo">
        What makes up this culture?
      </p>
      <p class="textMaterie">
        The hip-hop has 5 principal elements:
      </p>
      <ul class="textPuntato" style="margin-top: -4%">
        <li>
          MCing or Rap:
          <br>The MC entertains the public with his talent.  The first real MC was Coke La Rock.
          <br>An important rap discipline is the battle.  Two MC fight with rhymes and beat the opponent by diminishing.  The approval is evaluated by skills, used insults and by the involvement.
        </li>
        <li>
          Hip Hop Music
         <br> Hip hop music is characterized by music and author’s text.  Rapping was the equivalent of Jamaican toasting.  Hip Hop beat was an isolation of the breaks (only percussion) in the Jamaican music.
        </li>
        <li>
          DJing
          <br>DJing is the discipline practiced by the DJ that create music mixing songs.  First Hip Hop dj was Kool Herc that isolate break from a Jamaican song.  After they added scratch made with the movement of a moving vinyl.
          <br>Dj use 2 record player connected to a mixer, that mixer is connected to an amplifier and to many speakers.  The dj can play with two albums creating a unique sound.  the DJ should not be confused with the producer because the dj is a live performer.  initially the DJs were the protagonists of the music.
        </li>
        <li>
          Writing is used to indicate graffiti.
          <br>Graffiti was used to label a crew, principally in the new York’s palaces walls but later they are extended in the New York’s subways.
          <img src="immages/Italiano/09.jpg" border="1" align="right" height="280" width="200">
          <br>First kind of subways’ graffiti was signatures, called tag, made with spray paint.  after the artist started to create big 3d letters with shadows, colour effects, etc.
          <br>With the passage of time, writing became more famous.
          <br>In 1990, the book Subway Art, has amplified the writing culture, and the world has imitated that culture.
        </li>
        <li>
          B-boying
          <br>The B-boying is a dynamic dance style.  It includes all hip hop dance style, from breakdance to new style.
          <br> Breaking is the first Hip Hop dance Style.
          <br>The new dance style come from the break dance but it’s danced principally standing comparing to the break dance where is practiced on the ground.  in the 80s it was very common to see dancers in basketball courts practicing break dance with a portable radio.
        </li>
        <li>
          Beat Boxing
          <br>It represents the drums made with the voice.  So the skill to create beat with his voice.  The beat box name arrived from first drum machine called beatbox.
          <br>In the 90st beat-box has become popular thanks to fat boy and the internet.  Internet has helped this art with the website “Humanbeatbox.com” that made this discipline known in the world.
        </li>
      </ul>
      <p class="sottoTitolo">
        Hip-Hop phases
      </p>
      <p class="textMaterie">
        We can split the hip hop in 3 phases:
      </p>
      <ul class="textPuntato" style="margin-top: -4%">
        <li>
          Old School Hip Hop where we find the hip hop fathers like Afrika Bambaataa that has made known the hip hop culture.
        </li>
        <img src="immages/Italiano/10.jpg" width="200" height="200" border="1" align="right">
        <li>
          Golden age where hip hop was mixed to other genres and rappers rap on the beat.  The most famous was the Rapcore, a mixing from rap and rock.  First Rapcore song was “Walk this way” of Aerosmith.  this song has achieved a resounding success climbing all the charts
        </li>
        <li>
          New Wave, that comes till today.  We have new musical stiles like Hardcore, Gangsta Rap, and “Bling”.  In this period the texts aren’t important.  There are used to offend rival crews.  In the 2000 there are new skills like extrabeat and house rap, and the beats are changed from the electronic music.  Rap music has made itself known a lot at this time thanks to artist like Eminem, 50 cent, dr.  Dre that brought rap all over the world.
        </li>
      </ul>
    </div>
  </div>

<div class="all-covered" onmouseover="clickedButton('Sistemi')">
  <div class="textSistemi" id="Sistemi">
    <h1 class="materia">
      Sistemi: dall’analogico al digitale, musica elettronica e il campionamento
    </h1>
    <p class="textMaterie">
      Inizialmente il suono sfruttava un sistema analogico per la produzione e riproduzione di brani.  Vi ricordate i vecchi amplificatori di segnale a valvole; ecco, quello è un amplificatore analogico.
    </p>
    <p class="sottoTitolo">
      Cos’è un segnale analogico, vantaggi e svantaggi
    </p>
    <p class="textMaterie">
      Un segnale analogico è un’onda sinusoidale (chiamata onda sonora) che ne determina la grandezza fisica.  Un’onda analogica può avere un numero infinito di valori, ciò significa che un dato può avere una definizione più ampia confronto al segnale digitale, ma ci saranno molti disturbi perché è facilmente influenzabile.
      <img src="immages/Italiano/11.jpg" border="1" align="right" width="300" height="180">
      Il fruscio di sottofondo è l’esempio tipico di disturbo derivante dal segnale analogico.
    </p>
    <p class="sottoTitolo">
      Cos’è un segnale digitale, vantaggi e svantaggi
    </p>
    <p class="textMaterie">
      Un segnale digitale è un segnale trasmesso tramite una sequenza di bit.  Come possiamo capire il disturbo è praticamente nullo perché il segnale avrà solamente 2 valori, 0 e 1; ma i dati passanti per un cavo digitale saranno molti più confronto ai dati passanti per un segnale analogico.
    </p>
    <p class="sottoTitolo">
      Un po’ di storia e i fattori predominanti della digitalizzazione
    </p>
    <p class="textPuntato">
      La riproduzione analogica dei brani iniziò con l’invenzione del fonografo di Edison dove il suono veniva registrato su un cilindro di latta.  Esso serviva sia per registrare che per riprodurre musica.
      Successivamente esso venne evoluto e divenne il Grammofono (sviluppato da Berliner).  La musica veniva riprodotta su dischi in vinile; questo supporto musicale fece la storia infatti, per la sua qualità sonora, viene usato anche oggi.
      <img src="immages/Italiano/12.jpg" border="1" align="right" height="280" width="200">
      Un altro importante strumento che fece da predecessore alla musica digitale furono le musicassette.  Essa andava inserita in un mangia nastri e poteva sia riprodurre che registrare musica, grazie ad essa vennero creati i primi impianti hi-fi e il primo concetto di musica portatile grazie ai walkman.
      Il digitale nacque grazie ai CD e alla sua enorme potenzialità sotto il punto di vista sonoro perché rimuoveva tutti i fruscii quando si riproduceva l’audio ad alto volume.
      Ma l’analogico si utilizza tutt’oggi.  La maggior parte degli strumenti musicali sfruttano la tecnologia analogica, quando sentite in una canzone uno strumento musicale con suoni “classici”, quali chitarre acustiche, piani a coda, batteria, ecc.  il suono è stato campionato da uno strumento analogico.  Il campionamento è una tecnica che consiste nella registrazione di tanti segnali analogici spezzettati e trasformati in codice binario che potrà essere interpretato da una macchina.
      Il campionamento avviene tramite 3 parametri:
    </p>

  <ul class="textPuntato">
    <li>
      Numero canali: dove il segnale può essere indirizzato tramite un canale (mono) o più canali (stereo), ovviamente più canali vengono utilizzati e più sarà pesante il file finale;
    </li>
    <li>
      Risoluzione: che consiste nel numero di bit utilizzati per memorizzare il campione, più bit saranno utilizzati più peserà il campione, ma con una maggiore qualità;
    </li>
    <li>
      Frequenza di campionamento: che indica il numero di campioni memorizzati ogni secondo.
    </li>
  </ul>
    <p class="textMaterie">
      Un altro fattore predominante nella musica elettronica è la compressione.  Esso determina 2 fattori molto importanti nella musica, quali peso e qualità.
      <br>I compressori possiamo suddividerli in 2 grandi gruppi:
    </p>
    <ul class="textPuntato">
      <li>
        Lossy: compressione di dati piuttosto bruta che porta alla perdita di informazioni, ne fa parte il formato di compressione più famoso, l’mp3;
      </li>
      <li>
        Lossless: ha una compressione piuttosto dolce, non perde informazioni ma il dato sarà più pesante; i formati più famosi sono .wma, .m4a.
      </li>
    </ul>
  <p class="sottoTitolo">
    Musica elettronica e chiptune
  </p>
  <p class="textMaterie">
    Uno dei primi generi musicali nati grazie al digitale è la musica elettronica.  Essa è un genere composto principalmente da suoni, campionati e non, inseriti in un DAV (software di produzione musicale) e successivamente fatti suonare insieme, come se fosse un’orchestra.
    <br>Uno delle prime radici della musica elettronica, senza l’utilizzo di campioni, fu la chiptune.
    <br>Essa è un tipo di musica in cui il suono viene sintetizzato in tempo reale dal chip sonoro di un pc o una console.  Il maggior successo lo ha raggiunto nei primi anni novanta quando i chip sonori erano il metodo più comune per generare musica.  Dato il mezzo limitato, molti compositori crearono strumenti elettronici e spartiti specifici, creando una combinazione sonora sviluppata dall’ampiezza dell’impulso che sfruttavano gli arpeggi.
    <img src="immages/Italiano/13.jpg" border="1" align="right" width="300" height="240">
    Tutto questo è dovuto alla scarsa potenza dei primi chip sonori dove potevano controllare solamente pochi canali, quindi poche tonalità e rumori; il tipo di suono emesso potava risultare molto fastidioso all’orecchio per chi non è abituato a questo tipo di suoni.  Uno dei sintetizzatori più conosciuti ed evoluti era il Commodore Amiga, con un sintetizzatore basato su un campionatore.  I software per Amiga, chiamati “tracker”, ispirò molti possessori di computer di creare musica.  Questo tipo di musica veniva usato molto nel campo dei videogiochi.  Venivano utilizzati molto dal Sega Mega Drive e dalla Nintendo come colonna sonora della loro musica.
  </p>

  </div>
</div>




    <script type="text/javascript" src="stili/js/navBar.js"></script>
  </body>
</html>
