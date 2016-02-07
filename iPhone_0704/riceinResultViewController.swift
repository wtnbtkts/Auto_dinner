//
//  ViewController.swift
//  iPhone_0704
//
//  Created by Takatoshi Watanabe on 2015/06/17.
//  Copyright (c) 2015年 渡辺 貴俊. All rights reserved.
//

import UIKit
import AVFoundation

class riceinResultViewController: UIViewController, UIPickerViewDelegate,AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var soundCount:Int=0
    var filenames:[String] = ["miss2"]
    
    //時間計測用の変数.
    var cnt : Float = 5
    
    //時間表示用のラベル.
    var myLabel : UILabel!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var seikai: UILabel!
    
    var score : Int!
    
    @IBOutlet var mylabel2 : UILabel!
    @IBOutlet var mylabel3 : UILabel!
    private var myImageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        score = appDelegate.ViewVal //scorekekkaにscore4の値を引き渡す
        mylabel2.text = "予算\(score / 2)円！"
        mylabel2.textColor = UIColor.greenColor()
        print("score\(score)")
        
        // UIImageViewを作成する.
        myImageView = UIImageView(frame: CGRectMake(0,0,100,100))
        
        
        // 画像の表示する座標を指定する.
        //myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200.0)
        //UISwitch *sw = [[[UISwitch alloc] init] autorelease];
        myImageView.layer.position = CGPointMake(200, 280);
        
        // UIImageViewをViewに追加する.
        self.view.addSubview(myImageView)
        
        switch(score/2)
        {
        case 750:
            mylabel3.text = "夜ご飯は外食に行く！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "job_waiter.png")
            myImageView.image = myImage
            break
        case 700:
            mylabel3.text = "夜ご飯は外食に行く！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "job_waiter.png")
            myImageView.image = myImage
            break
        case 650:
            mylabel3.text = "夜ご飯は外食に行く！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "job_waiter.png")
            myImageView.image = myImage
            break
        case 600:
            mylabel3.text = "夜ご飯は外食に行く！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "job_waiter.png")
            myImageView.image = myImage
            break
        case 550:
            mylabel3.text = "夜ご飯は外食に行く！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "job_waiter.png")
            myImageView.image = myImage
            break
        case 500:
            mylabel3.text = "夜ご飯は外食に行く！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "job_waiter.png")
            myImageView.image = myImage
            break
        case 450:
            mylabel3.text = "夜ご飯は1人鍋！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "nabe.png")
            myImageView.image = myImage
            break
        case 400:
            mylabel3.text = "夜ご飯はコンビニ弁当！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "obentou_conbini.png")
            myImageView.image = myImage
            break
        case 350:
            mylabel3.text = "夜ご飯は焼きそば！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "omatsuri_yakisoba.png")
            myImageView.image = myImage
            break
        case 300:
            mylabel3.text = "夜ご飯はチャーハン！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "food_cha-han.png")
            myImageView.image = myImage
            break
        case 250:
            mylabel3.text = "夜ご飯はレトルトカレー！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "food_curryruce.png")
            myImageView.image = myImage
            break
        case 200:
            mylabel3.text = "夜ご飯は納豆！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "food_natto.png")
            myImageView.image = myImage
            break
        case 150:
            mylabel3.text = "夜ご飯はパン！"
            mylabel3.textColor = UIColor.greenColor()
            let myImage = UIImage(named: "job_panya.png")
            myImageView.image = myImage
            break
        default:
            mylabel3.text = "下のボタンを押そう！"
            mylabel3.textColor = UIColor.greenColor()
            break;
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.ViewVal = score / 2 //scorekekkaの値を引き渡す
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("score\(score)")
        
        // Do any additional setup after loading the view.
        
        // 配置する座標を設定する.
        mylabel2.layer.position = CGPoint(x: self.view.bounds.width/2,y: 10)
    }
    
    func playerWithFilename(filenames:String) -> AVAudioPlayer {
        let soundFilePath = NSBundle.mainBundle().pathForResource(filenames, ofType: "mp3")
        let fileURL : NSURL = NSURL(fileURLWithPath:soundFilePath!)
        
        
        //AVAudioPlayerのインスタンス化.!
        return try! AVAudioPlayer(contentsOfURL: fileURL)
    }
    
    @IBAction func playButton(){
        //audioPlayer = playerWithFilename(filenames)
        audioPlayer = playerWithFilename(filenames[soundCount])
        audioPlayer.numberOfLoops = soundCount
        audioPlayer.play()
    }
}

    /*
    override func viewWillAppear(animated: Bool) {
    super.viewDidDisappear(animated)
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    score = appDelegate.ViewVal //scorekekkaにscore4の値を引き渡す
    mylabel2.text = "予算\(score)円！"
    println("score\(score)")
    }
    
    override func viewWillDisappear(animated: Bool) {
    super.viewDidDisappear(animated)
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    appDelegate.ViewVal = score //scorekekkaの値を引き渡す
    }
    */



