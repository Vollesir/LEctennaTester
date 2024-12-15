//
//  ContentView.swift
//  LEctenna Tester
//
//  Created by Sirius Noël Maria Vollenweider on 05/02/2022.
//

import SwiftUI
import WebKit

struct ContentView: View {
   
    
    @State private var showWebView = false
    @State    private var showWebView2 = false
    @State    private var showWebView3 = false
    @State    private var showWebView4 = false
    @State    private var showcontentView = false
    var body: some View {
    
    
    
        VStack {
            VStack {
                VStack {
                    VStack {
                        VStack {
                            GroupBox(label:
                                        
                                        Text("LEctenna Tester")
                                .bold())
                            {Text("Free and open source software for STEM")
                                
                                Button {
                                    showWebView.toggle()
                                } label: {
                                    Text("Start")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                    
                                    
                                }
                                .sheet(isPresented: $showWebView) {
                                    Text("Swipe down to Stop")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                        .accessibilityLabel("Label")
                                        .popover(isPresented: .constant(false)) {
                                            
                                            
                                        }
                                    WebView(url: URL(string: "https://lectenna.com/index.php/letu/")!)
                                }
                                
                                
                                
                                Button {
                                    showWebView2.toggle()
                                } label: {
                                    Text("Info")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                        .accessibilityLabel("Label")
                                        .popover(isPresented: .constant(false)) {
                                            
                                        }
                                    
                                }
                                .sheet(isPresented: $showWebView2) {
                                    
                                    Text("Swipe down to go back to LEctenna Tester")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                        .accessibilityLabel("Label")
                                        .popover(isPresented: .constant(false)) {
                                            
                                            
                                        }
                                    
                                    
                                    WebView(url: URL(string: "https://www.nrl.navy.mil/STEM/LEctenna-Challenge/")!)
                                    
                                    
                                    
                                    
                                }
                                
                                
                                
                                
                                Button {
                                    showWebView3.toggle()
                                } label: {
                                    Text("Help")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                        .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                                        .popover(isPresented: .constant(false)) {
                                            
                                        }
                                    
                                }
                                .sheet(isPresented: $showWebView3) {
                                    Text("Swipe down to go back to LEctenna Tester")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                        .accessibilityLabel("Label")
                                        .popover(isPresented: .constant(false)) {
                                            
                                            
                                        }
                                    
                                    
                                    WebView(url: URL(string: "https://lectenna.com/index.php/faq-help-center")!)
                                    
                                }
                                
                                Button {
                                    showWebView4.toggle()
                                } label: {
                                    Text("Contact Developer")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                        .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                                        .popover(isPresented: .constant(false)) {
                                            
                                        }
                                    
                                }
                                .sheet(isPresented: $showWebView4) {
                                    Text("Swipe down to go back to LEctenna Tester")
                                        .multilineTextAlignment(.center)
                                        .padding(.all)
                                        .accessibilityLabel("Label")
                                        .popover(isPresented: .constant(false)) {
                                            
                                            
                                        }
                                    
                                    
                                    WebView(url: URL(string: "https://lectenna.com/index.php/contact-developer")!)
                                    
                                }
                                
                            }}}
                
                }}}
            }
            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().padding([.top, .leading, .trailing]).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
            }
