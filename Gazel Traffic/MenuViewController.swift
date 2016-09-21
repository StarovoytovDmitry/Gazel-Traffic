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
    
    override func viewDidLoad() {
        //scrollView.addSubview(viewContainer)
        scrollView.contentSize = viewContainer.frame.size
        //scrollView.contentOffset = CGPoint(x: 0, y: -50)
        scrollView.bounces = false
        scrollView.addSubview(viewContainer)
        super.viewDidLoad()
    }
}
