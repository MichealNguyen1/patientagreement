//
//  ViewController.swift
//  PatientAgreement
//
//  Created by Hieu Trinh Tien on 3/30/18.
//  Copyright © 2018 AcaziaSoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var agreementPageView: UIView!
    @IBOutlet weak var phonePageView: UIView!
    @IBOutlet weak var surveyPageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func titleSegmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            agreementPageView.isHidden = false
            phonePageView.isHidden = true
            surveyPageView.isHidden = true
        case 1:
            phonePageView.isHidden = false
            agreementPageView.isHidden = true
            surveyPageView.isHidden = true
        case 2:
            surveyPageView.isHidden = false
            agreementPageView.isHidden = true
            phonePageView.isHidden = true
        default:
            break
        }
    }
    
}

