//
//  FriendsListTableViewController.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class FriendsListTableViewController: UITableViewController {
    
    //MARK: - Propertys array
    
    private var friends = [
        Friends(name: "Брат", avatar: "1"),
        Friends(name: "Сестра", avatar: "2"),
        Friends(name: "Дедуля", avatar: "3"),
        Friends(name: "Мама", avatar: "4"),
        Friends(name: "Евгений Сычев", avatar: "5"),
        Friends(name: "Муж сестры", avatar: "6"),
        Friends(name: "София Царева", avatar: "7"),
        Friends(name: "Виктория Иванова", avatar: "8"),
        Friends(name: "Адриано Челентано", avatar: "9"),
        Friends(name: "Коля- крыша", avatar: "10"),
        Friends(name: "Анзорик криптомиллионер", avatar: "11"),
        Friends(name: "Игнат Зайцев", avatar: "12"),
        Friends(name: "Люда брови", avatar: "13"),
        Friends(name: "Отамай Зантунгатова", avatar: "14")
    ]
    
    private var sections: [Character: [Friends]] = [:]
    private var sectionTitles = [Character]()
    
    var name: Friends?
    var picture: Friends?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44.0
        
        for human in friends {
            let firstLetter = human.name.first!
            
            if sections[firstLetter] != nil {
                sections[firstLetter]?.append(human)
            } else {
                sections[firstLetter] = [human]
            }
        }
        sectionTitles = Array(sections.keys)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "personVC",
           let destiantion = segue.destination as? PersonCollectionViewController {
            destiantion.name = name?.name
            destiantion.picture = picture?.avatar
            }
        }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15.0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[sectionTitles[section]]?.count ?? 0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sectionTitles.map{ String($0)}
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(sectionTitles[section])
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as? FriendsList else { fatalError() }
        
        guard let date = sections[sectionTitles[indexPath.section]]?[indexPath.row] else { fatalError() }
        
        cell.configure(list: date)
        cell.backgroundColor = .systemGray5
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        name = sections[sectionTitles[indexPath.section]]?[indexPath.row]
        picture = sections[sectionTitles[indexPath.section]]?[indexPath.row]
        performSegue(withIdentifier: "personVC", sender: nil)
    }
}
