//
//  LoadingView.swift
//  AppArtigos
//
//  Created by Sábado on 28/01/17.
//  Copyright © 2017 impacta. All rights reserved.
//

import Foundation
import ALLoadingView
import ASProgressHud


class LoadingView {
    
    static func showLoading() {
        
        ALLoadingView.manager.blurredBackground = true
        ALLoadingView.manager.showLoadingView(ofType: .messageWithIndicatorAndCancelButton, windowMode: .fullscreen)
        
        // TO DO remover esse code do cancel
        ALLoadingView.manager.cancelCallback = {
            ALLoadingView.manager.hideLoadingView()
        }
        
    }
    
    static func hideLoadin() {
        
        ALLoadingView.manager.cancelCallback = {
         ALLoadingView.manager.hideLoadingView()
        }
    }
    
    static func isLoading(view: UIView, show: Bool){
        if show{
            ASProgressHud.showHUDAddedTo(view, animated: true, type: .default)
        }else{
            ASProgressHud.hideHUDForView(view, animated: true)
        
        }
    }
    
    
}
