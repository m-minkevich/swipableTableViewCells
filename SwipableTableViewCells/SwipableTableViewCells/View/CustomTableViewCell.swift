//
//  CustomTableViewCell.swift
//  SwipableTableViewCells
//
//  Created by Matt Minkevich on 3/27/20.
//  Copyright © 2020 Verso Development. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var person: Person! {
        didSet {
            fullnameLabel.text = person.fullName
            jobTitleLabel.text = person.jobTitle
        }
    }
    
    fileprivate let fullnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Fullname"
        return label
    }()
    
    fileprivate let jobTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Job title"
        return label
    }()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let stackView = UIStackView(arrangedSubviews: [fullnameLabel, jobTitleLabel])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
