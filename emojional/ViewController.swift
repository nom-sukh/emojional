//
//  ViewController.swift
//  emojional
//
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var emojis = ["😭": "sadSong", "😁": "happySong", "🥰" : "loveSong", "📚": "study", "💤": "sleep"]
    var customMessages = ["sadSong" : ["Moments - One Direction", "The Only Reason - 5sos", "goodbye - Billie Eilish", "FOOLS - Troye Sivan", "idontwannabeyouanymore - Billie Eilish", "Save You Tonight - One Direction", "A World Alone - Lorde", "The One That Got Away - Katy Perry", "Why Won't You Love Me - 5sos", "Cancer - My Chemical Romance", "Lost Boy - Ruth B", "SLOW DANCING IN THE DARK - Joji"], "loveSong" : ["Out of My League - Fitz and the Tantrums", "Lottery - Kali Uchis", "Dontmakemefallinlove - cuco", "Paradise - Bazzi", "Cough Syrup - Young the Giant", "Tongue Tied - Grouplove", "Put Your Head on My Shoulder - Paul Anka", "Caroline - Amine", "Georgy Porgy - Toto", "See You Again - Tyler the Creator", "Crave You - Flight Facilities", "Disappear Here - Bad Suns"], "happySong" : ["Tungs - The Frights", "The Middle - Jimmy Eat World", "Stray Heart - Green Day", "Teenager in Love - Madison Beer", "The Good Side - Troye Sivan", "Some Nights - Fun.", "Boy With Luv - BTS + Halsey", "Sucker - Jonas Brothers", "Burnin' Up - Jonas Brothers", "Mine - Bazzi", "Riptide - Vance Joy", "Firefly - Owl City"]]

   
    @IBAction func showMessages(_ sender: UIButton)
    {
        let rando = Int.random(in: 0...11)
        var selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[rando]
        let alertController = UIAlertController(title: "You better listen to this :]", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

