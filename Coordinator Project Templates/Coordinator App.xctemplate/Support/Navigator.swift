
import UIKit

protocol NavigatorProtocol: AnyObject {
    func navigate(to viewController: UIViewController, using type: NavigatorType)
}

struct NavigatorType: Equatable {
    
    typealias NavigatorFunctions = ((UINavigationController?, UIViewController) -> Void)
    
    let identifier: String = UUID().uuidString
    let function: NavigatorFunctions
    
    static func == (lhs: NavigatorType, rhs: NavigatorType) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    static let push = NavigatorType(function: { (nav, vc) in
        nav?.pushViewController(vc, animated: true)
    })
    
    static let present = NavigatorType(function: { (nav, vc) in
        nav?.present(vc, animated: true, completion: nil)
    })
}

final class Navigator: NavigatorProtocol {
    
    weak var nav: UINavigationController?
    
    init(nav: UINavigationController?) {
        self.nav = nav
    }
    
    func navigate(to viewController: UIViewController, using type: NavigatorType) {
        type.function(nav, viewController)
    }
}