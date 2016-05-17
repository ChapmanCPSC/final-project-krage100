//
//  ViewController.swift
//  TicTacToe
//
//  Created by Krager, Andrew on 5/15/16.
//  Copyright © 2016 Krager, Andrew. All rights reserved.
//

import UIKit
var player1 = true
var winPlayer1 = false
var isMainBoard = true
class ViewController: UIViewController{

    @IBOutlet weak var topLeft: UIImageView?
    @IBOutlet weak var topMiddle: UIImageView?
    @IBOutlet weak var topRight: UIImageView?
    @IBOutlet weak var centerLeft: UIImageView?
    @IBOutlet weak var centerMiddle: UIImageView?
    @IBOutlet weak var centerRight: UIImageView?
    @IBOutlet weak var bottomLeft: UIImageView?
    @IBOutlet weak var bottomMiddle: UIImageView?
    @IBOutlet weak var bottomRight: UIImageView?
    @IBOutlet weak var buttonTL: UIButton!
    @IBOutlet weak var buttonTM: UIButton!
    @IBOutlet weak var buttonTR: UIButton!
    @IBOutlet weak var buttonCL: UIButton!
    @IBOutlet weak var buttonCM: UIButton!
    @IBOutlet weak var buttonCR: UIButton!
    @IBOutlet weak var buttonBL: UIButton!
    @IBOutlet weak var buttonBM: UIButton!
    @IBOutlet weak var buttonBR: UIButton!
    @IBOutlet weak var winLabel: UILabel!
    var winAllPlayer1 = false
    var firstLoad = true
    var buttonPressed = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool){
        if(!firstLoad)
        {
            if(buttonPressed == "TL")
            {
                if(winPlayer1)
                {
                    topLeft?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    topLeft?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "TM")
            {
                if(winPlayer1)
                {
                    topMiddle?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    topMiddle?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "TR")
            {
                if(winPlayer1)
                {
                    topRight?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    topRight?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "CL")
            {
                if(winPlayer1)
                {
                    centerLeft?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    centerLeft?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "CM")
            {
                if(winPlayer1)
                {
                    centerMiddle?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    centerMiddle?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "CR")
            {
                if(winPlayer1)
                {
                    centerRight?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    centerRight?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "BL")
            {
                if(winPlayer1)
                {
                    bottomLeft?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    bottomLeft?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "BM")
            {
                if(winPlayer1)
                {
                    bottomMiddle?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    bottomMiddle?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
            else if(buttonPressed == "BR")
            {
                if(winPlayer1)
                {
                    bottomRight?.image = UIImage(named: "x")
                    player1 = false;
                }
                else
                {
                    bottomRight?.image = UIImage(named: "o")
                    player1 = true;
                }
            }
        }
        checkWin()
    }
    func checkWin()
    {
        if(topLeft?.image == UIImage(named: "x") && topMiddle?.image
            == UIImage(named: "x") && topRight?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topLeft?.image == UIImage(named: "x") && centerLeft?.image == UIImage(named: "x") && bottomLeft?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topLeft?.image == UIImage(named: "x") && centerMiddle?.image == UIImage(named: "x") && bottomRight?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topMiddle?.image == UIImage(named: "x") && centerMiddle?.image == UIImage(named: "x") && bottomMiddle?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topRight?.image == UIImage(named: "x") && centerRight?.image == UIImage(named: "x") && bottomRight?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topRight?.image == UIImage(named: "x") && centerMiddle?.image == UIImage(named: "x") && bottomLeft?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(centerMiddle?.image == UIImage(named: "x") && centerLeft?.image == UIImage(named: "x") && centerRight?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(bottomMiddle?.image == UIImage(named: "x") && bottomLeft?.image == UIImage(named: "x") && bottomRight?.image == UIImage(named: "x"))
        {
            winAllPlayer1 = true
            winLabel.text = "X wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        if(topLeft?.image == UIImage(named: "o") && topMiddle?.image
            == UIImage(named: "o") && topRight?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topLeft?.image == UIImage(named: "o") && centerLeft?.image == UIImage(named: "o") && bottomLeft?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topLeft?.image == UIImage(named: "o") && centerMiddle?.image == UIImage(named: "o") && bottomRight?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topMiddle?.image == UIImage(named: "o") && centerMiddle?.image == UIImage(named: "o") && bottomMiddle?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topRight?.image == UIImage(named: "o") && centerRight?.image == UIImage(named: "o") && bottomRight?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topRight?.image == UIImage(named: "o") && centerMiddle?.image == UIImage(named: "o") && bottomLeft?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(centerMiddle?.image == UIImage(named: "o") && centerLeft?.image == UIImage(named: "o") && centerRight?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(bottomMiddle?.image == UIImage(named: "o") && bottomLeft?.image == UIImage(named: "o") && bottomRight?.image == UIImage(named: "o"))
        {
            winAllPlayer1 = true
            winLabel.text = "O wins"
            buttonTL.enabled = false
            buttonTM.enabled = false
            buttonTR.enabled = false
            buttonCL.enabled = false
            buttonCR.enabled = false
            buttonCM.enabled = false
            buttonBL.enabled = false
            buttonBM.enabled = false
            buttonBR.enabled = false
        }
        else if(topRight?.image != nil && topMiddle?.image != nil && topLeft?.image != nil && centerLeft?.image != nil && centerMiddle?.image != nil && centerRight?.image != nil && bottomLeft?.image != nil && bottomMiddle?.image != nil && bottomRight?.image != nil)
        {
            winLabel.text = "Cat's Game"
            topLeft?.image = nil
            topMiddle?.image = nil
            topRight?.image = nil
            centerLeft?.image = nil
            centerMiddle?.image = nil
            centerRight?.image = nil
            bottomLeft?.image = nil
            bottomMiddle?.image = nil
            bottomRight?.image = nil
            buttonTL.enabled = true
            buttonTM.enabled = true
            buttonTR.enabled = true
            buttonCL.enabled = true
            buttonCR.enabled = true
            buttonCM.enabled = true
            buttonBL.enabled = true
            buttonBM.enabled = true
            buttonBR.enabled = true
        }
    }
    @IBAction func pressTopLeft(sender: AnyObject) {
        firstLoad = false;
        buttonPressed = "TL"
        winLabel.text = ""
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonTL.enabled = false
    }
    @IBAction func pressTopMiddle(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "TM"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonTM.enabled = false
    }
    @IBAction func pressTopRight(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "TR"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonTR.enabled = false
    }
    @IBAction func pressCenterLeft(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "CL"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonCL.enabled = false
    }
    @IBAction func pressCenterMiddle(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "CM"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonCM.enabled = false
    }
    @IBAction func pressCenterRight(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "CR"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonCR.enabled = false
    }
    @IBAction func pressBotLeft(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "BL"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonBL.enabled = false
    }
    @IBAction func pressBotMiddle(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "BM"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonCM.enabled = false
    }
    @IBAction func pressBotRight(sender: AnyObject) {
        winLabel.text = ""
        buttonPressed = "BR"
        let boardVC = self.storyboard!.instantiateViewControllerWithIdentifier("boardController")
        self.presentViewController(boardVC, animated: false, completion: nil)
        buttonBR.enabled = false
    }
    

}

