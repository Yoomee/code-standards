jQuery(document).ready(function (e) {
    e('.cs-contents a').click(function (t) {
        t.preventDefault();
        e("html,body").animate({
            scrollTop: e(this.hash).offset().top
        });
    })
});