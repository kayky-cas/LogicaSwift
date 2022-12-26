//
//  ViewController.swift
//  LogicaSwift
//
//  Created by Kayky Casagrande on 26/12/22.
//

import UIKit

class ViewController: UIViewController {
	
	let arr = [
		"Arthur Miguel",
		"Davi Luiz",
		"João Guilherme",
		"João Vitor",
		"João Guilherme",
		"Pedro Miguel",
		"Pedro Henrique"
	]
	
	var pos = 0
	
	lazy var nameLabel: UILabel = {
		let label = UILabel()
		label.font = .systemFont(ofSize: 20)
		label.text = arr[pos]
		return label
	}()
	
	lazy var nextButton: UIButton = {
		let button = UIButton(configuration: .filled())
		button.setTitle("Proximo", for: .normal)
		button.addTarget(self, action: #selector(touchUpInsideNextButton), for: .touchUpInside)
		return button
	}()
	
	lazy var titleLabel: UILabel = {
		let label = UILabel()
		label.text = "Lista de Nomes"
		label.font = .boldSystemFont(ofSize: 40)
		return label
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubviews(titleLabel, nameLabel, nextButton)
	}

	override func viewDidLayoutSubviews() {
		titleLabel.anchor(
			top: view.safeAreaLayoutGuide.topAnchor,
			leading: nil,
			bottom: nil,
			trailing: nil,
			padding: .init(top: 200, left: 0, bottom: 0, right: 0)
		)
		
		titleLabel.anchorCenterX(to: view.centerXAnchor)
		
		
		nameLabel.anchor(
			top: titleLabel.bottomAnchor,
			leading: nil,
			bottom: nil,
			trailing: nil,
			padding: .init(top: 50, left: 0, bottom: 0, right: 0)
		)
		
		nameLabel.anchorCenterX(to: view.centerXAnchor)
		
		nextButton.anchor(
			top: nameLabel.bottomAnchor,
			leading: nil,
			bottom: nil,
			trailing: nil,
			padding: .init(top: 50, left: 0, bottom: 0, right: 0)
		)
		
		nextButton.anchorCenterX(to: view.centerXAnchor)
	}

	@objc func touchUpInsideNextButton() {
		pos += 1
		nameLabel.text = arr[pos % arr.count]
	}
}

