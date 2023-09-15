//
//  ViewController.swift
//  vaserikovaPW1
//
//  Created by Виктория Серикова on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {
    let upperBoundRadius: CGFloat = 25
    let duration : Double = 0.3
    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button(_ sender: Any) {
        let button = sender as? UIButton
        button?.isEnabled = false
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        
        UIView.animate(withDuration: duration, animations: {
            for view in self.views {
                view.backgroundColor = set.popFirst()
                view.layer.cornerRadius = .random(in: 0...self.upperBoundRadius)
                
            }
        }) {completion in button?.isEnabled = true}
        
    }
    
}

