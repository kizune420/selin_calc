//
//  ViewController.swift
//  selin_calc
//
//  Created by Тыкао on 17.02.2022.
//

import UIKit
func last_check(sign:[String], mass:String) -> Int
{
    var temp: [String] = [""]
    if !mass.isEmpty
    {
        temp[0]=String(mass[mass.index(before: mass.endIndex)])
            for element in 0...sign.count-1
            {
                if temp[0] == sign[element]  {return 1}
                
            }
    
    }
    return 0
    
}

class ViewController: UIViewController
{
    @IBOutlet weak var output: UILabel!
    var check_rez=0
    var mas=""
    var check_sign=0
    var signs: [String] = ["+", "-","*","/"]
    
    @IBAction func AC(_ sender: Any)
    {
        output.text=""
        mas.removeAll()
        check_sign=0
        check_rez=0
        
    }
    
    @IBAction func back(_ sender: Any)
    {
        if check_rez==1
            {
                output.text=""
                mas.removeAll()
                check_rez=0
                check_sign=0
                
            }
        else

        {
            if last_check(sign: signs,mass: mas)==1 {check_sign=0}
            let DropEnd=mas.dropLast()
            output.text=String(DropEnd)
            mas=String(DropEnd)
        }
    }
    
    @IBAction func one(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"1")
            output.text=mas
        }
    }
    
    @IBAction func two(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"2")
            output.text=mas
        }
    }
    
    @IBAction func three(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"3")
            output.text=mas
        }
    }
    
    @IBAction func four(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"4")
            output.text=mas
        }
    }
    
    @IBAction func five(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"5")
            output.text=mas
        }
    }
    
    @IBAction func six(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"6")
            output.text=mas
        }
    }
    
    @IBAction func seven(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
            
        }
        else
        {
            mas=String(output.text!+"7")
            output.text=mas
        }
    }
    
    @IBAction func eight(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"8")
            output.text=mas
        }
    }
    
    @IBAction func nine(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        else
        {
            mas=String(output.text!+"9")
            output.text=mas
        }
    }
    
    @IBAction func null(_ sender: Any)
    {
        if check_rez==1
        {
            output.text=""
            mas.removeAll()
            check_rez=0
            check_sign=0
        }
        mas=String(output.text!+"0")
        output.text=mas
    }
    
    @IBAction func sum(_ sender: Any) //сумма
    {
        if !mas.isEmpty && mas[mas.index(before: mas.endIndex)] != "+" && check_sign==0
        {
            mas=String(output.text!+"+")
            output.text=mas
            check_sign=1
        }
    }
    
    @IBAction func dif(_ sender: Any)
    {
        if !mas.isEmpty && mas[mas.index(before: mas.endIndex)] != "-" && check_sign==0
        {
            mas=String(output.text!+"-")
            output.text=mas
            check_sign=1
        }
    }

    @IBAction func mult(_ sender: Any)
    {
        if !mas.isEmpty && mas[mas.index(before: mas.endIndex)] != "+" && check_sign==0
        {
            mas=String(output.text!+"*")
            output.text=mas
            check_sign=1
        }
    }
 
    @IBAction func div(_ sender: Any)
    {
        if !mas.isEmpty && mas[mas.index(before: mas.endIndex)] != "/" && check_sign==0
        {
            mas=String(output.text!+"/")
            output.text=mas
            check_sign=1
        }
    }
    
    @IBAction func rez(_ sender: Any)
    {
        var int_ch1=0
        var int_ch2=0
        var double_ch1=0.0
        var double_ch2=0.0
        var massive : [String]
        var separated: [String]=[""]
        var rez=""
        
        if check_rez==0 && !mas.isEmpty
        {
            for element in 0...signs.count-1
            {
                massive=mas.components(separatedBy: signs[element])
                if massive.count==2
                {
                    separated[0]=signs[element]
                }
                massive=mas.components(separatedBy: separated[0])
                if massive.count==2 && massive[massive.count-1] != ""
                {
                    if separated[0]=="/"
                    {
                        double_ch1=Double(massive[massive.count-2])!
                        double_ch2=Double(massive[massive.count-1])!
                        if double_ch1==0 || double_ch2==0 {rez="Ошибка"}
                        else {rez=String(double_ch1/double_ch2)}
                    }
                    else
                    {
                        int_ch1=Int(massive[massive.count-2])!
                        int_ch2=Int(massive[massive.count-1])!
                        if separated[0]=="+" {rez=String(int_ch1+int_ch2)}
                        if separated[0]=="-" {rez=String(int_ch1-int_ch2)}
                        if separated[0]=="*" {rez=String(int_ch1*int_ch2)}
                    }
                }
            }
            mas=String(output.text!+"="+String(rez))
            output.text=mas
            check_rez=1
        }
    }
}

