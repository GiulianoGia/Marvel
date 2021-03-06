# Marvel+
![de49644a-8646-45ed-8301-59cfb15f5bfb](https://user-images.githubusercontent.com/68944432/171650072-06fe0915-45af-4f00-acbc-044d34a1f1ea.jpg)

# Installation
Wenn man das Projekt geclont hat, kann man jetzt im Projektordner einfach diesen Befehl eingeben:
```
docker compose up
```
Hiermit wird ein Docker Compose erstellt mit einem Mariadb Container drin. In diesem befindet sich die Datenbank mit den Daten für die Applikation. Bevor man die Applikation starten kann muss man sicher stellen, dass dieser Container läuft.

# Projektjournal
## Informieren
### Ziel
Unser Ziel ist es eine Webapplikation zu machen, welche im Hintergrund eine Datenbank hat, die unsere User Daten und Filme abspeichert. User Programm sollte dem User die Möglichkeit geben eine Übersicht zu erhalten über die beliebtesten Marvel Filme.

Damit wir eine Datenbank-Anbindung machen könnnen mussten wir zuerst recherchieren, wie man die dependencies für eine MariaDB konfiguriert. Als nächstes war noch unklar, wie die Repository mit Hilfe von Querys Datenbank abragen machen kann. Die nächste Sache, die ausserdem geklärt werden musste, wie wir unsere Datenbank aufbauen werden. Wie folgt werden unsere Entity's aussehen:

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
Auf der Indexseite werden alle Filme angezeigt. Hier sieht man immer das Poster. Dieses hat ein dünklereres Layout und einen Titel drauf. Wenn ich drüber hovere, dann wir ein roter Rand angezeigt. Wenn ich draufklicke, komme ich auf die Filmansicht. Auf die Indexseite komme ich nur wenn ich eingeloggt bin. Um alle Filme anzuzeigen, habe ich ein Request im Backend gemacht. Hier habe ich eine Liste mit Filmen bekommen. Die Filminformationen, wurden in eine Modelklasse gespeichert. Also habe ich eine Liste mit dieser Modell Klasse bekommen. Diese Modell Klasse habe ich im Frontend erstellt. Um sagen zu können, dass die response zu einem Objekt von dieser Klasse gespeichert werden sollte. Ich konnte diese dann im Controller aufrufen und dem Template übergeben. Ich konnte dann mithilfe eines each loops alle Flme anzeigen lassen. Es hat aber nicht immer einwandfrei funktioniert, da ich am Anfang versucht habe, es mit der getForObject Methode vom RestTemplate bekomme. Das Problem war, dass ich eine Liste mit Objekten zurück kommt und es als Modell Klasse um die Objekte zu erstellen die Modell Klassen vom Backend verwendet hat. Das konnte ich aber lösen, indem ich die exchange Methode verwendet habe, die auch im RestTemplate Objekt beeinhaltet ist. Diese gibt mir eine ResponseEntity zurück. Hier konnte ich in den Spitzenklammern eine Klasse angeben. Ich habe List und in den Sptizenklammer der List Film angegeben. Ich konnte dann den body des Response in der Methode zurückgeben.

#### Detailansicht Film
Wenn ich auf einen Film draufdrücke, dann komme ich auf die Detailübersicht. Hier werden Informationen zum Film angezeigt. Hier findet man zu oberst einen Trailer. Danach findet man alle Schauspieler, die in diesem Film mitspielen. Danach findet man eine neue weitere Informationen, so wie die Kosten des Films und welches Rating dieser Film hat. Ich habe diese Ansicht ebenfalls mit Thymeleafs gemacht. Hier habe ich für den einzelnen Film eine Service Methode gemacht, die ein Request zu get Film sendet. Für die Actors habe ich einfach alle Actors genommen, da im Backend noch nichts existiert hat, mit dem ich alle Schauspieler zu einem bestimmten Film holen kann. Der Trailer ist Hardgecoded, da in der Datenbank auch nichts existiert, wo der Link zum Video gespeichert wird. Die Informationen, konnte ich einfach aus dem Film Objekt holen. Diese Seite ist auch nur aufrufbar, wenn man eingeloggt ist.
##### updated (30/06/2022)
Giuliano hat jetzt einen Endpoint gemacht, mit dem man zu einem Film eine Liste von Schauspielern bekommt geschrieben. Ich konnte also im Service eine neue Methode machen, diese sendet ein Request, mit der ich eine Liste zurückbekomme. Mit der Liste bin ich gleich umgegangen, wie die Liste mit der ich alle Filme geholt habe. Ich habe den Body ausgeben lassen. Dann habe ich im Controller noch das getAllActors zu getActorsToFilm geändert. Das hat aber nicht mehr funktioniert. Die Attribute wurden nicht mehr richtig aufgefüllt, sondern es wurde mit null ausgefüllt. Es wurde aber die richtige Anzahl von divs erstellt.

#### Detailansicht Actor

#### Suchfunktion
Wir wollten unseren Usern die Möglichkeit geben, nach Personen in unserer App zu suchen. Wir haben eine Methode entwickelt, inder man nach dem usernamen suchen kann und die entsprechenden Personen angezeigt werden. Bei Der Suche werden dann Usernamen, Email-Adressen und wann der User sich zuletzt eingeloggt hat. Diese Informationen sind sicher in unseren Datenbank gespeichert und niemand hat Zugriff auf diese Informationen ausser man hat einen Secret-Key. Bei falschen Suchanfragen, werden alle User angezeigt und nicht eine leere Liste. 


## Kontrollieren
Um unsere Applikation zu testen haben wir zurst alle Branches ins main gemerged, damit wir auch wirklich alles auf dem neuesten Stand hatten. Danach haben wir jede View uns angeschaut und Fehler sowie Verbesserungen aufgeschrieben. Diese haben wir dann in der letzten Lektion versucht zu verbessern. Hier eine Liste, was alles noch nicht geht:
Index:    - Manche Filme lassen sich nicht öffnen (man gelangt nicht auf die film page)
          - Konnten keine Filter Funktion einfügen für die Filme 
          
Search:   - Um alle User wieder anzuzeigen, muss man auf das Input-Field klicken und die Enter oder den dazu vorhergesehenen Button betätigen. 
Film:     - Schauspieler werden machnmal nicht korrekt angezeigt. (oder es sind immer die gleichen) 

## Auswerten
In den letzten Wochen haben wir sehr viel Zeit in dieses Projekt investiert. Leider konnten wir nicht alles realisieren, was wir eigentlich für dieses Projekt bestimmt haben. Jedoch sind wir sehr stolz auf das, was wir mit diesem Projekt erreicht haben. Als wir mit unserem Projekt angefangen haben, wussten wir dass unsere Idee grosses Potenzial hat. Zu beginn unseres Projektes haben wir ein ERD erstellt, wie unsere Datenbank aussehen soll. Das hat uns in den Anfangszeiten sehr viel Zeit und Ärger erspart. Jedoch hätte unsere Planung noch ein wenig detailierter sein können. Unsere Dokumentation haben wir dann jeweils im Zug geschrieben, da wir die Zeit in der Schule voll und ganz für unser Projekt witmen wollten. Durch unser relativ grosses Vorwissen, haben wir sehr viel Zeit sparen konnnen, wie wir unser Projekt umsetzten möchten. Das war für uns ein grosser Vorteil, da wir wussten, dass die jeweilige Person ihre Arbeiten sehr gut machen wird und konnten dadurch voll auf unsere Task konzentrieren. Bei der Frage, welche Technologien wir nutzten, waren wir uns sehr schnell einig. Unser Projekt hat uns beiden sehr viel Spass gemacht und wir konnten unseren Gedanken und Ideen freien lauf lassen. Wir wussten das es nicht einfach sein wird, jedoch wollten wir so viel wie Möglich aus diesem Projekt lernen und provitieren. Das schwerste an diesem Projekt war es das Login-System so zu gestalten, wie wir uns das vorgestellt haben. Dort hatten wir einige Probleme, konnten diese jedoch mit ein paar Tutorials gut lösen. Springboot und MariaDB haben uns nicht grosse Probleme bereitet. Die Anbindung im Frontend mit dem Backend ist sehr reibungslos gelaufen, was uns sehr verwundert hatte. Jedoch waren wir auch sehr dankbar darüber. :zany_face:. 

Zusammenfassung:
Das Projekt hat uns sehr viel Spass gemacht. Wir konnten sehr viel von der Arbeit lernen und ausprobieren. Meiner Meinung nach ist unser Endprodukt ein voller Erfolg. Wir hatten wenige bis gar keine Schwierigkeiten und unsere Zusammenarbeit ist reibunglos gelaufen. Jedoch würden wir das nächste Mal eine bessere Planung schreiben, da diese sehr kurz ausgefallen ist.

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

> Anthony Peña Vargas
#### Wo wurde nicht auf meine Meinung eingegangen

#### Wobei konnte ich mich durchsetzen
Ich konnte mich durchsetzen, dass ich mein Frontend ohne Vue.js mache und ich anstelle das Login in Spring boot schreibe. Ich konnte mich auch durchsetzen, bei Zwischentabelle für den FilmActor.
#### In welchen Punkten war sich die Gruppe einig
Wir waren uns einig, dass wir die Requests nicht über Javascript machen, sondern dass wir es im Controller mit Spring boot machen. Dabei können wir verhindern, dass jemand das Login vermeidet, indem er Javascript ausstellt oder den Code verändert.
#### Auf was bin ich stolz (oder eben nicht)
Ich war stolz, dass ich es geschafft habe ein Loginsystem zu programmieren und das es sehr gut funktioniert hat. Ich war nicht so stolz, dass beim mergen meine Änderungen verloren gegangen sind und ich sie nicht mehr rückgängig machen konnte.

## 30/06/2022
> Giuliano Gianola
#### Wo wurde nicht auf meine Meinung eingegangen?
Wir wussten nicht, wie wir das Problem mit den Bildern in der Datenbank lösen sollten. Wir hatten die Frage, ob es besser wäre diese in der Datenbank zu speichern oder einfach nur die url zu den Bildern. Wir haben uns dan entschieden nur die url abzuspeichern. 

#### Wobei konnte ich mich durchsetzen?
Ich konnte mich durchsetzten, dass wir eine Suchfunktion entwickeln möchten, wodurch man nach anderen Benutzern suchen kann. 

#### In welchen Punkten war sich die Gruppe einig
Wir waren uns einig, dass wir nicht direkt in den main Branch Änderungen schreiben, sondern in den dazu vohergesehen Branches. 

#### Auf was bin ich stolz (oder eben nicht)
Ich bin stolz, dass ich bereits für die Suchfunktion alles im Backend vorbereiten konnte. Nun müssen wir nur noch das Frontend schreiben. 

> Anthony Peña Vargas
#### Wo wurde nicht auf meine Meinung eingegangen


#### Wobei konnte ich mich durchsetzen

#### In welchen Punkten war sich die Gruppe einig
Heute waren wir uns einig, wie wir die Präsentation aufteilen und wie es weiter mit dem Projekt geht.


#### Auf was bin ich stolz (oder eben nicht)
Ich bin stolz darauf, dass unsere Präsentation so gut gelaufen ist.

## 07/07/2022
> Giuliano Gianola
#### Wo wurde nicht auf meine Meinung eingegangen?
In Vorletzte Woche hatten wir sehr viel Stress mit unserem Projekt, da ja nur noch eine Woche übrg ist. Wir wussten nicht genau, welche Funktionen wir noch in die App implementieren möchten und welche nicht. 

#### Wobei konnte ich mich durchsetzen?
Ich konnte mich durchsetzten, dass wir uns auf die Dokumentation noch fokusieren und nicht mehr gross neue Sachen versuchen in die App zu brinden. 

#### In welchen Punkten war sich die Gruppe einig
Ich und Anthony waren uns einig, dass wir am Ende nicht einen Filter für die Filme erstellen und die Forgot-Password funktion nicht mehr weiter verfolgen. 

#### Auf was bin ich stolz (oder eben nicht)
Ich bin stolz, dass wir unsere Planung noch von Grund auf besser strukturieren konnten. Damit man beim durchlesen eine bessere Übersicht hat. 

> Anthony Peña Vargas
#### Wo wurde nicht auf meine Meinung eingegangen


#### Wobei konnte ich mich durchsetzen
Ich konnte mich durchsetzen, dass man eine Profile Seite haben, die man in der Navbar daraufzugreifen kann.

#### In welchen Punkten war sich die Gruppe einig
Wir waren uns einig, dass wir eine Suchfunktion brauchen.


#### Auf was bin ich stolz (oder eben nicht)
Leider hat es mit dem password forgot nicht funktioniert, da es zu komplex geworden wäre.

