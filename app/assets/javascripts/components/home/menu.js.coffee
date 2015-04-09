Button = ReactBootstrap.Button
Util = APP.Util

APP.Components.MenuPage = React.createClass
  propTypes:
    onChangePage: React.PropTypes.func

  handleClick: (e) ->
    to = Util.snakeCase(e.target.textContent)
    @props.onChangePage('home', to)

  render: ->
    <div>
      <h1>App Main Menu</h1>
      <div>
        <Button block onClick={@handleClick}>Sign Up</Button>
        <Button block onClick={@handleClick}>Groups</Button>
        <Button block onClick={@handleClick}>Leaderboard</Button>
        <Button block onClick={@handleClick}>User Profile</Button>
      </div>
    </div>