//
//  PersonCollectionViewController.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class PersonCollectionViewController: UICollectionViewController {
    
    //MARK: - Propertys
    
    var name: String?
    var picture: String?
    private var photos = [#imageLiteral(resourceName: "1.jpeg"), #imageLiteral(resourceName: "2.jpeg"), #imageLiteral(resourceName: "3.jpeg"), #imageLiteral(resourceName: "4.jpeg"), #imageLiteral(resourceName: "5.jpeg"), #imageLiteral(resourceName: "6.jpeg"), #imageLiteral(resourceName: "7.jpeg"), #imageLiteral(resourceName: "8.jpeg"), #imageLiteral(resourceName: "9.jpeg"), #imageLiteral(resourceName: "10.jpeg"), #imageLiteral(resourceName: "11.jpeg"), #imageLiteral(resourceName: "12.jpeg"), #imageLiteral(resourceName: "13.jpeg"), #imageLiteral(resourceName: "14.jpeg")]
    private var defaultPhoto: String = "Ждун"
    private var countHeart = ""
    private var nextIndex = 0
    private var currentPicture: UIImageView?
    private let originalSize = 300
    private var activeSize: CGFloat {
        return CGFloat(originalSize - 200)
    }

    //MARK: - Life cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNextPicture()
    }
    
    private func showNextPicture() {
        if let newPicture = createPicture() {
            currentPicture = newPicture
            showPicture(newPicture)
            
            let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(gesture: )))
            swipeGesture.direction = .left
            collectionView.addGestureRecognizer(swipeGesture)
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(gesture: )))
            swipe.direction = .right
            collectionView.addGestureRecognizer(swipe)
        } else {
            nextIndex = 0
            showNextPicture()
        }
    }
    
    @objc private func onSwipe(gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            hidePicture()
            showNextPicture()
        } else if gesture.direction == .right {
            hidePictureRight()
            showNextPicture()
        }
    }
    
    private func createPicture() -> UIImageView? {
        guard nextIndex < photos.count else { return nil }
        let imageView = UIImageView(image: photos[nextIndex])
        imageView.frame = CGRect(x: Int(self.view.frame.width), y: Int(self.view.center.x) - (originalSize / 2), width: originalSize, height: originalSize)
        imageView.contentMode = .scaleAspectFill

        nextIndex += 1
        return imageView
    }
    
    private func showPicture(_ imageView: UIImageView) {
        self.view.addSubview(imageView)

        UIView.animate(withDuration: 0.4) {
            imageView.center = self.view.center
        }
    }

    private func hidePicture() {
        UIView.animate(withDuration: 0.4) {
            self.currentPicture?.frame.origin.x = CGFloat(-self.originalSize)
            self.currentPicture?.frame.size = CGSize(width: self.activeSize, height: self.activeSize)
        }
    }
    
    private func hidePictureRight() {
        UIView.animate(withDuration: 0.4) {
            self.currentPicture?.frame.origin.x = CGFloat(self.originalSize)
            self.currentPicture?.frame.size = CGSize(width: self.activeSize, height: self.activeSize)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else { fatalError() }
        
        cell.configure(name: name ?? defaultPhoto, avatar: picture ?? defaultPhoto, count: countHeart)

        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5) {
                cell?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                cell?.transform = .identity
        }
    }
}
