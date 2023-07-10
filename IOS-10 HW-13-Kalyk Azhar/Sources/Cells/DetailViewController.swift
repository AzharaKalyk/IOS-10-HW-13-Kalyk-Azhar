import UIKit

final class DetailViewController: UIViewController {
    
    var model: Model? {
        didSet {
            guard let model = model else { return }
            label.text = model.title
        }
    }
    
    // MARK: - Elements
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .systemPink
    }
    
    private func setupHierarchy(){
        view.addSubview(label)
    }
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
