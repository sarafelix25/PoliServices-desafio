//
//  CustomView.swift
//  PoliServices
//
//  Created by Sara Batista dos Santos Felix on 2/25/23.
//

import UIKit

final class CustomView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(NewCell.self, forCellWithReuseIdentifier: "newCell")
        return collectionView
//        let newService.translatesAutoresizingMaskIntoConstraints = false
//        newService.delegate = self
//        newService.dataSource = self
//
//        return newService
    }()

    var items = ["x", "y", "z", "w"]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IndexPath, for: "newCell")
    }
    
//    override func layout() {
//        super.setLayout()
//        backgroundColor = backgroundColor
//    }
//
//    func setLayout() {
//        addSubview(newService)
//
//        NSLayoutConstraint.activate([
//            newService.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
//            newService.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
//            newService.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
//            newService.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
//        ])
//    }
}
