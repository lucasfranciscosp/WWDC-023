//
//  SecondScreen.swift
//  Joguinho
//
//  Created by Lucas Francisco on 11/04/23.
//

import SwiftUI
import AVFAudio

struct Screen14: View {
    
    @State private var shouldNavigate = false
    let images = ["sentado1","sentado2","empe1","empe2"]
    @State private var currentImageIndex = 0
    @State private var currentImageIndex1 = 0
    @State private var currentImageIndex2 = 0
    @State private var count = 0
    @State private var isUP = false
    @State private var isUP1 = false
    @State private var isUP2 = false
    @State private var audioPlayer: AVAudioPlayer?


    
    var body: some View {
        ZStack{
            Image("tela14")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .navigationBarBackButtonHidden(true)
            
            Text("sum = \(count)")
                .font(Font.custom("KidDos Font", size: 120))
                .position(x: 103 + 215, y: 785 + 205/2)
                .foregroundColor(.white)

            
//            createBit(images: images, x1: 154 + 370/2, y1: 369 + 266/2, pow: 4, start: 3, w: 1.5, h: 1.5, count: count, isUP: true)
            
            //Image(images[currentImageIndex])
            image(for: currentImageIndex)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 1.5 , height:221 * 1.5)
                .position(x:1336/3  - 110, y: 369 + 205)
            
                .onTapGesture {
                    playSound("wee.mp3")
                    if(!isUP){
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex = (self.currentImageIndex + 1) % self.images.count
                            if(self.currentImageIndex == 3){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        
                        count += 4
                        isUP = true
                    }else{
                        currentImageIndex = 3
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex = (self.currentImageIndex - 1) % self.images.count
                            if(self.currentImageIndex == 0){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count -= 4
                        isUP = false

                    }
                    
                }
            
            //Image(images[currentImageIndex1])
            image(for: currentImageIndex1)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 1.5 , height:221 * 1.5)
                .position(x:1336/2 , y: 369 + 205)
            
                .onTapGesture {
                    playSound("wee.mp3")
                    if(!isUP1){
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex1 = (self.currentImageIndex1 + 1) % self.images.count
                            if(self.currentImageIndex1 == 3){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count += 2
                        isUP1 = true
                    }else{
                        currentImageIndex1 = 3
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex1 = (self.currentImageIndex1 - 1) % self.images.count
                            if(self.currentImageIndex1 == 0){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count -= 2
                        isUP1 = false

                    }
                }
            
            //Image(images[currentImageIndex2])
            image(for: currentImageIndex2)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 1.5 , height:221 * 1.5)
                .position(x:1336/2 + 1336/3 - 110, y: 369 + 205)
            
                .onTapGesture {
                    playSound("wee.mp3")
                    if(!isUP2){
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex2 = (self.currentImageIndex2 + 1) % self.images.count
                            if(self.currentImageIndex2 == 3){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count += 1
                        isUP2 = true
                    }else{
                        currentImageIndex2 = 3
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex2 = (self.currentImageIndex2 - 1) % self.images.count
                            if(self.currentImageIndex2 == 0){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count -= 1
                        isUP2 = false

                    }
                }
            
            

                
            if(count == 5 && currentImageIndex == 3 && currentImageIndex1 == 0 && currentImageIndex2 == 3){
                Image("botaonext")
                    .position(x:856 + 376/2, y:785 + 70)
                    .onTapGesture {
                        shouldNavigate = true
                    }
            }
            
            


            NavigationLink(destination: Screen15(), isActive: $shouldNavigate){
                
            }
        }
        
        
    }
    
    func image(for index: Int) -> Image {
        if index >= 0 && index < images.count {
           return Image(images[index])
        } else {
            return Image(images[images.count - 1])
        }
    }
    func playSound(_ soundFile: String) {
        guard let url = Bundle.main.url(forResource: soundFile, withExtension: nil) else {
            fatalError("Não tem a musica")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("erro ao criar player")
        }
        
        if let audioPlayer {
            audioPlayer.setVolume(0.04, fadeDuration: 0)
            audioPlayer.play()
        }
    }
}


