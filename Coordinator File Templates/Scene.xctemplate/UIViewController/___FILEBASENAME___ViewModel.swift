
import Foundation

protocol ___VARIABLE_sceneName___ViewModelRouter {
    func register(from viewModel: ___VARIABLE_sceneName___ViewModel)
    func home(from viewModel: ___VARIABLE_sceneName___ViewModel)
}

protocol ___VARIABLE_sceneName___ViewModelProtocol {
    func registerInput()
    func homeInput()
}

final class ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {
    
    var router: ___VARIABLE_sceneName___ViewModelRouter
    var repository: ___VARIABLE_sceneName___RepositoryProtocol
    
    init(repository: ___VARIABLE_sceneName___RepositoryProtocol, router: ___VARIABLE_sceneName___ViewModelRouter) {
        self.repository = repository
        self.router = router
    }
    
    func registerInput() {
        // sevice do something
        router.register(from: self)
    }
    
    func homeInput() {
        // sevice do something
        router.home(from: self)
    }
}
