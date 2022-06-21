/* 
 * This function toggles the visibility of the answer cards in the FAQ page.
 */
            function toggleFAQCard(cardNumber) {
                var x = document.getElementById(cardNumber);
                if (x.style.display === "none" || x.style.display === "") {
                    x.style.display = 'block';
                } else {
                    x.style.display = 'none';
                }
            }
