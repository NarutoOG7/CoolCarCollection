//
//  Car.swift
//  CarCollectionApp
//
//  Created by Spencer Belton on 4/28/21.
//

import UIKit

struct Car {
    

    let cars : [CarBrain] = [
        CarBrain(mainImage: "mysteryMachine", title: "Mystery Machine", details: "Help solve crimes with the grooviest of gangs!", crew: "Fred, Velma, Daphne, Shaggy, and Scooby Doo", topSpeed: "75 mph", goal: "Catch these villains and win some Scooby Snax!", firstSubImage: "monster1", secondSubImage: "monster2", thirdSubImage: "monster3"),
        CarBrain(mainImage: "smilingMcQueen" , title: "Lightning McQueen", details: "Race around the track with the fastest out there!", crew: "Mater, Guido, Luigi, Doc", topSpeed: "198 mph", goal: "Beat these racers and win the Piston Cup!", firstSubImage: "competitor1", secondSubImage: "competitor2", thirdSubImage: "competitor3"),
        CarBrain(mainImage: "naruto", title: "Naruto", details: "Train with Naruto and other ninja to run faster than cars!", crew: "Naruto, Rock Lee, Sasuke", topSpeed: "FAST", goal: "HOKAGE", firstSubImage: "naruto", secondSubImage: "naruto", thirdSubImage: "naruto")
    ]
}

    
