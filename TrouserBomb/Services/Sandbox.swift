import AVFoundation
import Foundation

class SandBox {
    var farts: [URL] = []
    var audioPlayer: AVAudioPlayer?
    
    init() {
        primeAndCacheFarts()
    }
    
    fileprivate func primeAndCacheFarts() {
        if farts.count > 0 {
            return
        }
        for index in (0...8) {
            extractedFunc(index)
        }
    }
    
    fileprivate func extractedFunc(_ index: Int) {
        let path = Bundle.main.path(forResource: "fart_\(index).mp3", ofType: nil)
        let fart = URL(fileURLWithPath: path!)
        
        farts.append(fart)
    }
    
    func fart_sandbox() {
        let fart = farts.randomElement()!
        audioPlayer = try? AVAudioPlayer(contentsOf: fart)
        audioPlayer?.play()
    }
    
    func fart() {
        do {
            let fart = brewFart()
            audioPlayer = try AVAudioPlayer(contentsOf: fart)
            audioPlayer?.play()
        } catch {
            print("oops, audio play error")
        }
    }
    
    func brewFart() -> URL {
        let randomFart = random(in: 0...9)
        
        if let url =  buildURL(fileName: randomFart) {
            return url
        }
        return URL(fileURLWithPath: "fart_1.mp3")
    }
    
    func buildURL(fileName: String) -> URL? {
        guard let path = Bundle.main.path(forResource: fileName, ofType: nil) else {
            return nil
        }
        return URL(fileURLWithPath: path)
    }
    
    func random(in range: ClosedRange<Int>) -> String {
        let random = Int.random(in: range)
        
        return "fart_\(random).mp3"
    }
}
