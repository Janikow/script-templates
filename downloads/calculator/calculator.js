// JavaScript console calculator
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("Simple JS Calculator");
function ask(){
  readline.question("Enter expression (or 'exit' to quit): ", input => {
    if(input.toLowerCase() === 'exit'){
      readline.close();
    } else {
      try { console.log("Result:", eval(input)); } 
      catch { console.log("Invalid input."); }
      ask();
    }
  });
}

ask();
