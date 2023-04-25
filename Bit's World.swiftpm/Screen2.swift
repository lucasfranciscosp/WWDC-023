//
//  SecondScreen.swift
//  Joguinho
//
//  Created by Lucas Francisco on 11/04/23.
//

import SwiftUI

struct Screen2: View {
    
    @State private var shouldNavigate = false
    let telas = ["tela2", "tela3", "tela4", "tela5", "tela6", "tela7", "tela8", "tela9", "tela10", "tela10"]
    @State private var currentIndex = 0

    
    var body: some View {
        ZStack{
            Image(telas[currentIndex])
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Image("botaonext")
                .position(x:856 + 376/2, y:785 + 70)
                .onTapGesture {
                    currentIndex += 1
                    if(currentIndex == 9){
                        shouldNavigate = true
                    }
                }
            .navigationBarBackButtonHidden(true)

            NavigationLink(destination: Screen11(), isActive: $shouldNavigate){
                
            }
        }
        
        
    }
}


