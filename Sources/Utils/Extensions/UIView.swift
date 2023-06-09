//
//  File.swift
//  
//
//  Created by Donelkys Santana on 3/17/23.
//

import UIKit

extension UIView {
	
	func dropShadow() {
		var shadowLayer: CAShapeLayer!
		let cornerRadius: CGFloat = 16.0
		let fillColor: UIColor = .white
		
		if shadowLayer == nil {
			shadowLayer = CAShapeLayer()
			
			shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
			shadowLayer.fillColor = fillColor.cgColor
			
			shadowLayer.shadowColor = UIColor.darkGray.cgColor
			shadowLayer.shadowPath = shadowLayer.path
			shadowLayer.shadowOffset = CGSize(width: -2.0, height: 2.0)
			shadowLayer.shadowOpacity = 0.8
			shadowLayer.shadowRadius = 2
			
			layer.insertSublayer(shadowLayer, at: 0)
		}
	}
	
	func addShadow() {
		self.layer.shadowColor = UIColor.black.cgColor
		self.layer.shadowOpacity = 0.4
		self.layer.shadowOffset = CGSize.zero
		self.layer.shadowRadius = 20
	}
}
