//
//  ViewController.swift
//  diaoYongPhoto
//
//  Created by xly on 15-5-26.
//  Copyright (c) 2015年 Lily. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UIActionSheetDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    @IBAction func photoChoose(sender: AnyObject) {
        var sheet:UIActionSheet
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera){
            sheet = UIActionSheet(title: nil, delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: nil, otherButtonTitles: "从相册选择", "拍照")
        }else{
            sheet = UIActionSheet(title: nil, delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: nil, otherButtonTitles: "从相册选择")
        }
        
        sheet.showInView(self.view)
    }
    
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        var sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        
        if buttonIndex != 0 {
            if buttonIndex == 1{
                //从相册
                sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            }else{
                sourceType = UIImagePickerControllerSourceType.Camera
            }
            
            var imagePickerController:UIImagePickerController = UIImagePickerController()
            //imagePickerController.delegate = self
            imagePickerController.allowsEditing = true//true为拍照、选择完进入图片编辑模式
            imagePickerController.sourceType = sourceType
            self.presentViewController(imagePickerController, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        //暂未实现该方法
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        //暂未实现该方法
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

