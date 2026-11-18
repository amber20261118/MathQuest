import SwiftUI

@main
struct QuestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @StateObject private var game = GameManager()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Meme-sensei's Math Quest")
                .font(.largeTitle)
                .bold()
            Text("Score: \(game.score)")
                .font(.title2)
        }
        .padding()
    }
}