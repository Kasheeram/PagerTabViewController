//
//  CollectionViewCell.swift
//  PagerTabViewController
//
//  Created by kashee on 09/09/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    let scrollView:UIScrollView = {
        let scrollVW = UIScrollView()
        scrollVW.translatesAutoresizingMaskIntoConstraints = false
        return scrollVW
    }()
    
    let lineLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.numberOfLines = 0
        return label
    }()
    
    let nameLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Father Name*"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let phoneLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Father Phone*"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let emailLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Father Email"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let occupationLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Father Occupation"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let addressLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Father Address"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let cityLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "City"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let pinLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pin"
        label.textColor = UIColor.init(red: 33.0/255, green: 73.0/255, blue: 88.0/255, alpha: 0.75)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    let nameTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.text = "Father name"
        textField.textColor = UIColor.init(red: 50.0/255, green: 60.0/255, blue: 71.0/255, alpha: 1)
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let phoneTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.text = "9971474399"
        textField.textColor = UIColor.init(red: 50.0/255, green: 60.0/255, blue: 71.0/255, alpha: 1)
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let emailTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.text = "Email"
        textField.textColor = UIColor.init(red: 50.0/255, green: 60.0/255, blue: 71.0/255, alpha: 1)
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let occupationTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.text = "Occupation"
        textField.textColor = UIColor.init(red: 50.0/255, green: 60.0/255, blue: 71.0/255, alpha: 1)
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let addressTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.text = "Address"
        textField.textColor = UIColor.init(red: 50.0/255, green: 60.0/255, blue: 71.0/255, alpha: 1)
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let cityTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.text = "City"
        textField.textColor = UIColor.init(red: 50.0/255, green: 60.0/255, blue: 71.0/255, alpha: 1)
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    let pinTextField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.text = "Pin"
        textField.textColor = UIColor.init(red: 50.0/255, green: 60.0/255, blue: 71.0/255, alpha: 1)
        textField.font = UIFont.boldSystemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    var parentPage:ParentPage? {
        didSet {
            guard let unwrapedPage = parentPage else { return }
            nameLabel.text = unwrapedPage.nameTitle
            nameTextField.placeholder = unwrapedPage.namePlaceHolder
            phoneLabel.text = unwrapedPage.phoneTitle
            phoneTextField.placeholder = unwrapedPage.phonePlaceHolder
            emailLabel.text = unwrapedPage.emailTitle
            emailTextField.placeholder = unwrapedPage.emailPlaceHolder
            occupationLabel.text = unwrapedPage.occupationTitle
            occupationTextField.placeholder = unwrapedPage.occupationPlaceHolder
            addressLabel.text = unwrapedPage.addressTitle
            addressTextField.placeholder = unwrapedPage.occupationPlaceHolder
            cityLabel.text = unwrapedPage.addressTitle
            cityTextField.placeholder = unwrapedPage.cityPlaceHolder
            pinLabel.text = unwrapedPage.pinTitle
            pinTextField.placeholder = unwrapedPage.pinPlaceHolder
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addAutoLayoutConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAutoLayoutConstraints(){
        self.backgroundColor = .white
        self.addSubview(scrollView)
        scrollView.addSubview(nameLabel)
        scrollView.addSubview(nameTextField)
        
        scrollView.addSubview(phoneLabel)
        scrollView.addSubview(phoneTextField)
        
        scrollView.addSubview(emailLabel)
        scrollView.addSubview(emailTextField)
        
        scrollView.addSubview(occupationLabel)
        scrollView.addSubview(occupationTextField)
        
        scrollView.addSubview(addressLabel)
        scrollView.addSubview(addressTextField)
        
        scrollView.addSubview(cityLabel)
        scrollView.addSubview(cityTextField)
        
        scrollView.addSubview(pinLabel)
        scrollView.addSubview(pinTextField)
        
        scrollView.addSubview(lineLabel)
        
        
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
      
        nameLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 60).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        phoneLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10).isActive = true
        phoneLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        phoneLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        phoneLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        phoneTextField.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 1).isActive = true
        phoneTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        phoneTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        phoneTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 10).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        emailLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 1).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        occupationLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        occupationLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        occupationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        occupationLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        occupationTextField.topAnchor.constraint(equalTo: occupationLabel.bottomAnchor, constant: 1).isActive = true
        occupationTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        occupationTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        occupationTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        addressLabel.topAnchor.constraint(equalTo: occupationTextField.bottomAnchor, constant: 10).isActive = true
        addressLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        addressLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        addressLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addressTextField.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 1).isActive = true
        addressTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        addressTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        addressTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        cityLabel.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 10).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        cityLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        cityLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        cityTextField.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 1).isActive = true
        cityTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        cityTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        cityTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        pinLabel.topAnchor.constraint(equalTo: cityTextField.bottomAnchor, constant: 10).isActive = true
        pinLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        pinLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        pinLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        pinTextField.topAnchor.constraint(equalTo: pinLabel.bottomAnchor, constant: 1).isActive = true
        pinTextField.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        pinTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-20).isActive = true
        pinTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        pinTextField.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor,constant:-20).isActive = true
        
        
        lineLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor).isActive = true
        lineLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 30).isActive = true
        lineLabel.widthAnchor.constraint(equalToConstant: 6).isActive = true
        lineLabel.bottomAnchor.constraint(equalTo: pinTextField.bottomAnchor).isActive = true
    }
}
