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

    private lazy var codigoButton: UIButton = {
        let codigoButton = UIButton(configuration: .borderedTinted())
        codigoButton.translatesAutoresizingMaskIntoConstraints = false
        codigoButton.setImage(.init(systemName: "pen"), for: .normal)
        codigoButton.setTitle("Código", for: .normal)
        return codigoButton
    }()
    func setLayout() {
        view.addSubview(novoServico)
        view.addSubview(codigoButton)

        NSLayoutConstraint.activate([
            novoServico.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            novoServico.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            novoServico.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            novoServico.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),

            codigoButton.topAnchor.constraint(equalTo: novoServico.bottomAnchor, constant: 12),
            codigoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            codigoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            codigoButton.heightAnchor.constraint(equalToConstant: 120),
//            codigoButton.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
}
