
import SwiftUI

struct TrouserBombView: View {
    var sandbox = SandBox()
    var body: some View {
        Button(action: {
            sandbox.fart()
        }, label: {
            Text("Random Ripper")
        })
        .onShake {
            sandbox.fart()
        }
    }
}

struct TrouserBombView_Previews: PreviewProvider {
    static var previews: some View {
        TrouserBombView()
    }
}
