import Foundation

// 定义数学怪谈与问题结构
public struct MathProblem {
    public let question: String
    public let options: [String]
    public let correctAnswerIndex: Int
    public let memeRemark: String
}

public class MemeMathGame {
    public var score: Int = 0
    public var currentLevel: Int = 1
    
    private let problems: [MathProblem] = [
        MathProblem(
            question: "当 Meme 老师疯狂掉发时，解方程：2x + 10 = 30，x 等于几？",
            options: ["5", "10", "15", "20"],
            correctAnswerIndex: 1,
            memeRemark: "答对了！Meme老师感动得保住了最后两根头发！"
        ),
        MathProblem(
            question: "如果学霸连续通宵 3 天，黑眼圈面积以指数级增长，求底数增长极限？",
            options: ["无穷大", "零", "咖啡因常数", "头发数量"],
            correctAnswerIndex: 2,
            memeRemark: "太稳了！咖啡因就是第一生产力！"
        )
    ]
    
    public init() {}
    
    public func checkAnswer(for problemIndex: Int, selectedOption: Int) -> Bool {
        guard problemIndex < problems.count else { return false }
        let isCorrect = (problems[problemIndex].correctAnswerIndex == selectedOption)
        if isCorrect {
            score += 10
        }
        return isCorrect
    }
}
