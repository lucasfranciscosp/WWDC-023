import SwiftUI

struct Screen26: View {
    
    @State private var shouldNavigate = false
    let telas = ["tela26", "telaauxvirus", "tela27", "tela28", "tela29", "tela30", "tela31", "tela32", "tela32"]
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
                    if(currentIndex == 8){
                        shouldNavigate = true
                    }
                }
            .navigationBarBackButtonHidden(true)

            NavigationLink(destination: Screen33(), isActive: $shouldNavigate){
                
            }
        }
        
        
    }
}


