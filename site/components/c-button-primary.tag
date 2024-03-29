<c-button-primary>
    <a data-ripple class="c-primaryButton" href={ opts.link } data-i18n="{ opts.cta }"></a>

    <script>
        jQuery(function($) {
            $(document).on("mousedown", "[data-ripple]", function(e) {

                var $self = $(this);

                if($self.is(".btn-disabled")) {
                return;
                }
                if($self.closest("[data-ripple]")) {
                e.stopPropagation();
                }

                var initPos = $self.css("position"),
                    offs = $self.offset(),
                    x = e.pageX - offs.left,
                    y = e.pageY - offs.top,
                    dia = Math.min(this.offsetHeight, this.offsetWidth, 100), // start diameter
                    $ripple = $('<div/>', {class : "ripple",appendTo : $self });

                if(!initPos || initPos==="static") {
                $self.css({position:"relative"});
                }

                $('<div/>', {
                class : "rippleWave",
                css : {
                    background: $self.data("ripple"),
                    width: dia,
                    height: dia,
                    left: x - (dia/2),
                    top: y - (dia/2),
                },
                appendTo : $ripple,
                one : {
                    animationend : function(){
                    $ripple.remove();
                    }
                }
                });
            });
        });
    </script>
</c-button-primary>