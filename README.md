# Ranking Application

### About

Sinatra Ranking API application

### Installing

Installation:

    bundle install --without production

Starting the server:

    shotgun

#### Models

* Player
    * *string* name
    * *string* phone
    * *string* mail

* Tournament
    * *string* title
    * *array Player* players
    * *date* startDate
    * *Player* champion
    * *Player* runnerUp
    * *boolean* validPoints
    * *Round* startingRound
    * *boolean* groups
    * *boolean* drawB

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
    * *Court* court
    * *date* date

* Round
    * *string* name
    * *string* abbreviation
    * *integer* orderIndex
    * *integer* winnerPoints
    * *integer* loserPoints

* Score
    * *integer* setOne
    * *integer* setTwo
    * *integer* setThree
    * *boolean* wo

* Court
    * *string* name
    * *string* address
    * *Surface* surface

* Surface
    * *string* name
