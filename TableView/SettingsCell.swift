//
//  SettingsCell.swift
//  TableView
//
//  Created by MAC on 08.06.2022.
//

import Foundation
import UIKit

class SettingsCell: UITableViewCell {
    let image = UILabel()
    let title = UILabel()
    let icon = UILabel()
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [image, title, icon])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .equalSpacing
        return stack
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            stack.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            stack.topAnchor.constraint(equalTo: contentView.topAnchor),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            stack.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(with model: SettingsCellModel) {
        image.text = model.image
        title.text = model.title
        icon.text = model.icon
    }
}

