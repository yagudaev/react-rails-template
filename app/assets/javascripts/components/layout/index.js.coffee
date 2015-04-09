
APP.Components.AppComponenet = React.createClass
  getInitialState: ->
    {page: 'home'}

  handlePageChange: (from, to) ->
    @setState(page: to)

  render: ->
    Page = APP.Components.Page

    <section>
      <Page path={@state.page} onChangePage={@handlePageChange}/>
    </section>