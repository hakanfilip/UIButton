//
//  ViewController.swift
//
// A simple UIButton

import UIKit

class ViewController: UIViewController {
    
    // This is a button

    let pressMe : UIButton = {
        let pm = UIButton()
        pm.translatesAutoresizingMaskIntoConstraints = false
        pm.backgroundColor = .black
        pm.setTitle("Press me", for: .normal)
        pm.setTitleColor(.white, for: .normal)
        pm.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        pm.tag = 1
        
        // When I press you please please do this (Call this function)
        pm.addTarget(self, action: #selector(okMasterIWillDoDis), for: .touchUpInside)
        
        return pm
    }()
    
    @objc func okMasterIWillDoDis() {
        // Print something in the console
        print("Khaaannnn!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Here you go a Button in the middle of the view.
        setUpButton()
    }

    func setUpButton() {
        view.backgroundColor = .white
        
        // Add the button to the view
        view.addSubview(pressMe)
        
        // X, Y, WIDTH & HEIGHT
        pressMe.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pressMe.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pressMe.widthAnchor.constraint(equalToConstant: 230).isActive = true
        pressMe.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}
