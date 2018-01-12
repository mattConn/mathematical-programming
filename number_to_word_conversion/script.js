var alpha = "0abcdefghijklmnopqrstuvwxyz";
var output = [];

var joinerArr = [""," "]; // characters for joining output
var jNum = -1; // integers for toggling joining character
var jIndex = 0;

printf("&lt;Enter \"cls\" to clear&gt;");

printf("");
printf("Enter series of numbers or characters to convert.");
printf("Enter \"spc\" to toggle output spacing.");
printf("");

var buffer; //user input
terminalForm.addEventListener("submit", function (e) {
    e.preventDefault();
    buffer = terminalInput.value;

    if(buffer == "cls")
        cls();
    else if(buffer == "spc"){
        jNum *= -1;
        jIndex += jNum;
        printf("&lt;Toggled output spacing&gt;");
    } else {
        for(var i in buffer){
            if(parseInt(buffer[i])+1/0 == Infinity)
                output.push(alpha[buffer[i]]);
            else {
                for(var j in alpha){
                    if(buffer[i].toLowerCase() == alpha[j]){
                        output.push(parseInt(j));
                    }
                }
            }//endif
        }

        printf(buffer+" = "+output.join(joinerArr[jIndex]));
        output = [];
    }

    terminalInput.value = "";
});