//
//  Extension.swift
//  AppStore
//
//  Created by Melike Su KOÇYİĞİT on 22.11.2025.
//

import UIKit
extension UIImageView {
    func customMode(){
        contentMode = .scaleAspectFill //sınırları ekranın tamamen doldurur
        clipsToBounds = true // tışarı taşan kısımlar gözükmez.
    }
    
    func customeScreenshot(){
        layer.cornerRadius = 12
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 0.85
    }
}
