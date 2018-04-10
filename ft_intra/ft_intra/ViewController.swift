//
//  ViewController.swift
//  ft_intra
//
//  Created by Inessa Turovtseva on 3/29/18.
//  Copyright © 2018 IP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    
    private var search = Search()
    
    @IBAction func enterInSearchField(_ sender: UITextField) {
        if searchField.text!.isEmpty {
            searchButton.isEnabled = false
        } else {
            searchButton.isEnabled = true
        }
    }
    @IBAction func tapSearchButton(_ sender: UIButton) {
        search.setLogin(searchField.text!)
        print("Search login is: \(searchField.text!)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bkg = UIImage(named: "background_login.jpg")
        if bkg != nil {
            self.view.backgroundColor = UIColor(patternImage: bkg!)
        } else {
            self.view.backgroundColor = UIColor(displayP3Red: 32, green: 32, blue: 38, alpha: 0.85)
        }
        if searchField.text!.isEmpty {
            print("here")
            searchButton.isEnabled = false
        } else {
            searchButton.isEnabled = true
        }
    }
}

