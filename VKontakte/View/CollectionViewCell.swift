//
//  CollectionViewCell.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel! 
      
    //MARK: - Propertys
    
    var name: String?
    var avatar: String?
        
    init?(photoImageView: UIImageView!, nameLabel: UILabel!) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
