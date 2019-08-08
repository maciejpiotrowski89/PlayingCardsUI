import PlayingCards
import SwiftUI

let fontDesign: Font.Design = .default
let standardWidth: CGFloat = 35
let standardHeight: CGFloat = 30

protocol CardContaining {
    var card: Card { get }
}

extension CardContaining {
    var rank: String { return card.rank.badge }
    var suit: String { return card.suit.badge }
    var color: Color { return card.suit.color }
}
