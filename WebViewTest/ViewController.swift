//
//  ViewController.swift
//  WebViewTest
//
//  Created by Virgil on 16/6/6.
//  Copyright © 2016年 Example. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIWebViewDelegate{

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "https://www.baidu.com");
        let requestObj = NSURLRequest(URL: url!);
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        webView.loadRequest(requestObj);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        activityIndicator.stopAnimating()
    }
    
    @IBAction func doRefresh(_: AnyObject) {
        webView.reload()
    }
    
    @IBAction func goBack(_: AnyObject) {
        webView.goBack()
    }
    
    @IBAction func goForward(_: AnyObject) {
        webView.goForward()
    }
    
    @IBAction func stop(_: AnyObject) {
        webView.stopLoading()
    }


}

