//
//  UIView+Extension.swift
//  Netflix
//
//  Created by unicred on 20/12/22.
//

import UIKit

extension UIView {
	func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
		
		translatesAutoresizingMaskIntoConstraints = false
		
		if let top = top {
			topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
		}
		if let leading = leading {
			leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
		}
		if let bottom = bottom {
			bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
		}
		if let trailing = trailing {
			trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
		}
		
		if size.width != 0 {
			widthAnchor.constraint(equalToConstant: size.width).isActive = true
		}
		if size.height != 0 {
			heightAnchor.constraint(equalToConstant: size.height).isActive = true
		}
	}
	
	func anchorCenterY(to anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>) {
		centerYAnchor.constraint(equalTo: anchor).isActive = true
	}
	
	func anchorCenterX(to anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>) {
		centerXAnchor.constraint(equalTo: anchor).isActive = true
	}
	
	func addSubviews(_ views: UIView...) {
		views.forEach(addSubview)
	}
}
