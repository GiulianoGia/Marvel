function login(button) {
    $(button).find("img").removeAttr("hidden");
    $("#login_button").attr("disabled", true);
    $("input").attr("disabled", true);

    $.get("/user/login?email=" + $("#email").val() + "&password=" + $("#password").val(),
        function(response) {
            console.log(response);
        if (response) {
            $.cookie("current_user", response.userID + "." + response.sign, {expires: 1 / 24} );
            window.location = "/";
            $(button).find("img").attr("hidden", true);
            $("#login_button").removeAttr("disabled");
            $("input").removeAttr("disabled");
        }
    });
}

function register(element) {
    $.ajax()
}