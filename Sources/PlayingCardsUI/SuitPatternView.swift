import SwiftUI

struct SuitPatternView: View {
    
    struct Item: View {
        let suit: String
        var body: some View {
            Text(suit)
                .font(Font.system(.largeTitle, design: fontDesign))
        }
    }
    
    let suit: String
    let pattern: Pattern
    var body: some View {
        VStack {
            Spacer().frame(height: 10)
            Spacer()
            if pattern != .no {
                
                if pattern.rawValue.isMultiple(of: 4)
                    || pattern.rawValue.isMultiple(of: 3) {
                    Item(suit: suit)
                    Spacer()
                }
                
                
                if pattern.odd {
                    Item(suit: suit)
                } else {
                    Item(suit: suit)
                    Spacer()
                    Item(suit: suit).rotationEffect(.radians(.pi))
                }
                
                if pattern.rawValue.isMultiple(of: 4)
                    || pattern.rawValue.isMultiple(of: 3) {
                    Spacer()
                    Item(suit: suit).rotationEffect(.radians(.pi))
                }
                Spacer()
                Spacer().frame(height: 10)
            }
        }
        .frame(width: standardWidth)
        .clipped()
    }
}
