//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mak Mulabegovic on 11. 12. 2022..
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1  // neki value koji se mjenja treba ti propery State
    @State var rightDiceNumber = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable() // da poveca skroz preko cijelog ekrana (osim safe area)
                .edgesIgnoringSafeArea(.all) // prodi i safe area
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.all)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                        Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                }
                .background(Color.red)
                Spacer()
            }
            
        }
    }
}


struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(40)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
