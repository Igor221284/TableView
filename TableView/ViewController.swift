//
//  ViewController.swift
//  TableView
//
//  Created by MAC on 08.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    private lazy var myTableView: UITableView = {
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupHierarchy()
        setupLayout()
    }

    private func setupLayout() {
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        myTableView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
    }

    private func setupHierarchy() {
        view.addSubview(myTableView)
    }
    
    private func setupView() {
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
    }
    
   // MARK: - DataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }

}

