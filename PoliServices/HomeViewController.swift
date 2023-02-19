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

    private lazy var sobreStackView: UIStackView = {
        let sobreStackView = UIStackView(arrangedSubviews: [sobreTitleLabel, sobreDescricaoLabel])
        sobreStackView.translatesAutoresizingMaskIntoConstraints = false
        sobreStackView.alignment = .fill
        sobreStackView.axis = .vertical
        sobreStackView.contentMode = .scaleAspectFill
        sobreStackView.distribution = .fillProportionally
        sobreStackView.clipsToBounds = true
        sobreStackView.autoresizesSubviews = true
        sobreStackView.layer.cornerRadius = 8
        sobreStackView.backgroundColor = .white
        return sobreStackView
    }()

    private lazy var sobreTitleLabel: UILabel = {
        let sobreTitleLabel = UILabel()
        sobreTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        sobreTitleLabel.text = "Sobre nós"
        sobreTitleLabel.textColor = .black
        sobreTitleLabel.font = .systemFont(ofSize: 16, weight: .bold)
        sobreTitleLabel.numberOfLines = 0
        return sobreTitleLabel
    }()

    private lazy var sobreDescricaoLabel: UILabel = {
        let sobreDescricaoLabel = UILabel()
        sobreDescricaoLabel.translatesAutoresizingMaskIntoConstraints = false
        sobreDescricaoLabel.text = "A DevServices é o melhor aplicativo para reservar seu agendamento com serviços. Aqui é um espaço que você consegue reservar um espaço na minha agenda e vamos resolver suas dúvidas.\nSelecione o tipo de atendimento e vamos pra cima!\n\n*Ilustrativo"
        sobreDescricaoLabel.textColor = .black
        sobreDescricaoLabel.font = .systemFont(ofSize: 14, weight: .regular)
        sobreDescricaoLabel.numberOfLines = 0
        return sobreDescricaoLabel
    }()

//    private lazy var line: UILabel = {
//
//    }()

    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Solicitar novo serviço", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.backgroundColor = .systemGray5
        button.clipsToBounds = true
        button.layer.cornerRadius = 16
        return button
    }()

    func setLayout() {
        view.addSubview(titleLabel)
        view.addSubview(dateLabel)
        view.addSubview(button)
        view.addSubview(sobreStackView)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),

            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            dateLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),

            sobreStackView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 32),
            sobreStackView.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor, constant: 32),
            sobreStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            sobreStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
}
