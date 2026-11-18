import Foundation

struct Question: Codable, Identifiable {
    let id: Int
    let question: String
    let options: [String]
    let answer: String
}

class GameManager: ObservableObject {
    @Published var score: Int = 0
    @Published var currentIndex: Int = 0
    
    func checkAnswer(_ selected: String, correct: String) -> Bool {
        if selected == correct {
            score += 10
            return true
        }
        return false
    }
}
