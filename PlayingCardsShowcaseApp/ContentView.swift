import SwiftUI
import PlayingCards
import PlayingCardsUI

struct ContentView : View {
    var cards: [Card] = Card.createCards(52)
    var card: Card { return cards.first! }
    @State var playingCardView: Bool = true
    var body: some View {
        NavigationView {
            List(cards) { card in
                Section {
                    HStack {
                        Spacer()
                        if(self.playingCardView) {
                            PlayingCardView(card: card)
                        } else {
                            JumboIndexPlayingCardView(card: card)
                        }
                        Spacer()
                    }
                }.scaleEffect(0.8, anchor: .center)
            }
            .navigationBarTitle(Text("Playing Cards"))
            .navigationBarItems(trailing:
                Button(action: { self.playingCardView.toggle() }) {
                    Image(systemName: "arrow.2.circlepath")
            })
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
