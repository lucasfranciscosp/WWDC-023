import SwiftUI
import AVFAudio

struct Screen23: View {
    
    @State private var shouldNavigate = false
    let images = ["sentado1","sentado2","empe1","empe2"]
    @State private var currentImageIndex = 3
    @State private var currentImageIndex1 = 3
    @State private var currentImageIndex2 = 3
    @State private var currentImageIndex3 = 0
    @State private var currentImageIndex4 = 0
    @State private var count = 16 + 8 + 4
    @State private var isUP = true
    @State private var isUP1 = true
    @State private var isUP2 = true
    @State private var isUP3 = false
    @State private var isUP4 = false
    @State private var audioPlayer: AVAudioPlayer?

    
    var body: some View {
        ZStack{
            
            ZStack{
                Image("tela23")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .navigationBarBackButtonHidden(true)
                
                Text("_ _ _ _")
                    .font(Font.custom("KidDos Font", size: 128))
                    .position(x: 1366/2, y: 287 + 147/2)
                    .foregroundColor(.white)
                
                Text("    e  l  p")
                    .opacity(0.5)
                    .font(Font.custom("KidDos Font", size: 128))
                    .position(x: 1366/2 , y: 287 + (147/2) - 25)
                    .foregroundColor(.white)
                
                Text("h          ")
                    .font(Font.custom("KidDos Font", size: 128))
                    .position(x: 1366/2 , y: 287 + (147/2) - 25)
                    .foregroundColor(.white)
                
                Text("sum = \(count)")
                    .font(Font.custom("KidDos Font", size: 120))
                    .position(x: 103 + 215, y: 785 + 205/2)
                    .foregroundColor(.white)
            }
            
            
            
            

            
//            createBit(images: images, x1: 154 + 370/2, y1: 369 + 266/2, pow: 4, start: 3, w: 1.5, h: 1.5, count: count, isUP: true)
            
            //Image(images[currentImageIndex])
            image(for: currentImageIndex)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 0.75 , height:221 * 0.75)
                .position(x:1336/4  - 110 + 5, y: 369 + 205 + 75)
            
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
                        count += 16
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
                        count -= 16
                        isUP = false

                    }
                }
            
            //Image(images[currentImageIndex1])
            image(for: currentImageIndex1)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 0.75 , height:221 * 0.75)
                .position(x:1336/4 - 110 + 225, y: 369 + 205 + 75)
            
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
                        count += 8
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
                        count -= 8
                        isUP1 = false

                    }
                }
            
            //Image(images[currentImageIndex2])
            image(for: currentImageIndex2)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 0.75 , height:221 * 0.75)
                .position(x:1336/4 - 110 + 225 * 2, y: 369 + 205 + 75)
            
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
                        count += 4
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
                        count -= 4
                        isUP2 = false

                    }
                }
            
            
            //Image(images[currentImageIndex3])
            image(for: currentImageIndex3)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 0.75 , height:221 * 0.75)
                .position(x:1336/4 - 110 + 225 * 3, y: 369 + 205 + 75)
            
                .onTapGesture {
                    playSound("wee.mp3")
                    if(!isUP3){
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex3 = (self.currentImageIndex3 + 1) % self.images.count
                            if(self.currentImageIndex3 == 3){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count += 2
                        isUP3 = true
                    }else{
                        currentImageIndex3 = 3
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex3 = (self.currentImageIndex3 - 1) % self.images.count
                            if(self.currentImageIndex3 == 0){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count -= 2
                        isUP3 = false

                    }
                }
            
            //Image(images[currentImageIndex4])
            image(for: currentImageIndex4)
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 0.75 , height:221 * 0.75)
                .position(x:1336/4 - 110 + 225 * 4, y: 369 + 205 + 75)
            
                .onTapGesture {
                    playSound("wee.mp3")
                    if(!isUP4){
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex4 = (self.currentImageIndex4 + 1) % self.images.count
                            if(self.currentImageIndex4 == 3){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count += 1
                        isUP4 = true
                    }else{
                        currentImageIndex4 = 3
                        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in withAnimation {
                            self.currentImageIndex4 = (self.currentImageIndex4 - 1) % self.images.count
                            if(self.currentImageIndex4 == 0){
                                timer.invalidate()
                            }
                        }
                            
                        }
                        timer.fire()
                        count -= 1
                        isUP4 = false

                    }
                }
            
            if(count == 5 && currentImageIndex == 0 && currentImageIndex1 == 0 && currentImageIndex2 == 3 && currentImageIndex3 == 0 && currentImageIndex4 == 3){
                Image("botaonext")
                    .position(x:856 + 376/2, y:785 + 70)
                    .onTapGesture {
                        shouldNavigate = true
                    }
            }

            NavigationLink(destination: Screen24(), isActive: $shouldNavigate){
                
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


