/**
 * jTinder initialization
 */
$(document).ready(function () {

  $("#tinderslide").jTinder({
    // dislike callback
      onDislike: function (item) {
        // set the status text
          $('#status').html('Dislike image ' + (item.index()+1));
      },
    // like callback
      onLike: function (item) {
        var founderId = $(item).data('founder-id');
        $.post('/founders/' + founderId + '/like');
          $('#status').html('Like image ' + (item.index()+1));
      },

      //add a callback for when the list has run out - like a refresh

    animationRevertSpeed: 200,
    animationSpeed: 400,
    threshold: 1,
    likeSelector: '.like',
    dislikeSelector: '.dislike'
  });

  /**
   * Set button action to trigger jTinder like & dislike.
   */
  $('.actions .like, .actions .dislike').click(function(e){
    e.preventDefault();
    $("#tinderslide").jTinder($(this).attr('class'));
  });

});
