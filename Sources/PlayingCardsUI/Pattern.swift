import Foundation

public enum Pattern: UInt, Equatable {
    case no = 0, one, two, three, four
    
    public var even: Bool { return rawValue.isMultiple(of: 2) }
    public var odd: Bool { return !even }
}
