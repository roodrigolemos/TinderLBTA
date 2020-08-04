//
//  ViewController.swift
//  TinderLBTA
//
//  Created by Rodrigo Lemos on 04/08/20.
//  Copyright © 2020 Rodrigo Lemos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let topStackView = TopNavigationStackView()
    let blueView = UIView()
    let buttonsStackView = HomeBottomControlsStackView()
      
    override func viewDidLoad() {
        super.viewDidLoad()
          
        blueView.backgroundColor = .blue
        setupLayout()
    }

    // MARK:- Fileprivate
      
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom:   view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
      }

}

