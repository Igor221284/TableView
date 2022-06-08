//
//  ViewController.swift
//  TableView
//
//  Created by MAC on 08.06.2022.
//

import UIKit

class ViewController: UIViewController{
    
    
    private lazy var myTableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
        tableView.register(SettingsCell.self, forCellReuseIdentifier: "\(SettingsCell.self)")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let dataSource = SettingsDataSource()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        addSubviews()
        setupConstraints()
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }

    private func addSubviews() {
        view.addSubview(myTableView)
    }

}

