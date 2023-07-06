import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var model = Model.allModels
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
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
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        setupView()
        setupHierarchy()
        setupLayout()
    }
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHierarchy(){
        view.addSubview(textField)
        view.addSubview(tableView)
        
    }
    
    private func setupLayout(){
        textField.snp.makeConstraints {make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
            make.left.equalTo(view).offset(20)
            make.height.equalTo(40)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(20)
            make.right.bottom.left.equalTo(view)
        }
    }
}
    
    // MARK: - Actions
    
    extension ViewController: UITableViewDataSource {
        func numberOfSections(in tableView: UITableView) -> Int {
            model.count
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            model[section].count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
            let model = self.model[indexPath.section][indexPath.row]
            cell.model = model
            return cell
        }
        
        func tableView(_tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                tableView.beginUpdates()
                model.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
            }
        }
    }
    
