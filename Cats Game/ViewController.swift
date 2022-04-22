//
//  ViewController.swift
//  Cats Game
//
//  Created by Seyran Saakyan on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton(frame: CGRect(x: 160, y: 380, width: 100, height: 100))

    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = button.frame.size.width/2
        button.backgroundColor = .red
        button.setTitle("", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    @objc func buttonAction() {
        button.frame.origin.x = CGFloat(randomCoordinates().0)
        button.frame.origin.y = CGFloat(randomCoordinates().1)
        button.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    }
    
    func randomCoordinates() -> (Int, Int){
        let randomX = Int.random(in: 0..<314)
        let randomY = Int.random(in: 0..<796)
        return (randomX, randomY)
    }
}

