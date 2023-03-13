//
//  NewsTableViewController.swift
//  VKontakte
//
//  Created by Ольга on 11.03.2023.
//

import UIKit

final class NewsTableViewController: UITableViewController {
    
    //MARK: - Propertys array
    
    private var newsFeed = [
        News(avatar: "1", date: "5 мар в 10:12", name: "Sergei Klimovskikh", description: "Как здорово, когда твои детские не реализованные мечты все-таки сбываются, да еще и привлекают к этому всех твоих родных и близких людей! Ну вот тренировки пропустил КОННАЯ УСАДЬБА, хоть пост написал", photo: "123"),
        News(avatar: "1", date: "5 мар в 10:12", name: "Sergei Klimovskikh", description: "Как здорово, когда твои детские не реализованные мечты все-таки сбываются, да еще и привлекают к этому всех твоих родных и близких людей! Ну вот тренировки пропустил КОННАЯ УСАДЬБА, хоть пост написал", photo: "123"),
        News(avatar: "1", date: "5 мар в 10:12", name: "Sergei Klimovskikh", description: "Как здорово, когда твои детские не реализованные мечты все-таки сбываются, да еще и привлекают к этому всех твоих родных и близких людей! Ну вот тренировки пропустил КОННАЯ УСАДЬБА, хоть пост написал", photo: "123"),
        News(avatar: "1", date: "5 мар в 10:12", name: "Sergei Klimovskikh", description: "Как здорово, когда твои детские не реализованные мечты все-таки сбываются, да еще и привлекают к этому всех твоих родных и близких людей! Ну вот тренировки пропустил КОННАЯ УСАДЬБА, хоть пост написал", photo: "123"),
        News(avatar: "1", date: "5 мар в 10:12", name: "Sergei Klimovskikh", description: "Как здорово, когда твои детские не реализованные мечты все-таки сбываются, да еще и привлекают к этому всех твоих родных и близких людей! Ну вот тренировки пропустил КОННАЯ УСАДЬБА, хоть пост написал", photo: "123")
    ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsFeed.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "news", for: indexPath) as? NewsTableViewCell else { fatalError() }

        let data = newsFeed[indexPath.row]
        
        cell.configure(news: data)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600.0
    }
}
