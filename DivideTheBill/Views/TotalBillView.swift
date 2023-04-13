//
//  TotalBillView.swift
//  DivideTheBill
//
//  Created by Olga Tegza on 07.04.2023.
//

import UIKit

class TotalBillView: UIView {
    let titleLabel: UILabel  = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = #colorLiteral(red: 0.1882352941, green: 0.2235294118, blue: 0.2784313725, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sumTextField: UITextField  = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9490196078, blue: 0.9411764706, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = .black
        textField.tintColor = .black
        textField.textAlignment = .center
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.font = UIFont(name: "Avenir Next", size: frame.width / 26.7)
        sumTextField.font = UIFont(name: "Avenir Next Bold", size: frame.height / 2.6)
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(sumTextField)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        titleLabel.heightAnchor.constraint(equalToConstant: 20),
        
        sumTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
        sumTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
        sumTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
        sumTextField.bottomAnchor.constraint(equalTo: bottomAnchor,constant: 0)
        ])
    }
}
