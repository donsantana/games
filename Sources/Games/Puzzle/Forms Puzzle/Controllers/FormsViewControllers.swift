//
//  File.swift
//  
//
//  Created by Donelkys Santana on 3/17/23.
//

import UIKit

class FormsViewControllers: UIViewController {
	
	var formsImages: []
	
	@IBOutlet weak var dashboardFormsView: UICollectionView!
	
	override func viewDidLoad() {
		dashboardFormsView.delegate = self
	}
}

extension FormsViewControllers: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 9
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FormsCell", for: indexPath) as! FormsCell
		cell.imageView.image = UIImage(named: puzzleTypes[indexPath.row].imageIconName,in: .module,compatibleWith: nil)
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		<#code#>
	}
	
}
