//
//  ViewController.swift
//  LogicaSwift
//
//  Created by Kayky Casagrande on 26/12/22.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var nameLabel: UILabel!
	
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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		nameLabel.text = arr[pos]
	}


	@IBAction func touchUpInsideNextButton(_ sender: Any) {
		pos += 1
		
		nameLabel.text = arr[pos % arr.count]
	}
}

