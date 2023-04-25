//
//  SecondScreen.swift
//  Joguinho
//
//  Created by Lucas Francisco on 11/04/23.
//

import SwiftUI

struct Screen12: View {
    
    @State private var shouldNavigate = false
    let telas = ["tela12", "tela13", "tela13"]
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
                    if(currentIndex == 2){
                        shouldNavigate = true
                    }
                }
            .navigationBarBackButtonHidden(true)

            NavigationLink(destination: Screen14(), isActive: $shouldNavigate){
                
            }
        }
        
        
    }
}


