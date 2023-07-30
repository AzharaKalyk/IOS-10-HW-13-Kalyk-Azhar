import UIKit

class ViewController: UIViewController {
    
    // MARK: - Elements
    
    private var mainView = MainView()
    private var model: [[Model]] = Model.allModels
    
    // MARK: - Lifecycle
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        viewConfiguration()
        
    }
}


// MARK: - Configuration

private extension ViewController {
    
    private func viewConfiguration() {
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        
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

