import Foundation
import PlayingCards

extension Rank {
    var badge: String {
        switch self {
        case .ace: return "A"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .ten: return "10"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        }
    }
    
    var pattern: [Pattern] {
        switch self {
        case .ace: return [.no, .one, .no]
        case .two: return [.no, .two, .no]
        case .three: return [.no, .three, .no]
        case .four: return [.two, .no, .two]
        case .five: return [.two, .one, .two]
        case .six: return [.three, .no, .three]
        case .seven: return [.three, .one, .three]
        case .eight: return [.three, .two, .three]
        case .nine: return [.four, .one, .four]
        case .ten: return [.four, .two, .four]
        case .jack: return [.no, .no, .no]
        case .queen: return [.no, .no, .no]
        case .king: return [.no, .no, .no]
        }
    }
}

extension Rank: Comparable {
    public static func < (lhs: Rank, rhs: Rank) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}
