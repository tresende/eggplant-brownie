import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField : UITextField?
    @IBOutlet var happinessField: UITextField?
    var mealsTable : MealsTableViewController?
    
    @IBAction
    func Add(){
        if(nameField == nil || happinessField == nil){
            return
        }
        let name = nameField!.text!
        if let happiness:Int = Int(happinessField!.text!){
            let meal = Meal(name: name, happiness: happiness)
            print("eaten \(meal.name) with \(meal.happiness)");

            if(mealsTable == nil){
                return
            }
            mealsTable?.add(meal)
            if let navigation = navigationController{
                navigation.popViewController(animated: true)
            }
        }
    }
}
