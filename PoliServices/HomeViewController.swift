//
//  HomeViewController.swift
//  PoliServices
//
//  Created by Sara Batista dos Santos Felix on 2/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .clear
        setLayout()
    }

    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Bem-Vindo ao DevServices"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 32, weight: .bold)
        titleLabel.numberOfLines = 0
        return titleLabel
    }()


    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Solicitar novo serviço", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.backgroundColor = .lightGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 15
        return button
    }()

    func setLayout() {
        view.addSubview(titleLabel)
        view.addSubview(button)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 14),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -14),
//            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            button.heightAnchor.constraint(equalToConstant: 40)


        ])
    }
}
