import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var model = Model.allModels
    
    // MARK: - Elements
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray6
        textField.layer.cornerRadius = 20
        textField.textAlignment = .center
        textField.placeholder = "Type name here..."
        return textField
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
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
    }
    
    private func setupHierarchy() {
        view.addSubview(textField)
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        textField.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
            make.left.equalTo(view).offset(20)
            make.height.equalTo(30)
        }
        tableView.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(20)
            make.right.bottom.left.equalTo(view)
        }
    }
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        model.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        let model = model[indexPath.section][indexPath.row]
        cell.model = model
        switch model.cellType {
        case .switchCell:
            cell.accessoryType = .none
        case .detailCell:
            cell.accessoryType = .disclosureIndicator
        }
        return cell
    }
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let viewController = DetailViewController()
        viewController.model = model[indexPath.section][indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
}
