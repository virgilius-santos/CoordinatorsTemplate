
import Foundation

protocol ___VARIABLE_sceneName___ServiceProtocol {
    func validate___VARIABLE_sceneName___(completion: @escaping (___VARIABLE_sceneName___DTOModels.___VARIABLE_sceneName___Response) -> Void)
}

final class ___VARIABLE_sceneName___Service: ___VARIABLE_sceneName___ServiceProtocol {
    
    let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    func validate___VARIABLE_sceneName___(completion: @escaping (___VARIABLE_sceneName___DTOModels.___VARIABLE_sceneName___Response) -> Void) {
        // session do request
        completion(___VARIABLE_sceneName___DTOModels.___VARIABLE_sceneName___Response(value: 0))
    }
}

enum ___VARIABLE_sceneName___DTOModels {
    
    // MARK: API ___VARIABLE_sceneName___ Model
    
    struct ___VARIABLE_sceneName___Response: Decodable {
        let value: Int
    }
}
