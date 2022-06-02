# Marvel+
![de49644a-8646-45ed-8301-59cfb15f5bfb](https://user-images.githubusercontent.com/68944432/171650072-06fe0915-45af-4f00-acbc-044d34a1f1ea.jpg)

# Projektjournal
## Informieren
### Ziel
Unser Ziel ist es eine Webapplikation zu machen, welche im Hintergrund eine Datenbank hat, die unsere User Daten und Filme abspeichert. User Programm sollte dem User die Möglichkeit geben eine Übersicht zu erhalten über die beliebtesten Marvel Filme.

Damit wir eine Datenbank-Anbindung machen könnnen mussten wir zuerst recherchieren, wie man die dependencies für eine MariaDB konfiguriert. Als nächstes war noch unklar, wie die Repository mit Hilfe von Querys Datenbank abragen machen kann. Die nächste Sache, die ausserdem geklärt werden musste, wie wir unsere Datenbank aufbauen werden. Wie folgt werden unsere Entity's aussehen:

| User |
| ------------- |
| id **int**  |
|  firstname **string**  |
| lastname **string** |
| email **string** |
| age **int** |
| password **string** |
| lastlogin **localdatetime** |



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

### Aufteilung:
Zuerst haben wir eine Liste der zu erledigen Aufgaben erstellt. Auf GitHub gibt es die Möglichkeit, Task zu erstellen und in verschiedene Abteile zu verschieben. Die Aufgaben werden wir uns jeweils während den Lektionen aufteilen, sodass es später keine Konflikte gibt beim mergen

### Zeitaufwendung
Für die Erstellung eines Controllers rechnen wir mit einer halben bis einer Stunde. Die Views werden wahrscheinlich mehr Zeit in Anspruch nehmen, wodurch wir es auf eine Modul Tag schätzen.
## Entscheiden
Wir nutzen MariaDB für eine. Für den User wird jeder Username unique sein. Als Webframework nutzen wir spring boot. Als Version Control System haben wir uns für Github entschieden, da wir so gemeinsam an einem Projekt arbeiten können und man kann es einfach mit IntelliJ nutzen.
## Realisieren
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
#### Wobei konnte ich mich durchsetzten
#### In welchen Punkten war sich die Gruppe einig. 
#### Auf was bin ich stolz (oder eben nicht)
