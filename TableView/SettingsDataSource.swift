//
//  SettingsDataSource.swift
//  TableView
//
//  Created by MAC on 08.06.2022.
//

import UIKit

class SettingsDataSource: NSObject {
    let models = [
        [
            SettingsCellModel(image: "Gayka", title: "Glavnie", icon: "vpravo"),
            SettingsCellModel(image: "adfasdf", title: "Glavnie", icon: "vpravo"),
            SettingsCellModel(image: "Gayka", title: "Glavnie", icon: "vpravo"),
            SettingsCellModel(image: "adfasdf", title: "Glavnie", icon: "vpravo"),
            SettingsCellModel(image: "asdfasdf", title: "Glavnie", icon: "vpravo")
        ],
        [
            SettingsCellModel(image: "Gayka", title: "Glavnie", icon: "6w45656"),
            SettingsCellModel(image: "fdhgdf", title: "Glavnie", icon: "vpravo"),
            SettingsCellModel(image: "Gayka", title: "hgjkghj", icon: "vpravo"),
            SettingsCellModel(image: "Gayka", title: "Glavnie", icon: "vpravo"),
            SettingsCellModel(image: "adfasdf", title: "Glavnie", icon: "vpravo"),
        ],
        [SettingsCellModel(image: "Gayka", title: "Glavnie", icon: "vpravo")]
    ]
}

extension SettingsDataSource: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        models.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(SettingsCell.self)", for: indexPath) as! SettingsCell
        cell.configure(with: models[indexPath.section][indexPath.row])
        return cell
    }
}

extension SettingsDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(models[indexPath.section][indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Section number \(section)"
    }
}
