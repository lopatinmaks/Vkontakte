//
//  PersonCollectionViewController.swift
//  VKontakte
//
//  Created by Ольга on 27.01.2023.
//

import UIKit

final class PersonCollectionViewController: UICollectionViewController {
    
    //MARK: - Propertys
    
    var persons = [Friends]()
    
    var name: String?
    var picture: String?
    
    //MARK: - Life cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let friends = [Friends]()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1 }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else { fatalError() }
        
        cell.photoImageView.image = UIImage(named: picture ?? "")
        cell.nameLabel.text = name

        return cell
    }
}
