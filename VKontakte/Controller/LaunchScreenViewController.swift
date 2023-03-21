//
//  LaunchScreenViewController.swift
//  VKontakte
//
//  Created by Ольга on 16.03.2023.
//

import UIKit

final class LaunchScreenViewController: UIViewController {
    
    private let leftCircle = CustomView(frame: CGRect(x: 110, y: 400, width: 50, height: 50))
    private let centerCircle = CustomView(frame: CGRect(x: 170, y: 400, width: 50, height: 50))
    private let rightCircle = CustomView(frame: CGRect(x: 230, y: 400, width: 50, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()

        [centerCircle, leftCircle, rightCircle].forEach({view.addSubview($0)})
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
