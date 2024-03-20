// Блок 1

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let images = ["image1", "image2", "image3"]
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let image = UIImage(named: images[indexPath.row])
        let detailViewController = DetailViewController(image: image)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}

class DetailViewController: UIViewController {
    
    private let imageView = UIImageView()
    private var isPulsating = false
    
    init(image: UIImage?) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFit
        
        pulsateAndRotate()
    }
    
    func pulsateAndRotate() {
        UIView.animate(withDuration: 1, animations: {
            self.isPulsating = true
            self.imageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2).rotated(by: .pi / 4)
        }) { _ in
            UIView.animate(withDuration: 1, animations: {
                self.imageView.transform = .identity
            }) { _ in
                if self.isPulsating {
                    self.pulsateAndRotate()
                }
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        isPulsating = false
    }
}

// Блок 2

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let images = ["image1", "image2", "image3"]
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let image = UIImage(named: images[indexPath.row])
        let detailViewController = DetailViewController(image: image)
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}

class DetailViewController: UIViewController {
    
    private let imageView = UIImageView()
    private var isPulsating = false
    
    init(image: UIImage?) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFit
        
        pulsateAndRotate()
    }
    
    func pulsateAndRotate() {
        UIView.animate(withDuration: 1, animations: {
            self.isPulsating = true
            self.imageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2).rotated(by: .pi / 4)
        }) { _ in
            UIView.animate(withDuration: 1, animations: {
                self.imageView.transform = .identity
            }) { _ in
                if self.isPulsating {
                    self.pulsateAndRotate()
                }
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        isPulsating = false
    }
}

// Д.З.

