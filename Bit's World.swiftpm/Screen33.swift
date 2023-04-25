import SwiftUI

struct Screen33: View {
    
    @State private var shouldNavigate = false
    let images = ["sentado1","sentado2","empe1","empe2"]
    @State private var currentImageIndex = 0
    @State private var aux = 1
    
    var body: some View {
        ZStack{
            Image("tela33")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Image("botaoplayagain")
                .position(x:177 + 376/2, y:785 + 70)
                .onTapGesture {
                    shouldNavigate = true
                }
            Image("botaofinish")
                .position(x:768 + 376/2, y:785 + 70)
                .onTapGesture {
                    exit(0)
                }
            Image(images[currentImageIndex])
                .resizable()
                .animation(.easeInOut(duration: 0.0))
                
                .frame(width:264 * 1.5 , height:221 * 1.5)
                .position(x:1336/2  , y: 1024/2)
            
                
                .onAppear {
                    let timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { timer in
                        withAnimation {
                            self.currentImageIndex = (self.currentImageIndex + aux) % self.images.count
                            if(currentImageIndex == 3){
                                aux = -1
                            }else if(currentImageIndex == 0){
                                aux = 1
                            }
                        }
                    }
                    timer.fire()
                }

            .navigationBarBackButtonHidden(true)

            NavigationLink(destination: Screen1(), isActive: $shouldNavigate){
                
            }
        }
        
        
    }
}


