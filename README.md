# Marvel+
![de49644a-8646-45ed-8301-59cfb15f5bfb](https://user-images.githubusercontent.com/68944432/171650072-06fe0915-45af-4f00-acbc-044d34a1f1ea.jpg)

# Projektjournal
## Informieren
### Ziel
Unser Ziel ist es eine Webapplikation zu machen, welche im Hintergrund eine Datenbank hat, die unsere User Daten und Filme abspeichert. User Programm sollte dem User die Möglichkeit geben eine Übersicht zu erhalten über die beliebtesten Marvel Filme.

Damit wir eine Datenbank-Anbindung machen könnnen mussten wir zuerst recherchieren, wie man die dependencies für eine MariaDB konfiguriert. Als nächstes war noch unklar, wie die Repository mit Hilfe von Querys Datenbank abragen machen kann. Die nächste Sache, die ausserdem geklärt werden musste, wie wir unsere Datenbank aufbauen werden. Wie folgt werden unsere Entity's aussehen:

| User || Film || Actor || Film_Actor
| ------------- || -----------|| ---------- || -------------- |
| id `int`  || filmid `int` || actorid `int` || id `int` |
|  firstname `string`  || name `int` || age `int` || actor_actor_id `int` |
| lastname `string` || image `string` || firstname `string` || film_film_id `int` |
| email `string` || video `string` || lastname `string` |
| age `int` || selected `boolean` || img `string` |
| password `string` || actorsIDFS `int` |
| lastlogin `localdatetime` || budget `double`

| Film |
| ---- |
| filmid `int` |
| name `string` |
| image `string` |
| video `string` |
| selected  `boolean` |
| actorsIFDS `int` |
| budget `double` |

| Actor |
| ---- |
| actorid `int` |
| age `int` |
| firstname `string` |
| lastname `string` |
| img  `string` |

| Film_Actor |
| ---- |
| id `int` |
| actor_actor_id `int` |
| film_film_id `int` |

## Planen
### ToDo
- Backend (Springboot + Docker MariaDB) @Giuliano
1. Model
2. Controller
3. Repository
4. Services 
5. Docker + MariaDB
- Frontend @Anthony
1. Login & Register View
2. Home View
3. Filmansicht
4. Schauspieleransicht

### Aufteilung:
Zuerst haben wir eine Liste der zu erledigen Aufgaben erstellt. Auf GitHub gibt es die Möglichkeit, Task zu erstellen und in verschiedene Abteile zu verschieben. Die Aufgaben werden wir uns jeweils während den Lektionen aufteilen, sodass es später keine Konflikte gibt beim mergen

### Zeitaufwendung
Für die Erstellung eines Controllers rechnen wir mit einer halben bis einer Stunde. Die Views werden wahrscheinlich mehr Zeit in Anspruch nehmen, wodurch wir es auf eine Modul Tag schätzen.
## Entscheiden
Wir nutzen MariaDB für eine. Für den User wird jeder Username unique sein. Als Webframework nutzen wir spring boot. Als Version Control System haben wir uns für Github entschieden, da wir so gemeinsam an einem Projekt arbeiten können und man kann es einfach mit IntelliJ nutzen.
## Realisieren
### Backend
> Giuliano Gianola

### Frontend
> Anthony Peña Vargas

#### Login
Für das Frontend habe ich mit der Loginpage begonnen. Hier habe ich zuerst die Struktur mit HTML gemacht und danach habe ich ein CSS geschrieben. Ich habe die Skizze, die wir gemacht haben zur Hilfe genommen. Damit sich die Loginpage so verhaltet, wie ich es wollte, habe ich noch JavaScript reingemacht. Mit dem JavaScript habe ich den Knopf und das Inputfeld deaktiviert, wenn ich auf submit klicke. Ich habe hier auch gemacht, dass sich der Button aktivieren sollte, wenn ich alle Felder ausgefüllt habe. Im PostMapping wird dann noch überprüft, ob dieser User existiert, indem es ein Request auf unser Backend schickt. Wenn das gleich ist, dann wird ein neues Cookie erstellt. Der Wert besteht aus der ID des Users und mit einer Signatur, dass beweist, dass dieses Cookie vom Server ausgestellt wurde. Man wird weitergeleitet zur Indexseite. Wenn man ein güliges Cookie hat, dann kommt man nicht mahr auf die Loginpage.

#### Register
In der Loginpage habe ich ein Link zu der Registerpage gemacht. Dieses musste ich auch machen. Ich habe zuerst die View gemacht. Danach habe ich geschaut, wie es aussieht. Hier ist mir aufgefallen, dass ich noch einpaar Klassen verwenden kann, die ich für die Loginpage angefertigt habe. Also habe ich einfach diese im richtigen Element referenziert. Danach sah die Seite schon gut aus. Hier wird auch der submit-button ausgestellt, bis ich alle Felder ausgefüllt habe. Ich habe die Request auf eine Service Klasse verschoben. Also kriege ich jetzt alles aus dieser. Um mich zu registrieren, kann ich einfach die Register Methode ausführen. Dort drin wird ein POST-Request an das Backend geschickt und danach wird die Login Methode ausgeführt. Also wird man zu schluss noch eingeloggt. Nach dem Login kommt man auf die Index Seite. Wenn man eingeloggt ist, kommt man nicht auf die Registerpage.

#### Logout
Wenn man auf die logout Route geht, dann wird man ausgeloggt. Das passiert indem das Cookie gelöscht wird. Wenn man ausgeloggt ist, kommt man auf die index Seite.

#### Indexpage
Auf der Indexseite werden alle Filme angezeigt. Hier sieht man immer das Poster. Dieses hat ein dünklereres Layout und einen Titel drauf. Wenn ich drüber hovere, dann wir ein roter Rand angezeigt. Wenn ich draufklicke, komme ich auf die Filmansicht. Auf die Indexseite komme ich nur wenn ich eingeloggt bin. Um alle Filme anzuzeigen, habe ich ein Request im Backend gemacht. Hier habe ich eine Liste mit Filmen bekommen. Die Filminformationen, wurden in eine Modelklasse gespeichert. Also habe ich eine Liste mit dieser Modell Klasse bekommen. Diese Modell Klasse habe ich im Frontend erstellt. Um sagen zu können, dass die response zu einem Objekt von dieser Klasse gespeichert werden sollte. Ich konnte diese dann im Controller aufrufen und dem Template übergeben. Ich konnte dann mithilfe eines each loops alle Flme anzeigen lassen.

#### Detailansicht Film
Wenn ich auf einen Film draufdrücke, dann komme ich auf die Detailübersicht. Hier werden Informationen zum Film angezeigt. Hier findet man zu oberst einen Trailer. Danach findet man alle Schauspieler, die in diesem Film mitspielen. Danach findet man eine neue weitere Informationen, so wie die Kosten des Films und welches Rating dieser Film hat. Ich habe diese Ansicht ebenfalls mit Thymeleafs gemacht. Hier habe ich für den einzelnen Film eine Service Methode gemacht, die ein Request zu get Film sendet. Für die Actors habe ich einfach alle Actors genommen, da im Backend noch nichts existiert hat, mit dem ich alle Schauspieler zu einem bestimmten Film holen kann. Der Trailer ist Hardgecoded, da in der Datenbank auch nichts existiert, wo der Link zum Video gespeichert wird. Die Informationen, konnte ich einfach aus dem Film Objekt holen. Diese Seite ist auch nur aufrufbar, wenn man eingeloggt ist.

#### Detailansicht Actor


## Kontrollieren
## Auswerten

# Reflexion 
## 02/06/2022
>Giuliano Gianola
#### Wo wurde nicht auf meine Meinung eingegangen 
#### Wobei konnte ich mich durchsetzten
#### In welchen Punkten war sich die Gruppe einig. 
#### Auf was bin ich stolz (oder eben nicht)


>Anthony Pena Vargas
#### Wo wurde nicht auf meine Meinung eingegangen
Wir haben diskutiert, welches DBMS wir nutzen wollen, da ist nicht auf meiner Meinung eingegangen.
#### Wobei konnte ich mich durchsetzten
Wir machen die Information, dass jemand eingeloggt ist in ein Cookie. Hier konnte ich mich durchsetzen.
#### In welchen Punkten war sich die Gruppe einig.
Wir waren uns einige, wie wir das Readme File gestalten wollen und auf was wir achten sollten.
#### Auf was bin ich stolz (oder eben nicht)
Ich bin sehr stolz auf die Tabellen und Algemein, wie die Dokumentation aussieht.

## 09/06/2022
>Anthony Peña Vargas
#### Wo wurde nicht auf meine Meinung eingegangen
Heute gab es nichts wo nicht auf meine Meinung eingegangen wurde, da Giuliano heute krank war.
#### Wobei konnte ich mich durchsetzen
Ich habe komplett freie Hand im Frontend
#### In welchen Punkten war sich die Gruppe einig?
Da ich heute alleine war, gab es kein Punkt, wo wir uns nicht einig sein konnten.
#### Auf was bin ich stolz?
Ich bin stolz auf meine Login-page, die ich gemacht habe.

## 16/06/2022
> Giuliano Gianola
#### Wo wurde nicht auf meine Meinung eingegangen
Wir haben miteinander diskutiert, welche Technologie wir brauchen, um Api Request zu machen. Ich habe ihm den Vorschlag gemacht Axios zu brauchen. Jedoch ist er nicht auf meine Meinung eingegangen und hat etwas anderes benutzt. Was jedoch am Ende sehr gut funktioniert hat. 

#### Wobei konnte ich mich durchsetzen
Ich konnte mich durchsetzten, dass wir die application.properties nicht verändern, da es bis jetzt immer sehr gut funktioniert hat. 
#### In welchen Punkten war sich die Gruppe einig
Wir waren uns einig, dass Anthony das Frontend macht und ich weiter am Backend schreibe. 
#### Auf was bin ich stolz (oder eben nicht)
Ich war darauf stolz, dass mein Backend sehr gut mit seinem Frontend funktioniert hat. Wir konnnten erfolgreich alles miteinander verbinden. 

## 16/06/2022
> Anthony Peña Vargas
#### Wo wurde nicht auf meine Meinung eingegangen
Eigentlich gab es nichts wo nicht auf meine Meinung gehört wurde.
#### Wobei konnte ich mich durchsetzen
Ich habe beim Frontend eigentlich komplette Kontrolle und ich konnte Giuliano davon überzeugen in die Response noch die UserID mitzugeben.
#### In welchen Punkten war sich die Gruppe einig
Wir waren uns einig 
#### Auf was bin ich stolz (oder eben nicht)
Ich finde es gut, dass mein Javascript die Request richtig senden konnte und das es die Response richtig verarbeitet hat. Ich bin nicht so stolz, dass ich heute kaum weiter gekommen bin.

## 23/06/2022
> Giuliano Gianola
#### Wo wurde nicht auf meine Meinung eingegangen
Ich wollte nicht, dass man eine Zwischentabelle macht für Actor und Film. Jedoch konnte mich Anthony dafür überzeugen, worauf ich kurze Zeit später eine Tabelle erstellt habe. Diese Tabelle wird dabei helfen mehrere Actors einem Film zuzuordnen. 

#### Wobei konnte ich mich durchsetzen
Ich konnte mich durchsetzen, dass wir bei unserem Login-System eine Email-Adresse verwenden und keinen Usernamen. 

#### In welchen Punkten war sich die Gruppe einig
Wir waren uns einig, dass wir die Request nicht auf in einem Javascript-File machen, sondern in Spring. Dabei können wir Angriffe von aussen schützen. Damit können wir ausserdem Thymleafs benutzen, was unser Leben sehr vereinfacht. 

#### Auf was bin ich stolz (oder eben nicht)
Ich bin stolz, dass ich das Problem mit auto_increment lösen konnte. Das hat die Post-Request einfacher gemacht, da wir nicht direkt in der Datenbank die Auto_increments einstellen mussten. Nach einem Drop-create wären diese Einstellungen wieder weg. 

## 23/06/2022
> Anthony Peña Vargas
#### Wo wurde nicht auf meine Meinung eingegangen

#### Wobei konnte ich mich durchsetzen
Ich konnte mich durchsetzen, dass ich mein Frontend ohne Vue.js mache und ich anstelle das Login in Spring boot schreibe. Ich konnte mich auch durchsetzen, bei Zwischentabelle für den FilmActor.
#### In welchen Punkten war sich die Gruppe einig
Wir waren uns einig, dass wir die Requests nicht über Javascript machen, sondern dass wir es im Controller mit Spring boot machen. Dabei können wir verhindern, dass jemand das Login vermeidet, indem er Javascript ausstellt oder den Code verändert.
#### Auf was bin ich stolz (oder eben nicht)
Ich war stolz, dass ich es geschafft habe ein Loginsystem zu programmieren und das es sehr gut funktioniert hat. Ich war nicht so stolz, dass beim mergen meine Änderungen verloren gegangen sind und ich sie nicht mehr rückgängig machen konnte.
