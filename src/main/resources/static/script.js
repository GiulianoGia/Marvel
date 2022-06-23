$(document).ready(function() {
    $("input").on("change", function () {
        let isFilled = true;
        $("input").each(function(index, element) {
            if($(element).val() == null) {
                isFilled = false;
                return false;
            }
        });
        if(isFilled) {
            $("button[type=submit]").eq(0).removeAttr("disabled");
        }
    })
});

// ---------------------------------------------------------------------------------------------------------------------
// FORM FUNCTIONS
function disable_input() {
    $("form").children().attr("disabled", true);
}