APP.Components.Navbar = React.createClass
  propTypes:
    title: React.PropTypes.string
    currentPage: React.PropTypes.string
    onChangePage: React.PropTypes.func

  goToHomePage: ->
    @props.onChangePage(@props.currentPage, 'home')

  render: ->
    Navbar = ReactBootstrap.Navbar
    Nav = ReactBootstrap.Nav
    NavItem = ReactBootstrap.NavItem

    <Navbar brand={@props.title} toggleNavKey={0} onClick={@goToHomePage}>
      <Nav right eventKey={0} />
    </Navbar>