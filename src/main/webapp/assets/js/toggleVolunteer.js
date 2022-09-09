function toggleForm(form) {
    hideForm();
    document.getElementById(form).style.display = 'block';
}
function hideForm(){
    document.getElementById("volunteerCalgary").style.display = 'none';
    document.getElementById("volunteerEdmonton").style.display = 'none';
    document.getElementById("volunteerLethbridge").style.display = 'none';
}
