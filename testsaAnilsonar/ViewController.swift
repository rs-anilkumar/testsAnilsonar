//
//  ViewController.swift
//  testsaAnilsonar
//
//  Created by Anil Kumar on 26/07/23.
//

import UIKit
import SwiftUI

class MyViewController: UIViewController {
    var hostingController: UIHostingController<ContentView>?

    override func viewDidLoad() {
        super.viewDidLoad()

        let swiftUIView = ContentView()
        hostingController = UIHostingController(rootView: swiftUIView)
        
        if let hostingController = hostingController {
            addChild(hostingController)
            view.addSubview(hostingController.view)
            hostingController.view.frame = view.bounds
            hostingController.didMove(toParent: self)
        }
    }
}
