
import UIKit

class ___VARIABLE_sceneName___View: UIView {

    let button = UIButton()
    let button2 = UIButton()
    let stack = UIStackView()

    init() {
        super.init(frame: .zero)
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        stack.addArrangedSubview(button)
        stack.addArrangedSubview(button2)
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(equalTo: centerYAnchor),
            stack.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}