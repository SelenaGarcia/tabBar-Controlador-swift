//
//  ViewController.swift
//  tabBar-Controlador-Swift
//
//  Created by Selena Belén Garcia Lobo on 03/08/2022.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //setup view controllers - sirven para crear instancias de los view controllers

        let homeVC = HomeViewController()
        let listVC = ListViewController()
        let addVC  = AddViewController()

        // tint

        self.tabBar.tintColor = .black
        self.tabBar.backgroundColor = .white


        // Set title

        homeVC.title = "Home"
        listVC.title = "Lista"
        addVC.title  = "Agregar"

        // asignamos los view controllers a los tabs
        self.setViewControllers([homeVC, listVC, addVC], animated: false)
        // IMPORTANTE: EL ORDEN IMPORTA

        guard let items = self.tabBar.items else { return }

        let images = ["house","star","plus"]
        for item in 0...2 {
            items[item].image = UIImage(systemName: images[item])
        }
    }
}







