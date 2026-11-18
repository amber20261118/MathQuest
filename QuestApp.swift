import SwiftUI

@main
struct MemeMathQuestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    private let game = MemeMathGame()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Meme-sensei's Math Quest")
                .font(.largeTitle)
                .bold()
            
            Text("欢迎来到 Meme 老师的数学大冒险！")
                .font(.headline)
                .foregroundColor(.secondary)
            
            Spacer()
            
            Text("当前得分: \(game.score)")
                .font(.title2)
            
            Spacer()
        }
        .padding()
    }
}
