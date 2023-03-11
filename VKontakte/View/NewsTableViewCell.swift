//
//  NewsTableViewCell.swift
//  VKontakte
//
//  Created by Ольга on 11.03.2023.
//

import UIKit

final class NewsTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var photoImageView: UIImageView!
    @IBOutlet private var likeButton: UIButton!
    @IBOutlet private var countLabel: UILabel!
    @IBOutlet private var containerView: UIView!
    @IBOutlet private var messageButton: UIButton!
    @IBOutlet private var shareButton: UIButton!
    @IBOutlet private var eyeImageView: UIImageView!
    @IBOutlet private var viewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.setNeedsDisplay()
    }

    func configure(news: News) {
        avatarImageView.image = UIImage(named: news.avatar)
        nameLabel.text = news.name
        descriptionLabel.text = news.description
        dateLabel.text = news.date
        photoImageView.image = UIImage(named: news.photo)
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.setNeedsDisplay()
    }
}
