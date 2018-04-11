//
//  MainViewController.swift
//  StackViewExample
//
//  Created by Hoàng Khánh on 4/6/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var mainStackView:UIStackView = UIStackView()
    
    var stackView1:UIStackView = UIStackView()
    var imageView:UIImageView = UIImageView()
    var stackView11:UIStackView = UIStackView()
    var label1:UILabel?
    var label2:UILabel?
    var label3:UILabel?
    var stackView12:UIStackView = UIStackView()
    var txt1:UITextField?
    var txt2:UITextField?
    var txt3:UITextField?
    
    var txtViewDescription:UITextView = UITextView()
    
    var stackView2:UIStackView = UIStackView()
    var btnCancel:UIButton = UIButton()
    var btnSave:UIButton = UIButton()
    var btnClear:UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.autolayoutMainStackView()
        self.autolayoutStackView1()
        self.autolayoutTextViewDescription()
        self.autolayoutStackView2()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func autolayoutMainStackView() {
        
        view.addSubview(mainStackView)
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                               constant: UIDevice.setSize(iPhone: 10, iPad: 20)).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                constant: UIDevice.setSize(iPhone: -10, iPad: -20)).isActive = true
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor,
                                           constant: UIDevice.setSize(iPhone: 30, iPad: 50)).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor,
                                              constant: UIDevice.setSize(iPhone: -10, iPad: -20)).isActive = true
        
        mainStackView.axis = .vertical
        mainStackView.alignment = .fill
        mainStackView.distribution = .fill
        mainStackView.spacing = UIDevice.setSize(iPhone: 10, iPad: 20)
        
    }
    
    private func autolayoutStackView1() {
        mainStackView.addArrangedSubview(stackView1)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.heightAnchor.constraint(equalToConstant: UIDevice.setSize(iPhone: 100, iPad: 200)).isActive = true
        
        //stackView1 settings
        stackView1.axis = .horizontal
        stackView1.alignment = .fill
        stackView1.distribution = .fill
        stackView1.spacing = UIDevice.setSize(iPhone: 10, iPad: 20)
        
        //autolayout for image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "image")
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1).isActive = true
        stackView1.addArrangedSubview(imageView)
        
        autolayoutStackView11()
        autolayoutStackView12()
        
    }
    
    private func autolayoutStackView11() {
        stackView11.translatesAutoresizingMaskIntoConstraints = false
        stackView1.addArrangedSubview(stackView11)
        stackView11.axis = .vertical
        stackView11.alignment = .leading
        stackView11.distribution = .equalCentering
        stackView11.spacing = 10
        
        //add label
        label1 = UILabel(text: "First", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), parentStackView: stackView11)
        
        label2 = UILabel(text: "Middle", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), parentStackView: stackView11)
        
        label3 = UILabel(text: "Last", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), parentStackView: stackView11)
        
        stackView11.widthAnchor.constraint(equalToConstant: UIDevice.setSize(iPhone: 55, iPad: 65)).isActive = true
        
    }
    
    private func autolayoutStackView12() {
        stackView12.translatesAutoresizingMaskIntoConstraints = false
        stackView1.addArrangedSubview(stackView12)
        stackView12.axis = .vertical
        stackView12.alignment = .fill
        stackView12.distribution = .equalSpacing
        stackView12.spacing = 0
        
        //add textfield
        txt1 = UITextField(placeholder: "First", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), borderStyle: .roundedRect, parentStackView: stackView12)
        
        txt2 = UITextField(placeholder: "Middle", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), borderStyle: .roundedRect, parentStackView: stackView12)
        
        txt3 = UITextField(placeholder: "Last", fontSize: UIDevice.setSize(iPhone: 15, iPad: 22), borderStyle: .roundedRect, parentStackView: stackView12)
    }
    
    private func autolayoutTextViewDescription() {
        mainStackView.addArrangedSubview(txtViewDescription)
        
        txtViewDescription.text = "Description"
        txtViewDescription.font = txtViewDescription.font?.withSize(UIDevice.setSize(iPhone: 15, iPad: 22))
        txtViewDescription.backgroundColor = UIColor.gray
        txtViewDescription.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func autolayoutStackView2() {
        mainStackView.addArrangedSubview(stackView2)
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView2.backgroundColor = UIColor.green
        stackView2.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        //stackView2 settings
        stackView2.axis = .horizontal
        stackView2.alignment = .center
        stackView2.distribution = .fillEqually
        stackView2.spacing = UIDevice.setSize(iPhone: 10, iPad: 20)
        
        //add 3 button
        btnCancel.translatesAutoresizingMaskIntoConstraints = false
        btnCancel.backgroundColor = UIColor(121,200,166)
        btnCancel.setTitle("Cancel", for: .normal)
        btnCancel.setTitleColor(.white, for: .normal)
        stackView2.addArrangedSubview(btnCancel)
        
        btnSave.translatesAutoresizingMaskIntoConstraints = false
        btnSave.backgroundColor = UIColor(121,200,166)
        btnSave.setTitle("Save", for: .normal)
        btnSave.setTitleColor(.white, for: .normal)
        stackView2.addArrangedSubview(btnSave)
        
        btnClear.translatesAutoresizingMaskIntoConstraints = false
        btnClear.backgroundColor = UIColor(121,200,166)
        btnClear.setTitle("Clear", for: .normal)
        btnClear.setTitleColor(.white, for: .normal)
        stackView2.addArrangedSubview(btnClear)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //mainStackView.changeBackgroundColor(color: UIColor.white)
        //stackView1.changeBackgroundColor(color: UIColor.lightGray)
        //stackView2.changeBackgroundColor(color: UIColor.darkGray)
    }

}
