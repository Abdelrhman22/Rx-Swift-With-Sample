import UIKit
import RxSwift
import RxCocoa
import RxAlamofire
import SwiftyJSON
class ViewController: UIViewController , UICollectionViewDelegateFlowLayout
{
    let url = "https://api.exchangeratesapi.io/latest"
    @IBOutlet weak var mainCollectionView: UICollectionView!
    var rates: [String: Double] = [:]
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("--------------------------")
        RxAlamofire.requestJSON(.get, url)
            .debug()
            .subscribe(onNext: { [weak self] (r, json) in
                if let dict = json as? DAO {
                    self?.rates = dict.rates
                    print(self?.rates.keys)
                    print(self?.rates as Any)
              }
            }).disposed(by: disposeBag)
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


