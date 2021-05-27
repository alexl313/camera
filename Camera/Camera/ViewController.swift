
import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageV: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func camera(_ sender: UIBarButtonItem) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self;
            imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true, completion: nil)
        }
    }

    @IBAction func photoL(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
                   imagePickerController.delegate = self;
                   imagePickerController.sourceType = .photoLibrary
                   self.present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        imageV.image = image
        self.dismiss(animated: true, completion: nil)
    }
}
