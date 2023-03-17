import UIKit

public struct Games {
    public private(set) var text = "Hello, World!"
    var puzzle: PuzzleViewController?

    public init() {
        puzzle = PuzzleViewController()
    }
    
    static public func createViewController() -> UIViewController {
			guard let storyboard = UIStoryboard(name: "Puzzle", bundle: Bundle.module).instantiateInitialViewController() as? PuzzleViewController else { return UIViewController()}
			return storyboard
    }
}
