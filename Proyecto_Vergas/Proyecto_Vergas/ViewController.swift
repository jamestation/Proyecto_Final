//
//  ViewController.swift
//  Proyecto_Vergas
//
//  Created by Jaime ISLAS on 19/06/18.
//  Copyright © 2018 Jaime ISLAS. All rights reserved.
//

import UIKit
@IBDesignable
class ViewController: UIViewController {
    
    @IBOutlet weak var proyButton: UIButton!
    @IBOutlet weak var satLabel: UILabel!
    @IBOutlet weak var satButton: UIButton!
    @IBOutlet weak var satImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional s
        setupLayout()
        setupView()
    }
    
    
    @IBAction func startProy(_ sender: Any) {
        performSegue(withIdentifier: "startP", sender: self)
        
    }
    
    @IBAction func viewSat(_ sender: Any) {
        performSegue(withIdentifier: "satP", sender: self)
    }
    
    func setupLayout() {
        
        //Cambiar atributos del label
        satLabel.text = "CansApp"
        satLabel.font = UIFont(name:"OriyaSangamMN", size: 40.0)
        //satLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        satLabel.textAlignment = .center
        //satLabel.adjustsFontSizeToFitWidth =  false
        satLabel.translatesAutoresizingMaskIntoConstraints = false
        
        satButton.setTitle("Satelites", for: .normal)
        satButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        satButton.tintColor = UIColor.black
        satButton.translatesAutoresizingMaskIntoConstraints = false
        
        proyButton.setTitle("Proyecto", for: .normal)
        proyButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        proyButton.tintColor = UIColor.black
        proyButton.translatesAutoresizingMaskIntoConstraints = false
        
        satImage.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setupView() {
        //Constraints Label
        NSLayoutConstraint.activate([satLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 15), satLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: -20), satLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 10), satLabel.heightAnchor.constraint(equalToConstant: 45)])
        
        //Constraints Imagen
        NSLayoutConstraint.activate([satImage.topAnchor.constraint(equalTo: satLabel.bottomAnchor, constant: 10),satImage.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: -50), satImage.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 50),satImage.heightAnchor.constraint(equalToConstant: 200)])
        
        //Boton de abajo alv
        NSLayoutConstraint.activate([proyButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -150), proyButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 50), proyButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -50), proyButton.heightAnchor.constraint(equalToConstant: 100)])
        
        //Boton de arriba
        NSLayoutConstraint.activate([satButton.bottomAnchor.constraint(equalTo: proyButton.topAnchor, constant: -20), satButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 50), satButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -50), satButton.heightAnchor.constraint(equalToConstant: 45)])
        
        
    }

}

