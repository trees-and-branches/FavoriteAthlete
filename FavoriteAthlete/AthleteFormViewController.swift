//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by shark boy on 10/31/23.
//

import UIKit

class AthleteFormViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var sportTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    @IBOutlet weak var controversyTextField: UITextField!
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setupdf after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    func updateView() {
        guard let athlete = athlete else { return }
        
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age
        sportTextField.text = athlete.sport
        teamTextField.text = athlete.team
        controversyTextField.text = athlete.controversy
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
              let team = teamTextField.text,
              let sport = sportTextField.text,
              let controversy = controversyTextField.text,
              let age = ageTextField.text
        else { return }
        athlete = Athlete(name: name, team: team, sport: sport, controversy: controversy, age: age )
        
        performSegue(withIdentifier: "saveButtonPressed", sender: self)
    }

}
