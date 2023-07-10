import UIKit

class CustomTableViewCell: UITableViewCell {
    
    // MARK: - Elements
    
    private let iconBackgroundView = UIView()
    private let iconImageView = UIImageView()
    private let titleLabel = UILabel()
    private let switchButton = UISwitch()
    
    var model: Model? {
        didSet {
            if let model = model {
                iconImageView.image = model.image
                iconImageView.tintColor = model.iconColor
                titleLabel.text = model.title
                iconBackgroundView.backgroundColor = model.backgroundColor
                
                switch model.cellType {
                case .switchCell:
                    switchButton.isHidden = false
                    switchButton.isOn = false
                    accessoryType = .none
                case .detailCell:
                    switchButton.isHidden = true
                    switchButton.isOn = false
                    accessoryType = .disclosureIndicator
                }
            } else {
                iconImageView.image = nil
                titleLabel.text = nil
                iconBackgroundView.backgroundColor = nil
                switchButton.isHidden = true
                switchButton.isOn = false
                accessoryType = .none
            }
        }
    }
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupView() {
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.clipsToBounds = true
    }
    
    private func setupHierarchy(){
        iconBackgroundView.addSubview(iconImageView)
        contentView.addSubview(iconBackgroundView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(switchButton)
    }
    
    private func setupLayout() {
        iconBackgroundView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.width.height.equalTo(34)
        }
        iconBackgroundView.layer.cornerRadius = 10
        iconImageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(20)
        }
        iconImageView.contentMode = .scaleAspectFit
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(iconBackgroundView.snp.right).offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        switchButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-20)
        }
    }
}
