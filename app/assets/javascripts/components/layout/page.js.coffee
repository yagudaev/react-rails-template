APP.Components.Page = React.createClass
  propTypes:
    path: React.PropTypes.string
    onChangePage: React.PropTypes.func

  pageToRender: ->
    MenuPage = APP.Components.MenuPage
    SignupPage = APP.Components.SignupPage

    switch @props.path
      when "home"
        <MenuPage onChangePage={@props.onChangePage} />
      when "sign_up"
        <SignupPage onChangePage={@props.onChangePage} title="Sign Up Process" />

  render: ->
    <div id="page">
      {@pageToRender()}
    </div>
