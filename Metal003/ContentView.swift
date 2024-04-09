
import SwiftUI

struct ContentView: View {
    @State private var r:Double = 1.0
    @State private var g:Double = 1.0
    @State private var b:Double = 1.0
    var body: some View {
        VStack(){
            Image("samplePicture")//Assetsに好きな画像を入れてね
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .layerEffect(ShaderLibrary.default.devideRGB(.boundingRect,.float3(self.r,self.g,self.b)), maxSampleOffset: .zero)
            VStack(){
                Slider(value: self.$r, in: 0.0...1.0)
                Slider(value: self.$g, in: 0.0...1.0)
                Slider(value: self.$b, in: 0.0...1.0)
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
