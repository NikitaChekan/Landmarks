//
//  PageViewController.swift
//  Landmarks
//
//  Created by Nikita Chekan on 08.01.2023.
//

import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [UIHostingController(rootView: pages[0])],
            direction: .forward,
            animated: true
        )
    }
}
