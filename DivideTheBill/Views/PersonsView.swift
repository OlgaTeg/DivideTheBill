//
//  PersonsView.swift
//  DivideTheBill
//
//  Created by Olga Tegza on 07.04.2023.
//

import UIKit

class PersonsView: UIView {
    let titleLabel: UILabel  = {
        let label = UILabel()
        label.text = "Persons"
        label.textColor = #colorLiteral(red: 0.1882352941, green: 0.2235294118, blue: 0.2784313725, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let backgroundPersonsView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9490196078, blue: 0.9411764706, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton (type: .system)
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        button.tintColor = .black
        button.isEnabled = false
        button.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton (type: .system)
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let counterLabel: UILabel  = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 48)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var counter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(backgroundPersonsView)
        backgroundPersonsView.addSubview(minusButton)
        backgroundPersonsView.addSubview(plusButton)
        backgroundPersonsView.addSubview(counterLabel)
    }
    
    @objc func minusButtonTapped() {
        counter -= 1
        counterLabel.text = "\(counter)"
        if counter == 0 {
            minusButton.isEnabled = false
        }
    }
    
    @objc func plusButtonTapped() {
        counter += 1
        counterLabel.text = "\(counter)"
        minusButton.isEnabled = true
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        
        backgroundPersonsView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
        backgroundPersonsView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
        backgroundPersonsView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
        backgroundPersonsView.heightAnchor.constraint(equalToConstant: 100),
        
        minusButton.topAnchor.constraint(equalTo: backgroundPersonsView.topAnchor, constant: 0),
        minusButton.leadingAnchor.constraint(equalTo: backgroundPersonsView.leadingAnchor, constant: 0),
        minusButton.heightAnchor.constraint(equalTo: backgroundPersonsView.heightAnchor),
        minusButton.widthAnchor.constraint(equalToConstant: 80),
        
        plusButton.topAnchor.constraint(equalTo: backgroundPersonsView.topAnchor, constant: 0),
        plusButton.trailingAnchor.constraint(equalTo: backgroundPersonsView.trailingAnchor, constant: 0),
        plusButton.heightAnchor.constraint(equalTo: backgroundPersonsView.heightAnchor),
        plusButton.widthAnchor.constraint(equalToConstant: 80),
        
        counterLabel.centerYAnchor.constraint(equalTo: backgroundPersonsView.centerYAnchor, constant: 0),
        counterLabel.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 10),
        counterLabel.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor, constant: -10)
        ])
    }
}
