const fs = require('fs');
const input = fs.readFileSync('/dev/stdin').toString().split(' ');

let n = BigInt(input[0]);
let m = BigInt(input[1]);

let answer = n / m + '\n';
answer += n % m;
console.log(answer);