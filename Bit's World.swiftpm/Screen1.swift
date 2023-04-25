import SwiftUI

struct Screen1: View {
    
    @State private var shouldNavigate = false
    
    var body: some View {
        ZStack {
            /*
            if let gameScene{
                SpriteView(scene: gameScene)
            }
             */
            
            
            Image("tela1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Image("botaostart")
                .position(x:1366/2, y:0)
                .offset(x:0, y:657+70)
                .onTapGesture {
                    shouldNavigate = true
                }
            .navigationBarBackButtonHidden(true)
            
            NavigationLink(destination: Screen2(), isActive: $shouldNavigate){
                
            }
         
        
        }
         
        
        
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1().previewInterfaceOrientation(.landscapeRight)
    }
}

