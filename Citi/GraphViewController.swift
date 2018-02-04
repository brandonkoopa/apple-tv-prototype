import UIKit
import AVKit
import AVFoundation

class GraphViewController: UIViewController {
    
//    var moviePlayer : AVPlayerViewController!
    
//    var videoPlayer = AVPlayerViewController()
    
//    let videoPath = NSURL(string: "citi_tv_appDesign_Ae_ready.mov")
//    var videoPath = NSBundle.mainBundle().URLForResource("citi_tv_appDesign_Ae_ready", withExtension: "mov")
    
    var playerLayer: AVPlayerLayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playVideo()
    }
    
    private func playVideo() {
        
//        let videoURL: NSURL = NSBundle.mainBundle().URLForResource("graph_video", withExtension: "mp4")!
        let videoURL = NSURL(fileURLWithPath: "http://www.landyland.com/fun/Fireplace.mp4")
        let player = AVPlayer(URL: videoURL)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer!.frame = self.view!.bounds
        self.view!.layer.addSublayer(playerLayer!)
        player.play()

    }
    
}

