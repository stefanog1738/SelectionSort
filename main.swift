

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

func input(unsorted: inout [String])
{
    while let line = readLine()
    {
        unsorted.append(line)
    }
}
var pass = 0
var switch2 = 0
var total = 0

//old
let _ = unsortedIntegers
var _ = 0

print("Pass: \(pass), Swaps: \(switch2)/\(total), Array: \(unsortedIntegers)")

func selection(_ array: [String]) -> [String] {
    var box = array
    
    for x in 0 ..< box.count - 1 {
        var old = x
        switch2 = 0
        pass += 1
        
        for y in x + 1 ..< box.count {
            if box[y] < box[old] {
                old = y
            }
        }
        
        if x != old {
            box.swapAt(x, old)
        }
        switch2 += 1
        total += 1
        
       print("Pass: \(pass), Swaps: \(switch2)/\(total), Array: \(box)")
    }
    return box
 //   print("Pass: \(pass), Swaps: \(switch2)/\(total), Array: \(box)")
}
var unsorted = [""]
input(unsorted:&unsorted)
unsorted.remove(at: 0)
print(selection(unsorted))
