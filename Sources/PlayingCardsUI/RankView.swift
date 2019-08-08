import PlayingCards
import SwiftUI

struct RankView: View, CardContaining {
    let card: Card
    let font: Font = Font.system(.largeTitle, design: fontDesign)
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            Text(rank).font(font)
            Text(suit).font(Font.system(.headline, design: fontDesign))
            Spacer()
        }.frame(width: 50)
    }
}
