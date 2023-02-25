//
//  HomeViewController.swift
//  PoliServices
//
//  Created by Sara Batista dos Santos Felix on 2/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .systemGray6
        setLayout()
    }

    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Bem-Vindo ao DevServices"
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 32, weight: .bold)
        titleLabel.numberOfLines = 0
        return titleLabel
    }()

    private lazy var dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.text = "16 de fevereiro de 2023"
        dateLabel.textColor = .darkGray
        dateLabel.font = .systemFont(ofSize: 14, weight: .thin)
        return dateLabel
    }()

    private lazy var stackView: UIStackView = {
        let  stackView = UIStackView(arrangedSubviews: [titleDescription, descriptionLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.contentMode = .scaleAspectFill
        stackView.distribution = .fillProportionally
        stackView.clipsToBounds = true
        stackView.autoresizesSubviews = true
        return stackView
    }()

    private lazy var titleDescription: UILabel = {
        let titleDescription = UILabel()
        titleDescription.translatesAutoresizingMaskIntoConstraints = false
        titleDescription.text = "Sobre nós"
        titleDescription.textColor = .black
        titleDescription.font = .systemFont(ofSize: 16, weight: .bold)
        titleDescription.numberOfLines = 0
        return titleDescription
    }()

    private lazy var descriptionLabel: UILabel = {
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        description.text = "A DevServices é o melhor aplicativo para reservar seu agendamento com serviços. Aqui é um espaço que você consegue reservar um espaço na minha agenda e vamos resolver suas dúvidas.\nSelecione o tipo de atendimento e vamos pra cima!\n\n*Ilustrativo"
        description.textColor = .black
        description.font = .systemFont(ofSize: 14, weight: .regular)
        description.numberOfLines = 0
        return description
    }()

    private lazy var cardView: UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 8
        return cardView
    }()

    private lazy var line: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .systemIndigo
        return line
    }()

    private lazy var button: UIButton = {
        let button = UIButton(configuration: .tinted())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Solicitar novo serviço", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        return button
    }()

    func setLayout() {
        view.addSubview(titleLabel)
        view.addSubview(dateLabel)
        view.addSubview(button)
        view.addSubview(cardView)
        cardView.addSubview(stackView)
        view.addSubview(line)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            dateLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),

            cardView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 32),
            cardView.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor, constant: 16),
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -32),
            cardView.heightAnchor.constraint(equalToConstant: 200),

            stackView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10),
            stackView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor),

            line.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 32),
            line.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55),
            line.heightAnchor.constraint(equalToConstant: 1),
            line.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            button.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 32),
            button.heightAnchor.constraint(equalToConstant: 42),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
