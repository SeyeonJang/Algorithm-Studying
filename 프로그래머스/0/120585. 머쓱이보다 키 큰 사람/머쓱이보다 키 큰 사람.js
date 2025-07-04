function solution(array, height) {
    let answer = array.filter(item => item>height);
    return answer.length;
}