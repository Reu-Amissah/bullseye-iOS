//
//  Game.swift
//  Bullseye
//
//  Created by R. Amissah on 29/09/2022.
//

import Foundation

struct LeaderboardEntry {
    let score: Int
    let date: Date
}

struct Game {
    var target = Int.random(in: 1...100) //random input generator
    var score = 0
    var round = 1
    var leaderboardEntries: [LeaderboardEntry] = []
    
    init(loadTestData: Bool = false) {
        if loadTestData {
            leaderboardEntries.append(LeaderboardEntry(score: 80, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 20, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 150, date: Date()))
            leaderboardEntries.append(LeaderboardEntry(score: 30, date: Date()))
            
        }
    }
    
    func points(sliderValue: Int) -> Int {
        var bonus: Int = 0
        let difference = abs(target - sliderValue)
        
        if difference == 0 {
            bonus = 100
        }
        else if difference <= 2 {
            bonus = 50
        }
        else {
            bonus = 0
        }
        
        
        return 100 - difference + bonus
        //or //  100 - abs(target - sliderValue)
    }
    
    mutating func startNewRound (points: Int){
        self.score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderboard(point: points)
        
    }
    
    mutating func restart () {
        self.score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
    mutating func addToLeaderboard(point: Int) {
        leaderboardEntries.append(LeaderboardEntry(score: point, date: Date()))
        leaderboardEntries.sort { $0.score > $1.score }
        
    }
    
    // subtract slider from target, if target value is bigger...else vice versa
}
