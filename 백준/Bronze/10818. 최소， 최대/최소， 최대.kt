import java.util.*
fun main() {
    val sc = Scanner(System.`in`) 
    val n = sc.nextInt()
    var arr = Array<Int>(n){0}

    arr[0] = sc.nextInt()
    var max = arr[0]
    var min = arr[0]
    for (i in 1 until n) {
        arr[i] = sc.nextInt()
        if (arr[i]>max)
            max = arr[i]
        if (arr[i]<min)
            min = arr[i]
    }
    println("${min} ${max}")
}