// creating variable 
var start = document.getElementById('start');
var time = 30;
var start_timer = false;
var score = 0;
var final_score = document.getElementById('final-score');
var time_element = document.getElementById('time');
var counter = 0;
var quiz_area = document.getElementById('questions');
var question_title = document.getElementById('question-title');
var start_area = document.getElementById('start-screen')
var choices = document.getElementById('choices');
var end_screen = document.getElementById('end-screen');
var alert_text = document.getElementById('alert_text')

// adding event listener and starting 'startQuiz' function
start.addEventListener('click', startQuiz);

function startQuiz() {
    // changing class to use correst css style
    quiz_area.classList.remove('hide');
    start_area.classList.add('hide');
    // start function to display questions
    display_questions();
}
// starting timer and setting interval
var myTimeout = setInterval(myTime, 1000);
// creating if loop to start timer only if start_timer is true, then substrack from time var and display it in time_element,
// else if time less than 0 starting show score screen function
function myTime() {

    if (time > 0 && start_timer) {
        time--;
        time_element.innerText = time;
    } else if (time < 0) {
        show_score_screen();
    }
}

function display_questions() {
    // starting timer
    start_timer = true;
    // displaying question nr and answers by iteration over questions array
    question_title.innerHTML = `
    <p>Question ${counter + 1}:</p>
    <p>${questions[counter]}</p>
    `
    // reseting before adding new questions
    choices.innerHTML = '';
    // star iterate over answers array 
    answers[counter].forEach(element => {
        // create new button every time loop run
        var button = document.createElement('button');
        // adding inner text as current element in loop
        button.innerText = element;
        // adding event listener to button
        button.addEventListener('click', function () {
            // if element value matches right answer array then increase counter by 1,
            // and displaying correst message for 500ms
            if (element == right_answer[counter]) {
                counter++;

                alert_text.style.color = 'green';
                alert_text.innerText = 'correct answer';
                setTimeout(function () { alert_text.innerText = ''; }, 500);

                // if answer not mach substract time by 5s and display wrong answer message for 500ms
            } else {
                time -= 5;
                alert_text.style.color = 'red';
                alert_text.innerText = 'wrong answer';
                setTimeout(function () { alert_text.innerText = ''; }, 500);
            }
            // if counter reach last item in questions array going to show score screen function else display next question
            if (counter < questions.length) {

                display_questions();

            } else {
                show_score_screen();
            }
        })
        // appending all buttons to choiches var selector to show answer button on page
        choices.append(button);

    });


}
// function to shop points and sign in to results list
function show_score_screen() {
    // need this in case of rapid button pressed few times to avoid negative value points
    if (time < 0) {
        time = 0;
        time_element.innerText = time;
    }
    // changing class name to display right part of page
    end_screen.classList.remove('hide');
    quiz_area.classList.add('hide');
    // stopping timer and storing value to score then display it
    start_timer = false;
    score = time;
    final_score.innerText = score;

}

// create var here as is more clear for me to write
var submitBTN = document.getElementById('submit');
// add event listener to submitBTN then prevent pae from being reload
submitBTN.addEventListener('click', function (event) {
    event.preventDefault();
    // storing initial typed by user in variable
    var initial_form = document.getElementById('initials').value;
    // if local storage is empty create empty array x2 
    if (localStorage.getItem('user') == null) {
        localStorage.setItem('user', '[]');
    }

    if (localStorage.getItem('scores') == null) {
        localStorage.setItem('scores', '[]');
    }


    // parse reading from local storage and storyng it to array
    var user_list = JSON.parse(localStorage.getItem('user'));
    user_list.push(initial_form);

    var score_list = JSON.parse(localStorage.getItem('scores'));
    score_list.push(score);

    // setting two array in local storage
    localStorage.setItem('user', JSON.stringify(user_list));
    localStorage.setItem('scores', JSON.stringify(score_list));
    // load highscores pages
    window.location = 'highscores.html'

});





