//
//  ViewController.swift
//  Xylophone
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        guard let titleButton = sender.currentTitle else { return }
        playSound(titleButton)
        sender.alpha = 0.5
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
            print("End")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(_ titleButton: String) {
        let url = Bundle.main.url(forResource: titleButton, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}

