//
//  ViewController.swift
//  CardShuffler
//
//  Created by Karol on 23/11/2019.
//  Copyright © 2019 Karol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chosenCardLabel: UILabel!
    @IBOutlet var cardsImages: [UIImageView]!
    
    
    //TODO MAKE MODEL RESPONSIBLE FOR SHUFFLE, STORE ALL CARD TAIL, 5 CHOSEN CARDS WITH IMAGES OF THEM
    let cardPickerImplementation : CardPicker = CardPickerImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shuffleButtonPressed(_ sender: UIButton) {
        //TODO SHUFFLE CARDS, PRESENT NEW 5 CARDS ON SCREEN
        cardPickerImplementation.get5Cards()
        var pickedCards = cardPickerImplementation.picked5Cards
        for (index,imageView) in cardsImages.enumerated(){
        imageView.image = UIImage(named: pickedCards[index])
        }
    }
    
    //TODO CUSTOM IMAGEVIEWCARD SUBCLASS - WHEN CARD IS SELECTED LABEL CHANGES WHICH CARD IS SELECTED
    
}

