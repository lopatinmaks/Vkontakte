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
    var defaultPhoto: String = ""
    
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
        
        cell.setup(name: name ?? defaultPhoto, avatar: picture ?? defaultPhoto)

        return cell
    }
}
