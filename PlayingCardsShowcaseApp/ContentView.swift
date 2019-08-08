import SwiftUI
import PlayingCards
import PlayingCardsUI

struct ContentView : View {
    var cards: [Card] = Card.createCards(52)
    var card: Card { return cards.first! }

    var body: some View {
        List(cards) { card in
            HStack {
                Spacer()
                PlayingCardView(card: card)
                Spacer()
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
