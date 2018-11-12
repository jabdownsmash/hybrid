let ignoreHandle = function(e) {
  e.stopPropagation();
};
document.body.addEventListener('touchstart', ignoreHandle, { passive: false });
document.body.addEventListener('touchmove', ignoreHandle, { passive: false });

(function(storyContent) {

  let story = new inkjs.Story(storyContent);

  let storyContainer = document.querySelectorAll('#story')[0];

  function showAfter(delay, el) {
    setTimeout(function() { el.classList.add("show") }, delay);
  }

  function scrollToBottom() {
    let progress = 0.0;
    let start = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
    let dist = document.body.scrollHeight - window.innerHeight - start;
    if( dist < 0 ) return;

    let duration = 300 + 300*dist/100;
    let startTime = null;
    function step(time) {
      if( startTime == null ) startTime = time;
      let t = (time-startTime) / duration;
      let lerp = 3*t*t - 2*t*t*t;
      window.scrollTo(0, start + lerp*dist);
      if( t < 1 ) requestAnimationFrame(step);
    }
    requestAnimationFrame(step);
  }

  function continueStory() {

    let paragraphIndex = 0;
    let delay = 0.0;

    // Generate story text - loop through available content
    while(story.canContinue) {

      // Get ink to generate the next paragraph
      let paragraphText = story.Continue();

      // Create paragraph element
      let paragraphElement = document.createElement('p');
      paragraphElement.innerHTML = paragraphText;
      storyContainer.appendChild(paragraphElement);

      // Fade in paragraph after a short delay
      showAfter(delay, paragraphElement);

      delay += 200.0;
    }

    story.currentTags.forEach(function(tag) {
      if(tag.slice(0, 3) == "jds"){
        let url = "https://jabdownsmash.com/" + tag.slice(4,tag.length);
        let iframe = document.createElement('iframe');
        iframe.src = url + "?bust=" + Math.random();
        document.body.appendChild(iframe);
        window.addEventListener('message', function (e) {
            if(e.data.data == "close") {
              document.body.removeChild(iframe);
            }
          }, false);
      }
    });

    // Create HTML choices from ink choices
    story.currentChoices.forEach(function(choice) {

      // Create paragraph with anchor element
      let choiceParagraphElement = document.createElement('p');
      choiceParagraphElement.classList.add("choice");
      choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`
      storyContainer.appendChild(choiceParagraphElement);

      // Fade choice in after a short delay
      showAfter(delay, choiceParagraphElement);
      delay += 200.0;

      // Click on choice
      let choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
      choiceAnchorEl.addEventListener("click", function(event) {

        // Don't follow <a> link
        event.preventDefault();

        // Remove all existing choices
        let existingChoices = storyContainer.querySelectorAll('p.choice');
        for(let i=0; i<existingChoices.length; i++) {
          let c = existingChoices[i];
          c.parentNode.removeChild(c);
        }

        // Tell the story where to go next
        story.ChooseChoiceIndex(choice.index);

        // Aaand loop
        continueStory();
      });
    });

    scrollToBottom();
  }

  continueStory();

})(storyContent);
