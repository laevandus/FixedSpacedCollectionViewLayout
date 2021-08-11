//
//  ViewController.swift
//  FixedSpacedCollectionViewLayout
//
//  Created by Toomas Vahter on 11.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView?

    override func viewDidLoad() {
        super.viewDidLoad()
        let items: [[String]] = [
            ["Apple", "Pear", "Orange", "Fig", "Carrot", "Cabbage", "Potato"],
            //["Coffee", "Tea", "Lemonade"]
        ]
        let controller = CollectionViewController(items: items)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        stackView?.addArrangedSubview(controller.view)
        addChild(controller)
    }
}

