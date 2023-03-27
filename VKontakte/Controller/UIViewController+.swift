//
//  UIViewController+.swift
//  VKontakte
//
//  Created by Ольга on 02.03.2023.
//

import UIKit

extension UIViewController {
    func createAlert(title: String, message: String, style: UIAlertController.Style, completion: @escaping (String?) -> ()) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        alert.addTextField { (textfield) in
            textfield.placeholder = "Название группы"
        }
        
        let action = UIAlertAction(title: "OK", style: .default) {
            action in
            guard let firstText = alert.textFields?.first else { return }
            completion(firstText.text)
        }
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    func showLoginError(title: String, message: String, style: UIAlertController.Style) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let action = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(action)
        
        present(alert, animated: true)
    }
}
