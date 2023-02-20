//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Godsheritage Adeoye on 2/17/23.
//

import SwiftUI

 struct ContentView: View {
    
    
    
    @State var rightDiceNumber = 1
    @State var leftDiceNumber = 1
    var body: some View {
        
       
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: rightDiceNumber)
                    DiceView(n: leftDiceNumber)
                    
                }
                Spacer()
                 Button("Roll") {
                     self.leftDiceNumber = Int.random(in: 1...6)
                     self.rightDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .background(Color.red)
                .padding()
            }
        }
        
        

        
        
        
    }
}

struct DiceView: View {
    var n : Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(height: 130)
            .padding(.all)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

