import SwiftUI

@main
struct MyApp: App {
    init() {
        let fontURL = Bundle.main.url(forResource: "KIdDOS-Regular", withExtension: "ttf")!
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, CTFontManagerScope.process, nil)
      }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                Screen1()
            }
            .navigationViewStyle(.stack)
        }
    }
}

