//
//  GlobalSearchTableViewController.swift
//  VKontakte
//
//  Created by Ольга on 25.01.2023.
//

import UIKit

final class GlobalSearchTableViewController: UITableViewController {
    
    //MARK: - Propertys array
    
    private var globalGroup = [
        MyGroups(nameOfGroup: "Курсы начинающих пикаперов", avatarGroup: "27"),
        MyGroups(nameOfGroup: "Крастоки твоего города", avatarGroup: "28"),
        MyGroups(nameOfGroup: "Аниматоры на детское мероприятие", avatarGroup: "29"),
        MyGroups(nameOfGroup: "Все либерасты в одной группе", avatarGroup: "30"),
        MyGroups(nameOfGroup: "Злюка и вредина", avatarGroup: "31"),
        MyGroups(nameOfGroup: "Азиатское порно 18+", avatarGroup: "32"),
        MyGroups(nameOfGroup: "Им изменила жена, а они не знают", avatarGroup: "33"),
        MyGroups(nameOfGroup: "Прокат белых шляп и пальто, а также синих очков", avatarGroup: "34"),
        MyGroups(nameOfGroup: "Курсы орального секса", avatarGroup: "35"),
        MyGroups(nameOfGroup: "Парики на прокат для классных фоточек с цветами", avatarGroup: "36")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44.0
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalGroup.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "globalSearchGroup", for: indexPath) as? GlobalSearchCellTableViewCell else { fatalError() }
        
        let info = globalGroup[indexPath.row]
        
        cell.configure(global: info)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}
