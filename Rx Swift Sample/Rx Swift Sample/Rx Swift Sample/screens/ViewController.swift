import UIKit
import RxSwift
import RxCocoa
import RxAlamofire
import SwiftyJSON
class ViewController: UIViewController , UICollectionViewDelegateFlowLayout
{
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width  = collectionView.bounds.width
        let height = (width - 10 ) / 3
        return CGSize(width: width, height: height)
    }
    */
}

