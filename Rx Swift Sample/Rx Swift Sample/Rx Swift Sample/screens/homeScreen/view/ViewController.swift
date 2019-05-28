import UIKit
import RxSwift
import RxCocoa
import RxAlamofire
import SwiftyJSON
class ViewController: UIViewController , UICollectionViewDelegateFlowLayout , viewControllerProtocol
{
    let disposeBag = DisposeBag()
    let myURL = "https://api.exchangeratesapi.io/latest"
    var mydict : [String : Double] = [:]
    @IBOutlet weak var mainCollectionView: UICollectionView!

    var presenter : presenterProtocol = Presenter()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        presenter.setDelegate(delegate: self)
        presenter.getData(url: myURL)
        
    }
    override func viewWillAppear(_ animated: Bool)
    {
        //self.mainCollectionView.reloadData()
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setdict(dic: [String : Double])
    {
        mydict = dic
        /*
        for item in mydict{
            print("\(item.key)   \(item.value)")
        }
         */
        let items = Observable.of(mydict)
        items.asObservable()
            .bind(to: self.mainCollectionView.rx.items(cellIdentifier: "textCell", cellType: MyCollectionViewCell.self))
            { (row , data , cell) in
                cell.currencyLabel.text = data.key
                cell.rateLabel.text = String(data.value)
                
            }
            .disposed(by: disposeBag)
    }
    
}


