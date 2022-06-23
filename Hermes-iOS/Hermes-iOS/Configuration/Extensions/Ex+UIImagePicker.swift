//
//  Ex+UIImagePicker.swift
//  Hermes-iOS
//
//  Created by 임주민 on 2022/06/24.
//

import SwiftUI


struct SUImagePicker: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIImagePickerController
  
  
    @Binding var selectedImage: UIImage
    @Environment(\.presentationMode) private var presentationMode // 해당 뷰컨트롤러의 노출 여부
    let sourceType: UIImagePickerController.SourceType
    

    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        var parent: SUImagePicker
        
        init(parent: SUImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
                //parent.imagePicked(image)
            }
            parent.presentationMode.wrappedValue.dismiss()
            
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        
        let picker = UIImagePickerController()
        
        picker.delegate = context.coordinator
        
        return picker
        
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }

}
