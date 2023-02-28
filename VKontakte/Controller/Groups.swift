//
//  Groups.swift
//  VKontakte
//
//  Created by Ольга on 25.01.2023.
//

import UIKit

final class Groups: UITableViewController {
    
    //MARK: - Propertys array
    
    private var myGroups = [
        
        MyGroups(nameOfGroup: "Сам себе психолог", avatarGroup: "15"),
        MyGroups(nameOfGroup: "Котики", avatarGroup: "16"),
        MyGroups(nameOfGroup: "Лучшие фильмы", avatarGroup: "17"),
        MyGroups(nameOfGroup: "Креативное кафе", avatarGroup: "18"),
        MyGroups(nameOfGroup: "Платья", avatarGroup: "19"),
        MyGroups(nameOfGroup: "Информационное пространство твоего города", avatarGroup: "20"),
        MyGroups(nameOfGroup: "Мы любим игры, а они любят нас", avatarGroup: "21"),
        MyGroups(nameOfGroup: "Социальные медиа твоего города", avatarGroup: "22"),
        MyGroups(nameOfGroup: "Йоу, нига", avatarGroup: "23"),
        MyGroups(nameOfGroup: "На все руки мастер", avatarGroup: "24"),
        MyGroups(nameOfGroup: "Что за лев этот тигр", avatarGroup: "25"),
        MyGroups(nameOfGroup: "Семейное кафе Ложки- Вилки", avatarGroup: "26")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44.0
    }
    
    //MARK: - IBAction and method for add group
    
    @IBAction func addGroup(_ sender: Any) {
        
        let alert = UIAlertController(title: "Добавить группу", message: nil, preferredStyle: .alert)
        alert.addTextField { (textfield) in
            textfield.placeholder = "Название группы"
        }
        
        let action = UIAlertAction(title: "OK", style: .default) { [weak self, weak alert]
            (action) in
            guard let firstText = alert?.textFields?.first else { return }
            self?.addGroup(naming: firstText.text ?? "")
        }
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    private func addGroup(naming: String) {
        
        myGroups.append(MyGroups(nameOfGroup: naming, avatarGroup: naming))
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "groupsCell", for: indexPath) as? GroupCell else { fatalError() }
        
        let info = myGroups[indexPath.row]
        
        cell.nameGroupLabel.text = info.nameOfGroup
        cell.avatarGroupImageView.image = UIImage(named: info.avatarGroup ?? "")

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    //MARK: - IBAction go in next VC
    
    @IBAction func addWord(_ sender: UIBarButtonItem) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let searchVC = storyboard.instantiateViewController(withIdentifier: "searchVC") as? GlobalSearch else { return }
        
        present(searchVC, animated: true)
    }
}
