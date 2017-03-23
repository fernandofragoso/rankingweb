# Ranking Application

### About

Sinatra Ranking API application

### Installing

Installation:

    bundle install

Starting the server:

    shotgun

### Models

* Player
    * *string* name
    * *string* phone
    * *string* mail

* Championship
    * *string* title
    * *ChampionshipType* type
    * *array Player* players
    * *date* startDate
    * *Player* champion
    * *Player* runnerUp
    * *boolean* validPoints

* Group
    * *string* name
    * *integer* order
    * *array Player* players
    * *Championship* championship

* Match
    * *Player* playerOne
    * *Player* playerTwo
    * *Round* round
    * *Score* scorePlayerOne
    * *Score* scorePlayerTwo
    * *Championship* championship
    * *integer* winner
    * *Place* place
    * *date* date

* Round
    * *string* name
    * *string* abbreviation
    * *integer* order
    * *integer* winnerPoints
    * *integer* looserPoints

* Score
    * *integer* setOne
    * *integer* setTwo
    * *integer* setThree
    * *boolean* wo

* Place
    * *string* name
    * *string* address
    * *Surface* surface

* Surface
    * *string* name

* ChampionshipType
    * *Round* startingRound
    * *boolean* groups
    * *boolean* drawB
