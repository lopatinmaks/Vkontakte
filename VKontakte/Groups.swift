//
//  Groups.swift
//  VKontakte
//
//  Created by Ольга on 25.01.2023.
//

import UIKit

final class Groups: UITableViewController {

    //MARK: - IBAction go in next VC
    @IBAction func addWord(_ sender: UIBarButtonItem) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let searchVC = storyboard.instantiateViewController(withIdentifier: "searchVC") as? GlobalSearch else { return }
        
        present(searchVC, animated: true)
    }
}
