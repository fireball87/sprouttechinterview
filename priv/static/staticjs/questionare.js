 
var QuestionTextField;
var action;


window.addEventListener('load', (event) => {
    QuestionTextField = document.getElementById('question-text');
    QuestionTextField.innerHTML = "Is the housing cracked?";
    action = question1;
});

function question1(answer){
    if(answer)
    {
        MakeScore("D")
    }
    else
    {
        QuestionTextField.innerHTML = "Are there any dents or more then 20 scratches on the phone?";
        action = question2;
    }
}

function question2(answer){
    if(answer)
    {
        MakeScore("C")
    }
    else
    {
        QuestionTextField.innerHTML = "Are there more than twenty minor scratches on the LCD?";
        action = question3;
    }
}

function question3(answer){
    if(answer)
    {
        MakeScore("B")
    }
    else
    {
        QuestionTextField.innerHTML = "Are there any scratches on the housing?";
        action = question4;
    }
}

function question4(answer){
    if(answer)
    {
        QuestionTextField.innerHTML = "Are there more than 20 minor scratches on the housing?";
        action = question5;
    }
    else
    {
        MakeScore("A+")
    }
}

function question5(answer){
    if(answer)
    {
        MakeScore("B")
    }
    else
    {
        MakeScore("A")
    }
}


function RespondYes(){
    action(true);
}

function RespondNo(){
    action(false);
}

function MakeScore(score)
{
    QuestionTextField.innerHTML = "Final Score: " + score;
    document.getElementById('yes-link').setAttribute("hidden", true);
    document.getElementById('no-link').setAttribute("hidden", true);
    document.getElementById('form').removeAttribute("hidden");
    document.getElementById("form-grade").value = score;
}
