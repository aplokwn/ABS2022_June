
/**
 * Function to grab the array for typing animation
 * @param el: elements in the array
 * @param toRotate: array that contains sentences to be animated
 * @param period: time of the animation, set at 2 s(2000 ms)
 */
var TxtType = function (el, toRotate, period) {
    this.toRotate = toRotate;
    this.el = el;
    this.loopNum = 0;
    this.period = parseInt(period, 10) || 2000;
    this.txt = "";
    this.tick();
    this.isDeleting = false;
};

/**
 * Function to start the animation, it is checking the status of TxtType object,
 * if it is on isDeleting, then delete the text, letter by letter,
 * otherwise, type the text out letter by letter
 */
TxtType.prototype.tick = function () {
    var i = this.loopNum % this.toRotate.length;
    var fullTxt = this.toRotate[i];

    //delete if string is "isDeleting", other wise, type them out
    if (this.isDeleting) {
        this.txt = fullTxt.substring(0, this.txt.length - 1);
    } else {
        this.txt = fullTxt.substring(0, this.txt.length + 1);
    }

    this.el.innerHTML = '<span class="wrap">' + this.txt + "</span>";

    //calculated time for animation
    var that = this;
    var delta = 200 - Math.random() * 100;

    if (this.isDeleting) {
        delta /= 2;
    }

    //When the string is at full length, switch the status of isDeleting to false
    if (!this.isDeleting && this.txt === fullTxt) {
        delta = this.period;
        this.isDeleting = true;
    } else if (this.isDeleting && this.txt === "") {
        this.isDeleting = false;
        this.loopNum++;
        delta = 500;
    }

    setTimeout(function () {
        that.tick();
    }, delta);
};

/**
 * When window is onload, set the time out, grab the typewrite class element,
 * loop through the array, get the period of animation (2s), and get each
 * element in the array. Function is called in main.jsp
 */
window.onload = function () {
    setTimeout(function () {
        var elements = document.getElementsByClassName("typewrite");
        for (var i = 0; i < elements.length; i++) {
            var toRotate = elements[i].getAttribute("data-type");
            var period = elements[i].getAttribute("data-period");
            if (toRotate) {
                new TxtType(elements[i], JSON.parse(toRotate), period);
            }
        }
        // INJECT CSS
        var css = document.createElement("style");
        css.type = "text/css";
        css.innerHTML = ".typewrite > .wrap { border-right: 0.02em solid #fff}";
        document.body.appendChild(css);
    }, 1000);
};
