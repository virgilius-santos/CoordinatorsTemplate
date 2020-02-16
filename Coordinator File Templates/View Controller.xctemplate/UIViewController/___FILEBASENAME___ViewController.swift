
import UIKit

final class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    let viewModel: ___VARIABLE_sceneName___ViewModelProtocol
    let internalView =  ___VARIABLE_sceneName___View()

    init(viewModel: ___VARIABLE_sceneName___ViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = internalView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        internalView.button.setTitle("Register", for: UIControl.State.normal)
        internalView.button.addTarget(self, action: #selector(registerAction), for: .touchUpInside)
        
        internalView.button2.setTitle("Home", for: UIControl.State.normal)
        internalView.button2.addTarget(self, action: #selector(homeAction), for: .touchUpInside)
    }
    
    @objc func registerAction() {
        viewModel.registerInput()
    }
    
    @objc func homeAction() {
        viewModel.homeInput()
    }
}
