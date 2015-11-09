//
//  ViewController.swift
//  multiples
//
//  Created by Raizlabs Corp on 11/9/15.
//  Copyright © 2015 Raizlabs Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    var multiple = 0
    var maxNum = 0
    var currentNum = 0
    var sum = 0
    
    // Outlets
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var whatMultipleTxt: UITextField!
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var multiplesLbl: UILabel!
    
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {
        if whatMultipleTxt.text != nil && whatMultipleTxt.text != "" {
            playBtn.hidden = true
            whatMultipleTxt.hidden = true
            logo.hidden = true
            
            addBtn.hidden = false
            multiplesLbl.hidden = false
            
            multiple = Int(whatMultipleTxt.text!)!
            maxNum = multiple * 5
            multiplesLbl.text = "Press Add to add!"
        }
    }
    
    @IBAction func onAddBtnPressed(sender: UIButton) {
        if isGameOver() {
            resetGame()
        }
        
        sum += multiple
        currentNum = sum - multiple
        multiplesLbl.text = "\(currentNum) + \(multiple) = \(sum)"
    }
    
    func isGameOver() -> Bool {
        if sum >= maxNum {
            return true
        } else {
            return false
        }
    }
    
    func resetGame() {
        sum = 0
        playBtn.hidden = false
        whatMultipleTxt.hidden = false
        logo.hidden = false
        
        addBtn.hidden = true
        multiplesLbl.hidden = true
    }
}

