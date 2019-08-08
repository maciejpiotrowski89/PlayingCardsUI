import SwiftUI
import PlayingCards

struct RoyalPeepView: View, CardContaining {
    let card: Card
    let font: Font = Font.system(.largeTitle)
    var body: some View {
        VStack {
            Text(rank).font(font)
            Text(suit).font(font)
            Text(rank).font(font)
        }
        .frame(width: standardWidth)
    }
}
