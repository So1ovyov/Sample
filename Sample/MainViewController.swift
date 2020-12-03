//
//  MainViewController.swift
//  Sample
//
//  Created by Максим Соловьёв on 30.11.2020.
//

import UIKit

class MainViewController: UIViewController {
    
    var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = UIFont(name: "Copperplate", size: 22)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.sizeToFit()
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    let returnButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.7745760218, blue: 0.2390334857, alpha: 1)
        button.setTitle("Назад", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.backgroundColor = UIColor(red: 0.8958405852, green: 0.8137683272, blue: 0.6871850491, alpha: 1)
        setupConstraints()
    }
    
    @objc func didTapButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupConstraints() {
        
        view.addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        
        view.addSubview(returnButton)
        returnButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 20).isActive = true
        returnButton.centerXAnchor.constraint(equalTo: textLabel.centerXAnchor).isActive = true
        returnButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        returnButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
}
