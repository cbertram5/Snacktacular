//
//  PhotoViewController.swift
//  Snacktacular
//
//  Created by Chris Bertram on 11/14/20.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    @IBOutlet weak var SaveBarButton: UIBarButtonItem!
    @IBOutlet weak var deleteBarButton: UIBarButtonItem!
    
    var spot: Spot!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hide keyboard if we tap outside of a field
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
        guard spot != nil else {
            print("ERROR: No spot passed to PhotoViewControler.swift")
            return
        }

    }
    
    func leaveViewController() {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }

    
    @IBAction func deleteButtonPressed(_ sender: UIBarButtonItem) {
    }
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        leaveViewController()
    }
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        //TODO more setup
        leaveViewController()
    }
}
