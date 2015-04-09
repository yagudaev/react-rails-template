APP.Components.SignupPage = React.createClass
  propTypes:
    onChangePage: React.PropTypes.func

  render: ->
    Navbar = APP.Components.Navbar
    SignupForm = APP.Components.SignupForm

    <div>
      <Navbar title="Sign Up Process" onChangePage={@props.onChangePage} currentPage="sign_up" />
      <SignupForm />
    </div>