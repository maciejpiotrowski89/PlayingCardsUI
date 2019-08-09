import SwiftUI
import PlayingCards

public struct JumboIndexPlayingCardView : View, CardContaining {
    
    let card: Card
    let bigFont: Font = Font.system(size: 64, design: fontDesign)
    let smallFont: Font = Font.system(size: 48, design: fontDesign)
    public init(card: Card) {
        self.card = card
    }
    
    public var body: some View {
        
        VStack(spacing: 0) {
            Spacer().frame(height: 10)
            HStack(alignment: .firstTextBaseline) {
                Spacer().frame(width: 10)
                Text(rank).font(bigFont)
                Text(suit).font(smallFont)
                Spacer()
            }
            
            HStack {
                if card.rank >= Rank.jack {
                    Text(suit).font(bigFont)
                } else {
                    SuitPatternView(suit: suit, pattern: card.rank.pattern[0])
                    SuitPatternView(suit: suit, pattern: card.rank.pattern[1])
                    SuitPatternView(suit: suit, pattern: card.rank.pattern[2])
                }
            }
            .frame(width:width/2, height: height/2)
                .scaleEffect(0.5)
            
            HStack(alignment: .firstTextBaseline) {
                Spacer().frame(width: 10)
                Text(rank).font(bigFont)
                Text(suit).font(smallFont)
                Spacer()
            }
            .rotationEffect(.radians(.pi))
            Spacer().frame(height: 10)
            
        }
        .foregroundColor(color)
        .frame(width:width, height: height)
        .clipped()
        .border(Color.black, width: 1.0, cornerRadius: 8.0)
    }
}
