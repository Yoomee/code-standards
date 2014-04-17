$(document).ready(function() {
  return StickyHeader.init();
});

window.StickyHeader = {
  init: function() {
    StickyHeader.scroll();
    return $(window).scroll(function() {
      return StickyHeader.scroll();
    });
  },
  scroll: function() {}
};