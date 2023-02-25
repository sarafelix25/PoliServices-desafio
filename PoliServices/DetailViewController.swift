//
//  DetailsViewController.swift
//  PoliServices
//
//  Created by Sara Batista dos Santos Felix on 2/10/23.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .systemGray6
        setLayout()
    }

    private lazy var newService: UILabel = {
        let newService = UILabel()
        newService.translatesAutoresizingMaskIntoConstraints = false
        newService.text = "Novo Serviço"
        newService.textAlignment = .center
        newService.textColor = .black
        newService.font = .systemFont(ofSize: 14, weight: .bold)
        return newService
    }()


    func setLayout() {
        view.addSubview(newService)

        NSLayoutConstraint.activate([
            newService.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            newService.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            newService.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            newService.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
}
