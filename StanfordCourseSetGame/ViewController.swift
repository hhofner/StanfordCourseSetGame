//
//  ViewController.swift
//  StanfordCourseSetGame
//
//  Created by Hans Hofner on 2019/06/17.
//  Copyright © 2019 Hans Hofner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedColor = "2d3142"
    
    // Model "Connection"
    var SetModel = Set()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonAttributes()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var listOfCards: [UIButton]!
    @IBAction func flipCard(_ sender: UIButton) {
    }
    
    @IBAction func dealNewCards(_ sender: UIButton) {
    }
    
    @IBAction func newGame (_ sender: UIButton) {
        
    }
    
    func createCard(_ index: Int) {
        //given an index, it will reach into
        //the listOfCards and create how that card will look
    }
    
    @IBOutlet weak var newGameButton: UIButton!
    
    @IBOutlet weak var dealNewCardButton: UIButton!
    
    func setButtonAttributes() {
        for card in self.listOfCards {
            card.layer.cornerRadius = 8.0
            //card.layer.borderWidth = 3.0
            //card.layer.borderColor = UIColor.blue.cgColor
        }
        
        // Set round edges and padding
        dealNewCardButton.layer.cornerRadius = 8.0
        dealNewCardButton.titleEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 10,right: 10)
        newGameButton.layer.cornerRadius = 8.0
        newGameButton.titleEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 10,right: 10)
    }
}

