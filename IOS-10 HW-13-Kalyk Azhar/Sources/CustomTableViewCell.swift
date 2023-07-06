//
//  CustomTableViewCell.swift
//  IOS-10 HW-13-Kalyk Azhar
//
//  Created by Azhar Kalyk on 05.07.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    private let iconImageView = UIImageView()
    private let titleLabel = UILabel()
    
    var model: Model? {
        didSet {
            if let model = model {
                iconImageView.image = model.image
                titleLabel.text = model.title
            } else {
                iconImageView.image = nil
                titleLabel.text = nil
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        iconImageView.contentMode = .scaleAspectFit
        contentView.addSubview(iconImageView)
        
        titleLabel.font = UIFont.systemFont(ofSize: 16)
        contentView.addSubview(titleLabel)
        
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        iconImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.width.height.equalTo(20)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(iconImageView.snp.right).offset(10)
            make.right.equalToSuperview().offset(-20)
        }
    }
}
