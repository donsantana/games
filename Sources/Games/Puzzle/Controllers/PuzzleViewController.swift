//
//  File.swift
//  
//
//  Created by Donelkys Santana on 3/6/23.
//

import UIKit

class PuzzleViewController: UIViewController {
	var puzzleTypes: [PuzzleType] = [PuzzleType(name: "Forms Puzzle", imageIconName: "formsIcon"),PuzzleType(name: "Flags Puzzle", imageIconName: "flagsIcon")]
	
	@IBOutlet weak var puzzlesListCollection: UICollectionView!
	
	override func viewDidLoad() {
		puzzlesListCollection.delegate = self
		navigationController?.setNavigationBarHidden(true, animated: false)
	}
}

extension PuzzleViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return puzzleTypes.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PuzzleTypeCell", for: indexPath) as! PuzzleTypeCell
		cell.layer.cornerRadius = 15
		cell.addShadow()
		cell.imageView.image = UIImage(named: puzzleTypes[indexPath.row].imageIconName,in: .module,compatibleWith: nil)
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		print("HEREE")
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		let cellWidthSize = UIScreen.main.bounds.width / 2.5
		return CGSize(width: cellWidthSize, height: cellWidthSize)
	}
}
