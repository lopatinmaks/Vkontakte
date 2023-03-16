//
//  CollectionViewCell.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit
import CoreGraphics

final class CollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet private var photoImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var countLabel: UILabel!
    @IBOutlet private var heartButton: UIButton!
    @IBOutlet private var containerView: UIView!
    
    //MARK: - Propertys
    
    var name: String?
    var avatar: String?
    private var count: Int = 0
    
    func configure(name: String, avatar: String, count: String) {
        nameLabel.text = name
        photoImageView.image = UIImage(named: avatar)
        
        heartButton.addTarget(self, action: #selector(tappedHeart(_ :)), for: .touchUpInside)
    }
    
    @objc private func tappedHeart(_ sender: UIButton) {
        isSelected.toggle()
        if isSelected {
            tappedHeart(imageName: "heart", tintColor: .lightGray, count: "0")
            UIView.animate(withDuration: 5.0) {
                self.countLabel.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                //self.countLabel.transform = .identity
            }
        } else {
            tappedHeart(imageName: "heart.fill", tintColor: .red, count: "1")
            UIView.animate(withDuration: 5.0) {
                self.countLabel.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            }
        }
    }
    
    private func tappedHeart(imageName: String, tintColor: UIColor, count: String) {
        heartButton.setImage(UIImage(systemName: imageName), for: .normal)
        heartButton.tintColor = tintColor
        countLabel.text = count
    }
}
