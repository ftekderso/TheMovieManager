//
//  DetailViewController.swift
//  TheMoiveManagerApp
//
//  Created by Fikirte  Derso on 4/19/17.
//  Copyright © 2017 Fikirte  Derso. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var smallImageView: UIImageView!
    @IBOutlet weak var voteLable: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var releaseDateLbl: UILabel!
    @IBOutlet weak var overviewTextView: UITextView!
    
    var smallImage: UIImage?
    var vote: String?
    var movieTitle: String?
    var releaseDate: String?
    var overviewText: String?
   
    // var movieListTableViewController = MovieListTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smallImageView.image = smallImage
        self.titleLbl.text = movieTitle
        
        let x = (releaseDate?.index((releaseDate?.startIndex)!, offsetBy: 4))!
        self.releaseDateLbl.text = releaseDate?.substring(to: x)
        
        self.voteLable.text = vote!
        self.overviewTextView.text = overviewText
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
