//
//  StartViewController.swift
//  Sample
//
//  Created by Максим Соловьёв on 30.11.2020.
//

import UIKit

class StartViewController: UIViewController {
    
    let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Напишите кому и на какой праздник необходимо поздравление"
        label.font = UIFont(name: "Copperplate", size: 18)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.sizeToFit()
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    let surnameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 4
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.placeholder = "Фамилия"
        return textField
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 4
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.placeholder = "Имя"
        return textField
    }()
    
    let middleNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 4
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.placeholder = "Отчество"
        return textField
    }()
    
    let celebrationTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 4
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.placeholder = "Праздник"
        return textField
    }()
    
    let writeDownButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button.backgroundColor = UIColor(red: 1, green: 0.7745760218, blue: 0.2390334857, alpha: 1)
        button.setTitle("Написать поздравление", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.8958405852, green: 0.8137683272, blue: 0.6871850491, alpha: 1)
        writeDownButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        setupConstraints()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    
    @objc func didTapButton() {
        let mainVC = MainViewController()
        self.navigationController?.pushViewController(mainVC, animated: true)
        mainVC.modalPresentationStyle = .fullScreen
        present(mainVC, animated: true)
        
        guard let surnameTF = self.surnameTextField.text,
              let nameTF = self.nameTextField.text,
              let middleTF = self.middleNameTextField.text,
              let celebrationTF = self.celebrationTextField.text else { return }
        
        mainVC.textLabel.text = "Дорогой наш именинник \(surnameTF) \(nameTF) \(middleTF) в этот \(celebrationTF) поздравляем тебя !!! Желаем всего самого светлого, доброго и хорошего. Пусть все мечты сбываются и во всех сферах деятельности всё получается. Пусть каждый день приносит радость и счастье, и грустные дни проходят мимо, а все самое доброе остается с тобой."

    }
    
    func setupConstraints() {
        
        view.addSubview(mainView)
        mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        mainView.addSubview(infoLabel)
        infoLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 40).isActive = true
        infoLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        infoLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor).isActive = true
        infoLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor).isActive = true
        
        mainView.addSubview(surnameTextField)
        surnameTextField.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        surnameTextField.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 30).isActive = true
        surnameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        surnameTextField.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        surnameTextField.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
        
        mainView.addSubview(nameTextField)
        nameTextField.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        nameTextField.topAnchor.constraint(equalTo: surnameTextField.bottomAnchor, constant: 20).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
        
        mainView.addSubview(middleNameTextField)
        middleNameTextField.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        middleNameTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20).isActive = true
        middleNameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        middleNameTextField.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        middleNameTextField.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
        
        mainView.addSubview(celebrationTextField)
        celebrationTextField.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        celebrationTextField.topAnchor.constraint(equalTo: middleNameTextField.bottomAnchor, constant: 20).isActive = true
        celebrationTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        celebrationTextField.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        celebrationTextField.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
        
        mainView.addSubview(writeDownButton)
        writeDownButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        writeDownButton.topAnchor.constraint(equalTo: celebrationTextField.bottomAnchor, constant: 20).isActive = true
        writeDownButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        writeDownButton.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20).isActive = true
        writeDownButton.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20).isActive = true
    }
    
}
