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
    @IBOutlet var cardsImages: [CardView]!
    
    
    //TODO MAKE MODEL RESPONSIBLE FOR SHUFFLE, STORE ALL CARD TAIL, 5 CHOSEN CARDS WITH IMAGES OF THEM
    let cardPickerImplementation : CardPicker = CardPickerImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for card in cardsImages{
            card.viewTappedDelegate = self
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func shuffleButtonPressed(_ sender: UIButton) {
        //TODO SHUFFLE CARDS, PRESENT NEW 5 CARDS ON SCREEN
        cardPickerImplementation.get5Cards()
        let pickedCards = cardPickerImplementation.picked5Cards
        for (index,imageView) in cardsImages.enumerated(){
            imageView.image = UIImage(named: pickedCards[index])
        }
        print("print do commita")
    }
}

extension ViewController : ViewTapped{
    func handleTap(tappedView: UIView) {
        let viewWithImage = tappedView as! UIImageView
        chosenCardLabel.text = viewWithImage.image!.accessibilityIdentifier!
    }
}

