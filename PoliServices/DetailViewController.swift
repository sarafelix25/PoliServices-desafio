//
//  DetailsViewController.swift
//  PoliServices
//
//  Created by Sara Batista dos Santos Felix on 2/10/23.
//

import UIKit

class DetailViewController: UIViewController {

    private lazy var customView = CustomView()

    override func viewDidLoad() {
        view.backgroundColor = .systemGray6
    }

    override func loadView() {
            super.loadView()
            view = customView as? UIView
        }
}
