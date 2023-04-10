//
//  TipsCollectionViewCell.swift
//  DivideTheBill
//
//  Created by Olga Tegza on 07.04.2023.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    let percentLabel: UILabel  = {
        let label = UILabel()
        label.text = "10%"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 3
                layer.borderColor = #colorLiteral(red: 0.1843137255, green: 0.7647058824, blue: 0.4352941176, alpha: 1)
            } else {
                layer.borderWidth = 0
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9442129731, green: 0.9491841197, blue: 0.9404790998, alpha: 1)
        layer.cornerRadius = 10
        
        addSubview(percentLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            percentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            percentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2),
            percentLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
