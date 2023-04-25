//
//  SecondScreen.swift
//  Joguinho
//
//  Created by Lucas Francisco on 11/04/23.
//

import SwiftUI

struct Screen15: View {
    
    @State private var shouldNavigate = false
    let telas = ["tela15", "tela16", "tela17", "tela18", "tela19", "tela20", "tela21", "tela21"]
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
                    if(currentIndex == 7){
                        shouldNavigate = true
                    }
                }
            .navigationBarBackButtonHidden(true)

            NavigationLink(destination: Screen22(), isActive: $shouldNavigate){
                
            }
        }
        
        
    }
}


