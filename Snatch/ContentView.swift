//
//  ContentView.swift
//  Snatch
//
//  Created by Perceval Park on 6/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) { //vertical stack
                Image("unnamed")
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Image(systemName: "star")
                }
                

            }
            
        }


        
        
    }
}

#Preview {
    ContentView()
}
