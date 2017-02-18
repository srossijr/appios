//
//  DetailsViewController.swift
//  AppList
//
//  Created by Noturno on 07/02/17.
//  Copyright © 2017 Impacta. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var viewModel: ArticlesViewModel?
    
    @IBOutlet weak var descriptionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.descriptionTextView.text = viewModel?.descriptionDetail
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
