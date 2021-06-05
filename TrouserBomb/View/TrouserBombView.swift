
import SwiftUI

struct TrouserBombView: View {
    var sandbox = SandBox()
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                sandbox.fart()
            }, label: {
                Text("RANDOM RIPPER")
                    .foregroundColor(.white)
            })
            .frame(maxWidth: .infinity)
            .padding()
            .onShake {
                sandbox.fart()
            }
            .background(Color("Blue_Random_Ripper"))
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TrouserBombView_Previews: PreviewProvider {
    static var previews: some View {
        TrouserBombView()
    }
}
