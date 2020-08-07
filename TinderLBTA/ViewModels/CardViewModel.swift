//
//  CardViewModel.swift
//  TinderLBTA
//
//  Created by Rodrigo Lemos on 06/08/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

protocol ProducesCardViewModel {
    func toCardViewModel() -> CardViewModel
}

struct CardViewModel {
    // we'll define the properties that are view will display/render out
    let imageName: String
    let attributedString: NSAttributedString
    let textAlignment: NSTextAlignment
}

// what exactly do we do with this card view model thing???

