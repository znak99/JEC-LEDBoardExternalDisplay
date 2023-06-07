//
//  ColorPickerView.swift
//  LEDBoardExternalDisplay
//
//  Created by SeungWoo Hong on 2023/06/06.
//

import SwiftUI

struct ColorPickerView: View {
    
    let rainbowGradient = Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple])
    let shadowRadius: CGFloat = 4
    @State var color: Color = .white
    
    @State private var red: Double = 14
    @State private var green: Double = 200
    @State private var blue: Double = 100
    @State private var alpha: Double = 0.5
    var body: some View {
        GeometryReader { geo in
            if geo.size.width < geo.size.height {
                VStack {
                    HStack {
                        Spacer()
                        VStack {
                            HStack(spacing: 0) {
                                Text("C")
                                    .HeaderFontStyle(fontColor: .red, shadowRadius: shadowRadius)
                                Text("o")
                                    .HeaderFontStyle(fontColor: .orange, shadowRadius: shadowRadius)
                                Text("l")
                                    .HeaderFontStyle(fontColor: .yellow, shadowRadius: shadowRadius)
                                Text("o")
                                    .HeaderFontStyle(fontColor: .green, shadowRadius: shadowRadius)
                                Text("r")
                                    .HeaderFontStyle(fontColor: .blue, shadowRadius: shadowRadius)
                            }
                            .offset(x: -(geo.size.width / 7))
                                
                            HStack(spacing: 0) {
                                Text("P")
                                    .HeaderFontStyle(fontColor: .blue, shadowRadius: shadowRadius)
                                Text("i")
                                    .HeaderFontStyle(fontColor: .purple, shadowRadius: shadowRadius)
                                Text("c")
                                    .HeaderFontStyle(fontColor: .red, shadowRadius: shadowRadius)
                                Text("k")
                                    .HeaderFontStyle(fontColor: .orange, shadowRadius: shadowRadius)
                                Text("e")
                                    .HeaderFontStyle(fontColor: .yellow, shadowRadius: shadowRadius)
                                Text("r")
                                    .HeaderFontStyle(fontColor: .green, shadowRadius: shadowRadius)
                            }
                            .offset(x: geo.size.width / 7)
                        }
                        .font(.system(size: geo.size.width / 9))
                        Spacer()
                    }
                    
                    Text("Sample text")
                        .font(.largeTitle)
                        .foregroundColor(Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha))
                        .shadow(color: Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha), radius: 12)
                        .fontWeight(.bold)
                        .padding()
                    
                    VStack(spacing: 0) {
                        HStack {
                            Text("R")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Slider(value: $red, in: 0...255)
                                .tint(.red)
                        }
                        HStack {
                            Text("G")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Slider(value: $green, in: 0...255)
                                .tint(.green)
                        }
                        HStack {
                            Text("B")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Slider(value: $blue, in: 0...255)
                                .tint(.blue)
                        }
                        HStack {
                            Text("A")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Slider(value: $alpha, in: 0...1)
                                .tint(.gray)
                        }
                    }
                    .padding()
                    
                    VStack {
                        HStack {
                            Text("Recommended colors")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        HStack {
                            Circle()
                                .foregroundColor(Color.init(red: 233/255, green: 23/255, blue: 133/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 233/255, green: 23/255, blue: 133/255), radius: 8)
                                .onTapGesture {
                                    red = 233
                                    green = 23
                                    blue = 133
                                    alpha = 1
                                }
                            Spacer()
                            Circle()
                                .foregroundColor(Color.init(red: 23/255, green: 213/255, blue: 133/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 23/255, green: 213/255, blue: 133/255), radius: 8)
                                .onTapGesture {
                                    red = 23
                                    green = 213
                                    blue = 133
                                    alpha = 1
                                }
                            Spacer()
                            Circle()
                                .foregroundColor(Color.init(red: 213/255, green: 113/255, blue: 253/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 213/255, green: 113/255, blue: 253/255), radius: 8)
                                .onTapGesture {
                                    red = 213
                                    green = 113
                                    blue = 253
                                    alpha = 1
                                }
                            Spacer()
                            Circle()
                                .foregroundColor(Color.init(red: 122/255, green: 255/255, blue: 253/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 122/255, green: 255/255, blue: 253/255), radius: 8)
                                .onTapGesture {
                                    red = 122
                                    green = 255
                                    blue = 253
                                    alpha = 1
                                }
                        }
                        .padding()
                        
                        HStack {
                            Circle()
                                .foregroundColor(Color.init(red: 244/255, green: 99/255, blue: 33/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 244/255, green: 99/255, blue: 33/255), radius: 8)
                                .onTapGesture {
                                    red = 244
                                    green = 99
                                    blue = 33
                                    alpha = 1
                                }
                            Spacer()
                            Circle()
                                .foregroundColor(Color.init(red: 12/255, green: 204/255, blue: 253/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 12/255, green: 204/255, blue: 253/255), radius: 8)
                                .onTapGesture {
                                    red = 12
                                    green = 204
                                    blue = 253
                                    alpha = 1
                                }
                            Spacer()
                            Circle()
                                .foregroundColor(Color.init(red: 112/255, green: 24/255, blue: 253/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 112/255, green: 24/255, blue: 253/255), radius: 8)
                                .onTapGesture {
                                    red = 112
                                    green = 24
                                    blue = 253
                                    alpha = 1
                                }
                            Spacer()
                            Circle()
                                .foregroundColor(Color.init(red: 112/255, green: 224/255, blue: 1/255))
                                .frame(width: geo.size.width / 12, height: geo.size.width / 12)
                                .shadow(color: Color.init(red: 112/255, green: 224/255, blue: 1/255), radius: 8)
                                .onTapGesture {
                                    red = 112
                                    green = 224
                                    blue = 1
                                    alpha = 1
                                }
                        }
                        .padding(.horizontal)
                    }
                    .padding()
                    .background(Color.init(red: 32/255, green: 32/255, blue: 32/255))
                    .cornerRadius(12)
                    
                    Button(action: {}) {
                        HStack {
                            Spacer()
                            Text("Select this color")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(red + green + blue < 320 ? .white : alpha < 0.6 ? .white : .black)
                                .minimumScaleFactor(0.5)
                            Spacer()
                        }
                    }
                    .padding()
                    .background(Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha))
                    .cornerRadius(8)
                    .shadow(color: Color.init(red: red / 255, green: green / 255, blue: blue / 255, opacity: alpha), radius: 4)
                    .padding()
                    .padding(.top)
                }
                .padding()
            } else {
                
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
