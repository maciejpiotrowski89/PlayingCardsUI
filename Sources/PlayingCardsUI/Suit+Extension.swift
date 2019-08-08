import SwiftUI
import PlayingCards

extension Suit {
    var badge: String {
        switch self {
        case .diamonds: return "♦"
        case .clubs: return "♣"
        case .hearts: return "♥"
        case .spades: return "♠"
        }
    }
    
    var color: Color {
        switch self {
        case .diamonds, .hearts: return .red
        case .clubs, .spades: return .black
        }
    }
}
