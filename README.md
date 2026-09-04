#DESCRIZIONE CONTENUTO dispense_QP

Dispense personali di Meccanica Quantistica, scritte in LaTeX durante il percorso di studi in Ingegneria Fisica al Politecnico di Torino (corso: Quantum Physics; docente: Vittorio Penna, DISAT).

Stato: in aggiornamento continuo — capitoli 1-8 completi, capitolo 9 (Momento Angolare) in corso di stesura. Ultimo aggiornamento: settembre 2026.

Struttura del progetto
Il documento è organizzato in modo gerarchico e modulare:
.
├── dispense_QP.tex          # file principale: include i singoli capitoli e gestisce preambolo, stile, indice
├── capitoli/          # un file .tex per ciascun capitolo
│   ├── cap1_fine_fisica_classica.tex
│   ├── cap2_operatori_commutatore.tex
│   ├── ...
│   └── cap9_momento_angolare.tex
├── dispense_QP.pdf     # versione compilata, sempre allineata all'ultimo aggiornamento
└── .gitignore
dispense_QP richiama ogni capitolo tramite \input{} e \include{}, così ogni argomento resta in un file separato, facile da modificare in modo indipendente.

Indice dei contenuti
1. La fine della fisica classica — crisi della fisica classica, ansatz di Schrödinger, equazione di Schrödinger, interpretazione di Copenhagen
2. Gli operatori fisici, la quantizzazione canonica e il commutatore
3. L'evoluzione dell'informazione quantistica — operatore di evoluzione temporale, particella libera, Teorema di Ehrenfest
4. Gli spazi di Hilbert — lo spazio ℒ², basi fondamentali, valori di aspettazione
5. Proprietà degli operatori hermitiani e equazioni agli autovalori
6. Il caso dell'oscillatore armonico — algebra generatrice dello spettro, formula di Rodrigues
7. Alcuni esempi di problemi quantistici — potenziale a gradino, barriera di potenziale, effetto tunnel
8. Il principio di indeterminazione e le sue conseguenze — disuguaglianza di Robertson, operatori commutanti, stati coerenti
9. Il momento angolare (in corso)

Note
Le dispense nascono come materiale di studio personale, poi rifinito ed esteso anche in ottica di supporto alla didattica (es. attività di tutoraggio). Eventuali imprecisioni possono essere segnalate aprendo una issue. 
