//
//  BoardViewController.swift
//  TicTacToe
//
//  Created by Krager, Andrew on 5/15/16.
//  Copyright © 2016 Krager, Andrew. All rights reserved.
//

import UIKit

class BoardViewController: UIViewController {

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
    @IBOutlet weak var catsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        catsLabel.text = ""
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func checkWin()
    {
        if(topLeft?.image == UIImage(named: "x") && topMiddle?.image
        == UIImage(named: "x") && topRight?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topLeft?.image == UIImage(named: "x") && centerLeft?.image == UIImage(named: "x") && bottomLeft?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topLeft?.image == UIImage(named: "x") && centerMiddle?.image == UIImage(named: "x") && bottomRight?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topMiddle?.image == UIImage(named: "x") && centerMiddle?.image == UIImage(named: "x") && bottomMiddle?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topRight?.image == UIImage(named: "x") && centerRight?.image == UIImage(named: "x") && bottomRight?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topRight?.image == UIImage(named: "x") && centerMiddle?.image == UIImage(named: "x") && bottomLeft?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(centerMiddle?.image == UIImage(named: "x") && centerLeft?.image == UIImage(named: "x") && centerRight?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(bottomMiddle?.image == UIImage(named: "x") && bottomLeft?.image == UIImage(named: "x") && bottomRight?.image == UIImage(named: "x"))
        {
            winPlayer1 = true
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        if(topLeft?.image == UIImage(named: "o") && topMiddle?.image
            == UIImage(named: "o") && topRight?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topLeft?.image == UIImage(named: "o") && centerLeft?.image == UIImage(named: "o") && bottomLeft?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topLeft?.image == UIImage(named: "o") && centerMiddle?.image == UIImage(named: "o") && bottomRight?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topMiddle?.image == UIImage(named: "o") && centerMiddle?.image == UIImage(named: "o") && bottomMiddle?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topRight?.image == UIImage(named: "o") && centerRight?.image == UIImage(named: "o") && bottomRight?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topRight?.image == UIImage(named: "o") && centerMiddle?.image == UIImage(named: "o") && bottomLeft?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(centerMiddle?.image == UIImage(named: "o") && centerLeft?.image == UIImage(named: "o") && centerRight?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(bottomMiddle?.image == UIImage(named: "o") && bottomLeft?.image == UIImage(named: "o") && bottomRight?.image == UIImage(named: "o"))
        {
            winPlayer1 = false
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else if(topRight?.image != nil && topMiddle?.image != nil && topLeft?.image != nil && centerLeft?.image != nil && centerMiddle?.image != nil && centerRight?.image != nil && bottomLeft?.image != nil && bottomMiddle?.image != nil && bottomRight?.image != nil)
        {
            catsLabel.text = "Cat's Game"
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
        catsLabel.text = ""
        if(player1)
        {
            topLeft!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            topLeft!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonTL.enabled = false;
        checkWin()
    }
    @IBAction func pressTopMiddle(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            topMiddle!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            topMiddle!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonTM.enabled = false;
        checkWin()
    }
    @IBAction func pressTopRight(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            topRight!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            topRight!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonTR.enabled = false;
        checkWin()
    }
    @IBAction func pressCenterLeft(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            centerLeft!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            centerLeft!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonCL.enabled = false;
        checkWin()
    }
    @IBAction func pressCenterMiddle(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            centerMiddle!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            centerMiddle!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonCM.enabled = false;
        checkWin()
    }
    @IBAction func pressCenterRight(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            centerRight!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            centerRight!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonCR.enabled = false;
        checkWin()
    }
    @IBAction func pressBotLeft(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            bottomLeft!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            bottomLeft!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonBL.enabled = false;
        checkWin()
    }
    @IBAction func pressBotMiddle(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            bottomMiddle!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            bottomMiddle!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonBM.enabled = false;
        checkWin()
    }
    @IBAction func pressBotRight(sender: AnyObject) {
        catsLabel.text = ""
        if(player1)
        {
            bottomRight!.image = UIImage(named: "x")
            player1 = false;
        }
        else
        {
            bottomRight!.image = UIImage(named: "o")
            player1 = true;
        }
        buttonBR.enabled = false;
        checkWin()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
