//
//  LaunchScreenViewController.swift
//  VKontakte
//
//  Created by Ольга on 16.03.2023.
//

import UIKit

final class LaunchScreenViewController: UIViewController {
    
    private let leftCircle: UIImageView = {
        let leftCircle = UIImageView(frame: CGRect(x: 110, y: 400, width: 50, height: 50))
        leftCircle.backgroundColor = .red
        leftCircle.layer.cornerRadius = 25
        return leftCircle
    }()
    private let centerCircle: UIImageView = {
        let centerCircle = UIImageView(frame: CGRect(x: 170, y: 400, width: 50, height: 50))
        centerCircle.backgroundColor = .red
        centerCircle.layer.cornerRadius = 25
        return centerCircle
    }()
    private let rightCircle: UIImageView = {
        let rightCircle = UIImageView(frame: CGRect(x: 230, y: 400, width: 50, height: 50))
        rightCircle.backgroundColor = .red
        rightCircle.layer.cornerRadius = 25
        return rightCircle
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(centerCircle)
        view.addSubview(leftCircle)
        view.addSubview(rightCircle)
        view.backgroundColor = .systemBlue
        animateLeftCircle()
        animateCenterCircle()
        animateRightCircle()
    }
    
    private func animateLeftCircle() {
        UIView.animate(withDuration: 3) {
            self.leftCircle.alpha = 0.8
        }
    }
    
    private func animateCenterCircle() {
        UIView.animate(withDuration: 5, delay: 2) {
            self.centerCircle.alpha = 0.5
        }
    }
    
    private func animateRightCircle() {
        UIView.animate(withDuration: 5, delay: 4) {
            self.rightCircle.alpha = 0.2
        } completion: { result in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let vc = storyboard.instantiateViewController(withIdentifier: "loginVC") as? LoginViewController else { fatalError() }
            self.present(vc, animated: true)
        }
    }
}
