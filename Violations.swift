// Violations.swift – triggers SwiftLint rules (force unwrap, todo, etc.)

import Foundation

class Violations {
    // TODO: Refactor this messy class
    var text: String!

    init(text: String?) {
        // Force unwrap – triggers 'force_unwrap'
        self.text = text!
    }

    func riskyCast(_ obj: Any) {
        // Force cast – triggers 'force_cast'
        let _ = obj as! String
    }

    func printLines() {
        for i in 0 ..< 5 {
            // trailing_whitespace intentionally
            print(i) 
        }
    }
} 