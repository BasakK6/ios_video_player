//
//  ViewController.swift
//  video_player
//
//  Created by Basak Katuk on 5.09.2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //initiate the player once the app is launched
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "test_video", ofType: "mp4") else {
            debugPrint("test_video.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true){
            player.play()
        }
    }

}

