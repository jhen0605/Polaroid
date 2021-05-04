//
//  PhotoViewController.swift
//  Polaroid
//
//  Created by 簡吟真 on 2021/5/5.
//

import UIKit

class PhotoViewController: UIViewController {

    
    @IBOutlet weak var blankView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var massageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        massageLabel.text = photoText
        var width: CGFloat = 414
        var height: CGFloat = 414
        if ratio == "1 : 1" {
            width = 275
            height = width
        }
        else if ratio == "3 : 4" {
            width = 275
            height = width / 3 * 4
        }
        else if ratio == "16 : 9" {
            width = 275
            height = width / 16 * 9
        }
        
        blankView.frame.size.height = height + 200
        subView.frame = CGRect(x: (blankView.frame.width-width)/2, y: 20, width: width, height: height)
        imageView.frame = CGRect(x: -(view.frame.width-width)/2, y: -(view.frame.width-height)/2, width: 414, height: 414)
        massageLabel.frame.origin.y = subView.frame.maxY + 5
        
        let blankViewHight = self.blankView.frame.size.height
        let massageY = massageLabel.frame.origin.y
        let subViewY = massageY - 15 - subView.frame.height
        
        self.blankView.frame.size.height = 0
        self.massageLabel.frame.origin.y = -85
        self.subView.frame.origin.y = -90 - subView.frame.height
        UIView.animate(withDuration: 2) {
            self.blankView.frame.size.height = blankViewHight
            self.massageLabel.frame.origin.y = massageY
            self.subView.frame.origin.y = subViewY
            
        }
    }
}
