//
//  ViewController.swift
//  iPhone_0704
//
//  Created by Takatoshi Watanabe on 2015/06/17.
//  Copyright (c) 2015年 渡辺 貴俊. All rights reserved.
//

import UIKit
import AVFoundation

class riceoutResultViewController: UIViewController, UIPickerViewDelegate,AVAudioPlayerDelegate {
    
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
        mylabel2.text = "予算\(score)円！"
        mylabel2.textColor = UIColor.redColor()
        print("score\(score)")
        
        // UIImageViewを作成する.
        myImageView = UIImageView(frame: CGRectMake(0,0,100,100))
        
        
        // 画像の表示する座標を指定する.
        //myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200.0)
        //UISwitch *sw = [[[UISwitch alloc] init] autorelease];
        myImageView.layer.position = CGPointMake(200, 280);
        
        // UIImageViewをViewに追加する.
        self.view.addSubview(myImageView)
        
        
        switch(score)
        {
        case 1500:
            mylabel3.text = "夜ご飯はキムチ鍋！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "nabe.png")
            myImageView.image = myImage
            break
        case 1400:
            mylabel3.text = "夜ご飯はキムチ鍋！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "nabe.png")
            myImageView.image = myImage
            break
        case 1300:
            mylabel3.text = "夜ご飯はキムチ鍋！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "nabe.png")
            myImageView.image = myImage
            break
        case 1200:
            mylabel3.text = "夜ご飯はキムチ鍋！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "nabe.png")
            myImageView.image = myImage
            break
        case 1100:
            mylabel3.text = "夜ご飯はキムチ鍋！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "nabe.png")
            myImageView.image = myImage
            break
        case 1000:
            mylabel3.text = "夜ご飯はキムチ鍋！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "nabe.png")
            myImageView.image = myImage
            break
        case 900:
            mylabel3.text = "夜ご飯はそばセット！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "food_curryruce.png")
            myImageView.image = myImage
            break
        case 800:
            mylabel3.text = "夜ご飯はラーメン！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "food_tonkotsu.png")
            myImageView.image = myImage
            break
        case 700:
            mylabel3.text = "夜ご飯はカツ丼！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "food_katsudon.png")
            myImageView.image = myImage
            break
        case 600:
            mylabel3.text = "夜ご飯はカレー！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "food_curryruce.png")
            myImageView.image = myImage
            break
        case 500:
            mylabel3.text = "夜ご飯は500円定食！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "teisyoku_hiyayakko.png")
            myImageView.image = myImage
            break
        case 400:
            mylabel3.text = "夜ご飯は牛丼！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "food_gyudon.png")
            myImageView.image = myImage
            break
        case 300:
            mylabel3.text = "夜ご飯は学食！"
            mylabel3.textColor = UIColor.redColor()
            let myImage = UIImage(named: "syokudo.png")
            myImageView.image = myImage
            break
        default:
            mylabel3.text = "下のボタンを押そう！"
            mylabel3.textColor = UIColor.redColor()
            break;
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.ViewVal = score //scorekekkaの値を引き渡す
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            print("score\(score)")
            
            // Do any additional setup after loading the view.
        
        // 配置する座標を設定する.
        mylabel2.layer.position = CGPoint(x: self.view.bounds.width/2,y: 10)
        

    }
    
    // 結果をメールに送る
    @IBAction func share2(sender: UIButton) {
        
        // 共有する項目
        let shareText = "今日のご飯はそばセットにしよう！\n19:00に△△集合！\n"
        let shareWebsite = NSURL(string: "https://life-is-tech.com/")!
        let shareImage = UIImage(named: "soba.jpg")!
        
        let activityItems = [shareText, shareWebsite, shareImage]
        
        // 初期化処理
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        
        // 使用しないアクティビティタイプ
        let excludedActivityTypes = [
            UIActivityTypePostToWeibo,
            UIActivityTypeSaveToCameraRoll,
            UIActivityTypePrint
        ]
        
        activityVC.excludedActivityTypes = excludedActivityTypes
        
        // UIActivityViewControllerを表示
        self.presentViewController(activityVC, animated: true, completion: nil)
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


    