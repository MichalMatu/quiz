// create variable to store reference id and data from local storage
var highscores = document.getElementById('highscores');
var clear = document.getElementById('clear');
var user_array = JSON.parse(localStorage.getItem('user'));
var score_array = JSON.parse(localStorage.getItem('scores'));

// creating for loop to iterate over array parsed by JSON from local storage
for (var i = 0; i < user_array.length; i++) {
    // creating list point
    var li = document.createElement('li');
    // placing user name and user points into just created li element then adding it together
    li.innerText += user_array[i];
    li.innerText += ' - '
    li.innerText += score_array[i];
    li.innerText += ' points'

// appended li to already grabbed by Id ol
    highscores.append(li);
}

// adding event listener to clear highscore button

clear.addEventListener('click', function(){
    // save empty arran in local storage in place of user and scores then reload page to see results
    localStorage.setItem('user', '[]');
    localStorage.setItem('scores', '[]');
    window.location.reload();
});






