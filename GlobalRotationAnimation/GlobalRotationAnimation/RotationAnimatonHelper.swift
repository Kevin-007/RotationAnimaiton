//
//  RotationAnimatonHelper.swift
//  GlobalRotationAnimation
//
//  Created by Gavin Huang on 2018/3/18.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import UIKit

//MARK: -RotationAnimatonProtocal
protocol RotationAnimatonProtocal {}

//MARK : -add RotationAnimaton func
extension RotationAnimatonProtocal where Self: UIView {
    
    func startRotationAnimation() {
        // 1.create
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")

        // 2.setting
        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 0.6
        
        // 3.add to layer
        layer.add(rotationAnim, forKey: rotationAnimationKey)
    }
    
    func stopRotationAnimation() {
        layer.removeAnimation(forKey: rotationAnimationKey)
    }
   
    //MARK: -key
    var rotationAnimationKey: String {
        return "RotationAnimationKey"
    }
}

extension UIView: RotationAnimatonProtocal{}
