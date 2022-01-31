$(document).ready(function () {
    $(".sub-menu").parent('li').addClass("has-child");

    $("#main-menu").on("click", "li.has-child > a", 500, function () {
        event.preventDefault();
        console.log("alo")
        $(this).parent('li').children(".sub-menu").toggle(500, function () {
            $(this).parent("li").children("a").toggleClass("border-hide")
        })
    })

    $("#btn-menu").click(function () {
        $("#left").toggle(500, function () {
            $(".right").css("width", "100%")
        })
    })
    $("#left").hover(function () {
        $(".left::-webkit-scrollbar").css("width", "20px");
    })
    window.onscroll = function () {
        // console.info(document.getElementById("left").scroll);
    }

})