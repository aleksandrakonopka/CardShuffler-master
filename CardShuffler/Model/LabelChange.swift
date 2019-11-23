//
//  LabelChange.swift
//  CardShuffler
//
//  Created by Aleksandra on 23/11/2019.
//  Copyright © 2019 Karol. All rights reserved.
//

import Foundation
protocol LabelChanger{
    func updateTheLabel(text:String)
    var labelText:String{get}
}
class LabelChangerImpl:LabelChanger{
    func updateTheLabel(text:String) {
        labelText = text
    }

 private(set) var labelText: String = ""
}
