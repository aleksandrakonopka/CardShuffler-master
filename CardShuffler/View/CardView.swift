//
//  CardView.swift
//  CardShuffler
//
//  Created by Aleksandra on 23/11/2019.
//  Copyright © 2019 Karol. All rights reserved.
//

import Foundation
import UIKit
//TODO CUSTOM IMAGEVIEWCARD SUBCLASS - WHEN CARD IS SELECTED LABEL CHANGES WHICH CARD IS SELECTED
protocol CardViewDelegate : class {
    func handleTap(tappedView : UIImageView)
}

class CardView: UIImageView {
    weak var viewTappedDelegate : CardViewDelegate?
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        viewTappedDelegate?.handleTap(tappedView: self)
    }
}
