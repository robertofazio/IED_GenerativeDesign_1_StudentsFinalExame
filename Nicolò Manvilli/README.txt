------------------------------
	TERRAFORMER
	© 2017 Nicolò Manvilli, tutti i diritti riservati
------------------------------

	Installazione interattiva pensata per l'utilizzo con un Theremin ( https://it.wikipedia.org/wiki/Theremin ).


	------------------------------
		Utilizzo:
	------------------------------

		Ci sono due versioni del programma:
			- "Terraformer" è la versione predefinita.
			- "Terraformer_weak_cpu" è una versione preconfigurata per l'utilizzo con macchine dalle performance limitate (o schermi pc dalle dimensioni ridotte)

		Per un test rapido:
		1. Lanciare il programma.
		2. Cantare nel microfono del pc.

		Per un corretto utilizzo:
		1. Collegare un theremin (tramite apposito cavo/scheda audio).
		2. Impostare il theremin come input audio predefinito del pc.
		3. Per poter udire il theremin, impostare la ripetizione dell'input in output, oppure collegare il theremin ad un amplificatore esterno grazie ad un cavo sdoppiatore.
		4. Lanciare il programma.
		5. Suonare il theremin.


	------------------------------
		Descrizione tecnica:
	------------------------------

		Il programma è pensato per interfacciarsi con un theremin, ma dovrebbe dare buoni risultati con qualunque strumento dal timbro sufficientemente "pulito" (forma d'onda sinusoidale).

		L'input sonoro viene scomposto nel suo spettro di frequenze.
		Ogni spettro viene rappresentato da un insieme di punti (come in un grafico cartesiano).
		Unendo questi punti tra loro, e collegandoli anche ai punti degli spettri precedente e successivo nel tempo, si ottiene una rappresentazione tridimensionale del suono nel tempo, sotto forma di RILIEVI su un piano.

		Il suono in un dato istante viene ulteriormente rappresentato da una cerchio (il SOLE), il cui colore va dal rosso al verde a seconda della frequenza prevalente nell'input sonoro (più bassa o più alta), e la cui dimensione dipende dal volume di questa frequenza.

		Altri elementi sono: l'immagine tratta dalla WEBCAM, puntini bianchi generati casualmente (STELLE), la LUMINOSITA' del sole che viene applicata alla scena.

	------------------------------
		Metafora:
	------------------------------

		L'utente compare sotto forma di immagine nel cielo notturno, e diventa protagonista semi-divino della scena.

		Il SUONO da lui prodotto tramite lo strumento incarna il suo potere creativo, e viene rappresentato anche visivamente dal SOLE.

		Questo SOLE genera RILIEVI su un paesaggio (che potremmo definire "alieno"), nello stesso modo in cui il suono genera una melodia.

		I colori e il tappeto di stelle richiamano l'astronomia e la fantascienza, allo stesso modo del suono del theremin, spesso accostato nell'immaginario collettivo a Star Trek e simili.

	------------------------------
		Ispirazioni:
	------------------------------

		- 3D Terrain Generation by Daniel Shiffman: https://www.youtube.com/watch?v=IKB1hWWedMk
