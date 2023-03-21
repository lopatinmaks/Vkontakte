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
    private var defaultPhoto: String = "Ждун"
    var countHeart = ""

    //MARK: - Life cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
