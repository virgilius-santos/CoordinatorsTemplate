
import Foundation

protocol ___VARIABLE_sceneName___RepositoryProtocol {
    func validate___VARIABLE_sceneName___(completion: @escaping (___VARIABLE_sceneName___Models.___VARIABLE_sceneName___) -> Void)
}

final class ___VARIABLE_sceneName___Repository: ___VARIABLE_sceneName___RepositoryProtocol {
    
    let service: ___VARIABLE_sceneName___ServiceProtocol
    
    init(service: ___VARIABLE_sceneName___ServiceProtocol) {
        self.service  = service
    }
    
    func validate___VARIABLE_sceneName___(completion: @escaping (___VARIABLE_sceneName___Models.___VARIABLE_sceneName___) -> Void) {
        // manage data from local storage, singletons e etc
        service.validate___VARIABLE_sceneName___ { (response) in
            completion(___VARIABLE_sceneName___Models.___VARIABLE_sceneName___(response))
        }
    }
}

enum ___VARIABLE_sceneName___Models {
    
    // MARK: ___VARIABLE_sceneName___ Model for APP
    
    struct ___VARIABLE_sceneName___ {
        let value: Double
        let validate: Bool
        
        init(_ dto: ___VARIABLE_sceneName___DTOModels.___VARIABLE_sceneName___Response) {
            
            // Converter DTO to App Model
            value = Double(dto.value)
            
            // Business rules
            validate = dto.value > 0
        }
    }
}

