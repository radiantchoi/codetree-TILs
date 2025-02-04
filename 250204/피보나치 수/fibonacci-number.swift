import Foundation

let n = Int(readLine()!)!

func fibo(number: Int) -> Int {
    var dp = [0, 1]

    if number >= 2 {
        for i in 2...number {
            dp.append(dp[i-1] + dp[i-2])
        }
    }

    return dp[number]
}

print(fibo(number: n))