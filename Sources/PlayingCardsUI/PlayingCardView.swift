import SwiftUI
import PlayingCards

public struct PlayingCardView : View, CardContaining {
    private let ratio: CGFloat = 1.4
    private let width: CGFloat = 200
    private var height: CGFloat { return width * ratio }
    let card: Card
    
    public init(card: Card) {
        self.card = card
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            RankView(card: card)
            SuitPatternView(suit: suit, pattern: card.rank.pattern[0])
            if card.rank >= Rank.jack {
                RoyalPeepView(card: card)
            } else {
                SuitPatternView(suit: suit, pattern: card.rank.pattern[1])
            }
            SuitPatternView(suit: suit, pattern: card.rank.pattern[2])
            RankView(card: card).rotationEffect(.radians(.pi))
        }
            .foregroundColor(color)
            .frame(width:width, height: height)
            .clipped()
            .border(Color.black, width: 1.0, cornerRadius: 8.0)
    }
}
