//
//  ExerciseInfo.swift
//  Snatch
//
//  Created by Perceval Park on 6/17/24.
//

import SwiftUI

struct ExerciseInfo: View {
    
    var name:String
    var type: String
    var imageName: String
    var starred: Bool
    var description: String
    @State @ObservedObject var exerciseList: ExerciseList
    
    @State var sets:Int = 1
    @State var reps:Int = 1
    
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text(type)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                VStack(alignment: .leading) { //vertical stack
                    Image(imageName)
                        .resizable()
                        .cornerRadius(15)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    HStack {
                        Text(name)
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                        
                        
                        Image(systemName: "star")
                        
                        
                    }
                    HStack {
                        VStack {
                            Text("Sets")
                            HStack {
                                Button(action: {
                                    if sets > 1 {
                                        sets = sets - 1
                                    }
                                }) {
                                    Image(systemName: "minus")
                                }
                                
                                Text(String(sets))
                                
                                Button(action: {
                                    if sets < 10 {
                                        sets = sets + 1
                                    }
                                }) {
                                    Image(systemName: "plus")
                                }
                                
                            }
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("Reps")
                            HStack {
                                Button(action: {
                                    if reps > 1 {
                                        reps = reps - 1
                                    }
                                }) {
                                    Image(systemName: "minus")
                                }
                                
                                Text(String(reps))
                                
                                Button(action: {
                                    if reps < 10 {
                                        reps = reps + 1
                                    }
                                }) {
                                    Image(systemName: "plus")
                                }
                                
                            }
                        }
                        
                        
                        Spacer()
                        Button("Add") {
                            exerciseList.insertExercise(e: (Exercise(name: self.name, type: self.type, imageName: self.imageName, starred: self.starred, description: self.description), sets, reps))
                        }.padding([.top, .bottom, .trailing]).buttonStyle(.bordered)
                    }
                    
                    Text(description)
                        .font(.caption)
                    
                    
                    
                    
                    
                }
                .padding()
                .background(Rectangle()
                    .cornerRadius(15)
                    .foregroundColor(.white)
                    .shadow(radius: 15))
                
                
                .padding()
                
                
            }
            
        }
    }
}

#Preview {
    ExerciseInfo(name: "Snatch", type: "Olympic Lifts", imageName: "snatchpic", starred: true, description: "Bar starts on the ground in the wide grip position. Bar moves from the ground directly to the overhead position without stopping. Lifter may land in the squat or the power position before standing tall.",  exerciseList: ExerciseList())
}
