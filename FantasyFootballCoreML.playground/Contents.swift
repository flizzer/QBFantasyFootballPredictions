import CreateML
import Foundation

let QBData = try MLDataTable(
    contentsOf: URL(fileURLWithPath: "/Users/bdavis/Documents/Development/FantasyFootballMachineLearning/QBFantasyGameDataTraining_fastai_NoPercentages.csv"))
let (trainingData, testingData) = QBData.randomSplit(by: 0.8, seed: 0)
let regressor = try MLRegressor(trainingData: QBData, targetColumn: "FantPt")
let metadata = MLModelMetadata(author: "Brian Davis", shortDescription: "Predict Fantasy Points for QBs", version: "1.0")
try regressor.write(to: URL(fileURLWithPath: "/Users/bdavis/Documents/Development/FantasyFootballMachineLearning/QBModel.mlmodel"), metadata: metadata)

//public static QBFantasyGame RyanVsPanthers = new QBFantasyGame
//{
//    GameNumber = "2",
//    //Date = DateTime.Parse("2012-09-09"),
//    Team = "ATL",
//    Opponent = "CAR",
//    Result = "W 31-24",
//    Position = "QB",
//    Inside20PassCompletions = 3f,
//    Inside20PassAttempts = 3f,
//    Inside20PassYards = 27f,
//    Inside20PassTouchdowns = 2f,
//    Inside20RushAttempts = 2f,
//    Inside20RushYards = 9f,
//    Inside20RushTouchdowns = 2f,
//    Inside10PassCompletions = 1f,
//    Inside10PassAttempts = 1f,
//    Inside10PassYards = 0f,
//    Inside10PassTouchdowns = 1f,
//    Inside10RushAttempts = 2f,
//    Inside10RushYards = 9f,
//    Inside10RushTouchdowns = 2f,
//    OffensiveSnapNumber = 62f,
//    OffensiveSnapPercentage = "98.4%",
//    DefensiveSnapNumber = 0f,
//    DefensiveSnapPercentage = "0.0%",
//    SpecialTeamsSnapNumber = 0f,
//    SpecialTeamsSnapPercentage = "0.0%",
//
//    Actual FantPt: 39.52
//    FantPt = 0
//
//};

class prediction {
    var gameNumber:Double = 2
    var date:String = "2012-09-09"
    var team:String = "ATL"
    var opponent:String = "CAR"
    var result:String = "W 31-24"
    var position:String = "QB"
    var inside20PassCompletions:Double = 3.0
    var inside20PassAttempts:Double = 3.0
    var inside20PassYards:Double = 27.0
    var inside20PassTouchdowns:Double = 2.0
    var inside20RushAttempts:Double = 2.0
    var inside20RushYards:Double = 9.0
    var inside20RushTouchdowns:Double = 2.0
    var inside10PassCompletions:Double = 1.0
    var inside10PassAttempts:Double = 1.0
    var inside10PassYards:Double = 0.0
    var inside10PassTouchdowns:Double = 1.0
    var inside10RushAttempts:Double = 2.0
    var inside10RushYards:Double = 9.0
    var inside10RushTouchdowns:Double = 2.0
    var offensiveSnapNumber:Double = 62.0
    var defensiveSnapNumber:Double = 0.0
    var specialTemsSnapNumber:Double = 0.0
}

