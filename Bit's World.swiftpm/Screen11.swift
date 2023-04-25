//
//  SecondScreen.swift
//  Joguinho
//
//  Created by Lucas Francisco on 11/04/23.
//

import SwiftUI
import AVFAudio

struct Screen11: View {
    
    @State private var isTapped = false
    @State private var isHidden = false
    @State private var shouldNavigate = false
    @State private var isUP = false
    let images = ["sentado1","sentado2","empe1","empe2"]
    @State private var currentImageIndex = 0
    @State private var pressed = 0
    @State private var count = 0
    @State private var audioPlayer: AVAudioPlayer?

    
    var body: some View {
        ZStack{
            Image("tela11")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .navigationBarBackButtonHidden(true)
            
            Text("sum = \(count)")
                .font(Font.custom("KidDos Font", size: 120))
                .position(x: 103 + 215, y: 785 + 205/2)
                .foregroundColor(.white)
                
            Text("1")
                .font(Font.custom("KidDos Font", size: 120))
                .position(x: 1366/2, y: 288 + 30)
                .foregroundColor(.white)
        
        //    Image(images[currentImageIndex])
            image(for: currentImageIndex)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 2 , height:221 * 2)
                .position(x:399 + 568/2, y: 297 + 205 + 50)
            
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
                        pressed += 1
                        count += 1
                        isUP = true
                    }else{
                        currentImageIndex = 7
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex = (self.currentImageIndex - 1) % self.images.count
                            if(self.currentImageIndex == 0){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        pressed += 1
                        count -= 1
                        isUP = false

                    }
                                            
                }
                
            if(pressed>=3){
                Image("botaonext")
                    .position(x:856 + 376/2, y:785 + 70)
                    .onTapGesture {
                        shouldNavigate = true
                    }
            }

            NavigationLink(destination: Screen12(), isActive: $shouldNavigate){
                
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


