//
//  ViewController.swift
//  MoviePlayer
//
//  Created by 203a on 2022/05/27.
//

import UIKit
import AVKit // 비디오 관련 헤더 파일 추가


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlayInternalMoive(_ sender: UIButton) {
        //내부 파일 mp4
        let filePath:String? = Bundle.main.path(forResource: "Bn_vancouver", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        
        playVideo(url: url)
        

        
    }
    
    @IBAction func btnPlayExternalMoive(_ sender: UIButton) {
        //외부 파일 mp4
        let url = NSURL(string: "https://dl.dropboxusercontent.com/s/e38auz050w2mvud/Fireworks.mp4")!
        playVideo(url: url)
        
    }
    
    private func playVideo(url: NSURL) {
        let playerController = AVPlayerViewController()
        
        
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true) {
            player.play()
        }
    }
}

