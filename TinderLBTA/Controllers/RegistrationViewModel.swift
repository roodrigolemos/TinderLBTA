//
//  RegistrationViewModel.swift
//  TinderLBTA
//
//  Created by Rodrigo Lemos on 17/08/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class RegistrationViewModel {
    
    var bindableImage = Bindable<UIImage>()
    
//    var image: UIImage? {
//        didSet {
//            imageObserver?(image)
//        }
//    }
//    var imageObserver: ((UIImage?) -> ())?
    
    var fullName: String? {
        didSet {
            checkFormValidity()
        }
    }
    var email: String? { didSet { checkFormValidity() } }
    var password: String? { didSet { checkFormValidity() } }
    
    fileprivate func checkFormValidity() {
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false
        bindableIsFormValid.value = isFormValid
//        isFormValidObserver?(isFormValid)
    }
    
    var bindableIsFormValid = Bindable<Bool>()
    
    // Reactive programming
//    var isFormValidObserver: ((Bool) -> ())?
    
}
