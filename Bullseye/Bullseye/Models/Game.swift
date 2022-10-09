//
//  Game.swift
//  Bullseye
//
//  Created by R. Amissah on 29/09/2022.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100) //random input generator
    var score = 0
    var round = 1
    
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
    }
    
    // subtract slider from target, if target value is bigger...else vice versa
}
