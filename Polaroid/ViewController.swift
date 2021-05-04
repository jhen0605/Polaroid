//
//  ViewController.swift
//  Polaroid
//
//  Created by 簡吟真 on 2021/5/2.
//

import UIKit

var ratio = "1 : 1"
var photoText = ""

class ViewController: UIViewController{

    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    @IBAction func closeKeyboard(_ sender: UITextField) {
        photoText = sender.text!
    }
    
    @IBAction func proportionButton(_ sender: UIButton) {
        var width: CGFloat = 414
        var height: CGFloat = 414
        
        if sender.currentTitle == "1 : 1" {
            ratio = "3 : 4"
            width = 275
            height = width / 3 * 4
        }
        else if sender.currentTitle == "3 : 4" {
            ratio = "16 : 9"
            width = 275
            height = width / 16 * 9
        }
        else {
            ratio = "1 : 1"
            width = 275
            height = width
        }
        sender.setTitle(ratio, for: UIControl.State.normal)
        subView.frame = CGRect(x: (view.frame.width-width)/2, y: 250+(view.frame.width-height)/2, width: width, height: height)
        imageView.frame = CGRect(x: -(view.frame.width-width)/2, y: -(view.frame.width-height)/2, width: 414, height: 414)
    }
    
    
}
