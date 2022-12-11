var questions = [
                'Inside which HTML element do we put the JavaScript?',
                'What is the correct JavaScript syntax to change the content of the HTML element below?',
                'Where is the correct place to insert a JavaScript?',
                'What is the correct syntax for referring to an external script called "xxx.js"?'];


var answers = [[
                '< javascript >', 
                '< scripting >', 
                '< script >', 
                '< js >'],

                ['document.getElementById("demo").innerHTML = "Hello World!',
                '#demo.innerHTML = "Hello World!"',
                'document.getElement("p").innerHTML = "Hello World!";',
                'document.getElementByName("p").innerHTML = "Hello World!";'],

                ['The <body> section', 
                'Both the <head> section and the <body> section are correct',
                'The <head> section'],

                ['< script name="xxx.js" >',
                '< script href="xxx.js" >',
                '< script src="xxx.js" >']];


var right_answer = [
    '< script >', 
    'document.getElementById("demo").innerHTML = "Hello World!',
    'The <body> section', 
    '< script src="xxx.js" >'

]
