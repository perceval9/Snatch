//
//  ExerciseList.swift
//  Snatch
//
//  Created by Perceval Park on 6/20/24.
//

import Foundation

class ExerciseList : ObservableObject {
    
    var exerciseList: [(Exercise, Int, Int)]  = [(Exercise, Int, Int)]()
    
    func getList() -> [(Exercise, Int, Int)] {
        return exerciseList
    }
     func insertExercise(e: (Exercise, Int, Int))  {
        exerciseList.append(e)
        print(exerciseList)
    }
}
