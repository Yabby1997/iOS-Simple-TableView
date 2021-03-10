//
//  SecondViewController.swift
//  SimpleTable
//
//  Created by Seunghun Yang on 2021/03/10.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var textLabel: UILabel!
    
    // MARK: - Properties
    var textToSet: String?
    
    // MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = textToSet
    } 
}
