Phoenix.set({
  openAtLogin: true
});

var application = "Dash";
var app_icon = App.get(application).icon();
var midx = Screen.main().frame().width / 2;
var midy = Screen.main().frame().height / 2;
var test_mode = Modal.build({
  duration: 2,
  icon: app_icon,
  text: "THis is a test modal",
  appearance: "dark"
})
test_mode.origin = {
  x: Screen.main().frame().width * (.12)
  ,y: midy
}

  test_mode.show();
