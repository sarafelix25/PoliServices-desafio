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

    private lazy var novoServico: UILabel = {
        let novoServico = UILabel()
        novoServico.translatesAutoresizingMaskIntoConstraints = false
        novoServico.text = "Novo Serviço"
        novoServico.textAlignment = .center
        novoServico.textColor = .black
        novoServico.font = .systemFont(ofSize: 14, weight: .bold)
        return novoServico
    }()
gi
    func setLayout() {
        view.addSubview(novoServico)

        NSLayoutConstraint.activate([
            novoServico.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        novoServico.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        novoServico.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
}
