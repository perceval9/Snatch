//
//  ContentView.swift
//  Snatch
//
//  Created by Perceval Park on 6/11/24.
//  Updated by Perceval Park on 6/13/24.

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Tutorial")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                VStack(alignment: .leading) { //vertical stack
                    Image("snatchpic")
                        .resizable()
                        .cornerRadius(15)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    HStack {
                        Text("The Snatch")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                        
                        
                        Image(systemName: "star")
                        
                        Spacer()
                        Button("Begin") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        } .buttonStyle(.bordered)
                        Spacer()
                    }
                    
                    
                    Text("Bar starts on the ground in the wide grip position. Bar moves from the ground directly to the overhead position without stopping. Lifter may land in the squat or the power position before standing tall.")
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
    ContentView()
}
