
final class AppCoordinator: Coordinator {
    weak var navigator: NavigatorProtocol?

    init(navigator: NavigatorProtocol?) {
        self.navigator = navigator
    }

    func start() {
        
    }
}