//
//  ExerciseService.swift
//  Snatch
//
//  Created by Perceval Park on 6/16/24.
//

import Foundation

struct ExerciseService {
    
   
    
    
    func getExercises() -> [Exercise] {
        return [
            Exercise(name: "Snatch", type: "Olympic", imageName: "snatchpic", starred: false, description: "Bar starts on the ground in the wide grip position. Bar moves from the ground directly to the overhead position without stopping. Lifter may land in the squat or the power position before standing tall."),
            Exercise(name: "Clean and Jerk", type: "Olympic", imageName: "candj", starred: false, description: "Bar starts on the ground in the close grip position. The lifter moves the barbell from the floor to a racked position using a squat or power position. Jerk begins from the \"front rack\" position and propels to full extension without pressing out."),
            Exercise(name: "Squat", type: "Strength", imageName: "squatpic", starred: false, description: "Lifter starts with the barbell on their back. The movement involves bending the knees and hips to lower the body until the thighs are at least parallel to the ground, then standing back up."),
            Exercise(name: "Deadlift", type: "Strength", imageName: "deadliftpic", starred: false, description: "Barbell starts on the ground. The lifter grips the barbell and lifts it until the body is fully erect, then lowers it back to the ground."),
            Exercise(name: "Pulls", type: "Strength", imageName: "pullspic", starred: false, description: "Pulls are explosive movements where the lifter pulls the barbell from the ground to chest level, focusing on the development of strength and power.")
        ]
    }
    
    
}
