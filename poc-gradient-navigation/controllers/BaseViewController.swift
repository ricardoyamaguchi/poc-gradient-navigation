//
//  BaseViewController.swift
//  poc-gradient-navigation
//
//  Created by MacBook on 15/04/18.
//  Copyright © 2018 Ricardo Yamaguchi. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var navigationBarColors: Array<UIColor> {
        get {
            return [UIColor.black, UIColor.lightGray]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyGradient(to: (navigationController?.navigationBar)!)
    }
    
    func applyGradient(to navigationBar: UINavigationBar) {
        let gradient = createGradientLayer(withColors: navigationBarColors, view:navigationBar)
        navigationBar.setBackgroundImage(image(fromLayer: gradient), for: .default)
        applyFontColor(with: navigationBarColors[0], navigation: navigationBar)
    }
    
    func applyFontColor(with color: UIColor, navigation navigationBar: UINavigationBar) {
        UIApplication.shared.statusBarStyle = color.isLight() ? .default : .lightContent
        navigationBar.titleTextAttributes =  [NSAttributedStringKey.foregroundColor: color.isLight() ? UIColor.black : UIColor.white]
    }
    
    func createGradientLayer(withColors colors: Array<UIColor>, view navigationBar: UINavigationBar) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.frame = navigationBar.bounds
        gradient.colors = [colors[0].cgColor, colors[1].cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        return gradient
    }
    
    func image(fromLayer layer: CAGradientLayer) -> UIImage {
        UIGraphicsBeginImageContext(layer.bounds.size)
        layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    

}
