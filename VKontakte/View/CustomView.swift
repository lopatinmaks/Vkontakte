//
//  CustomView.swift
//  VKontakte
//
//  Created by Ольга on 20.03.2023.
//

import UIKit

final class CustomView: UIView {
    
    private let leftCircle: UIImageView = {
            let leftCircle = UIImageView(frame: CGRect(x: 110, y: 400, width: 50, height: 50))
            return leftCircle
        }()
    
    private let centerCircle: UIImageView = {
            let centerCircle = UIImageView(frame: CGRect(x: 170, y: 400, width: 50, height: 50))
            return centerCircle
        }()
    
    private let rightCircle: UIImageView = {
            let rightCircle = UIImageView(frame: CGRect(x: 230, y: 400, width: 50, height: 50))
            return rightCircle
        }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupImageView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupImageView()
    }
    
    private func setupImageView() {
        backgroundColor = .red
        layer.cornerRadius = 25
        addSubview(leftCircle)
        addSubview(centerCircle)
        addSubview(rightCircle)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            centerCircle.centerYAnchor.constraint(equalTo: centerYAnchor),
            centerCircle.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
