# rankingweb
Ranking Application

## Models

* Item Player
    * Item *string* name
    * Item *string* phone
    * Item *string* mail

* Item Championship
    * Item *string* title
    * Item *ChampionshipType* type
    * Item *array Player* players
    * Item *date* startDate
    * Item *Player* champion
    * Item *Player* runnerUp
    * Item *boolean* validPoints

* Item Match
    * Item *Player* playerOne
    * Item *Player* playerTwo
    * Item *Round* round
    * Item *Score* scorePlayerOne
    * Item *Score* scorePlayerTwo
    * Item *Championship* championship
    * Item *integer* winner
    * Item *Place* place
    * Item *date* date

* Item Round
    * Item *string* name
    * Item *string* abbreviation
    * Item *integer* order
    * Item *integer* winnerPoints
    * Item *integer* looserPoints

* Item Score
    * Item *integer* setOne
    * Item *integer* setTwo
    * Item *integer* setThree
    * Item *boolean* wo

* Item Place
    * Item *string* name
    * Item *string* address
    * Item *Surface* surface
    
* Item Surface
    * Item *string* name
