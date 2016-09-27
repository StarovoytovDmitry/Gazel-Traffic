//
//  MenuViewController.swift
//  Gazel Traffic
//
//  Created by Дмитрий on 21.09.16.
//  Copyright © 2016 Just Space. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var viewContainer: UIView!
    @IBAction func bottomButton(_ sender: AnyObject) {
        let bottomOffset = CGPoint(x: 0, y: self.scrollView.contentSize.height - self.scrollView.bounds.size.height)
        scrollView.setContentOffset(bottomOffset, animated: true)
        
    }
    
    override func viewDidLoad() {
        
        scrollView.contentSize = viewContainer.frame.size
        //scrollView.contentOffset = CGPoint(x: 0, y: -50)
        scrollView.bounces = false
        scrollView.isPagingEnabled = true
        scrollView.addSubview(viewContainer)
        
        //let backgroundImage = UIImage(named: "background")
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "wall")!)
        super.viewDidLoad()
    }
}
