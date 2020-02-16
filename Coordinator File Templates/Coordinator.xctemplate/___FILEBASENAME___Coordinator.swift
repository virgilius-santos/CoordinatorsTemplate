
import Foundation

final class ___VARIABLE_sceneName___Coordinator {
    
    weak var navigator: NavigatorProtocol?
    
    init(navigator: NavigatorProtocol?) {
        self.navigator = navigator
    }
    
    func start() {
        
        // scene setup 
        // let session = URLSession()
        // let service = ___VARIABLE_sceneName___Service(session: session)
        // let repository = ___VARIABLE_sceneName___Repository(service: service)
        // let viewModel = ___VARIABLE_sceneName___ViewModel(repository: repository, router: self)
        // let viewController = ___VARIABLE_sceneName___ViewController(viewModel: viewModel)
        
        // scene router
        // navigator?.navigate(to: viewController, using: .push)
    }
}

extension ___VARIABLE_sceneName___Coordinator: ___VARIABLE_sceneName___ViewModelRouter {
    func register(from viewModel: ___VARIABLE_sceneName___ViewModel) {
//        route to register
//        let coord = RegisterCoordinator(navigator: navigator)
//        coord.start()
    }
    
    func home(from viewModel: ___VARIABLE_sceneName___ViewModel) {
//        route to home
//        let coord = HomeCoordinator(navigator: navigator)
//        coord.start()
    }
}
