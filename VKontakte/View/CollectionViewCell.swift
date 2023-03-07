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
    
    func configure(name: String, avatar: String) {
        nameLabel.text = name
        photoImageView.image = UIImage(named: avatar)
        
        heartButton.addTarget(self, action: #selector(tappedHeart(_ :)), for: .touchUpInside)
    }
    
    @objc private func tappedHeart(_ sender: UIButton) {
        isSelected.toggle()
        if isSelected {
            heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
            heartButton.tintColor = .lightGray
            countLabel.text = "0"
        } else {
            heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            heartButton.tintColor = .red
            countLabel.text = "1"
        }
    }
}
