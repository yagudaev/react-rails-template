Input = ReactBootstrap.Input
Button = ReactBootstrap.Button
Util = APP.Util
UserActions = APP.Actions.UserActions

APP.Components.SignupForm = React.createClass
  propTypes:
    onChangePage: React.PropTypes.func

  getInitialState: ->
    {errors: {}, saved: false, submitted: false}

  handleChange: (e) ->
    errors = @state.errors
    delete errors[e.target.name]
    @setState errors: errors
    # newState = @state
    # newState[e.target.name] = e.target.value
    # @setState(newState)

  handleSubmit: (e) ->
    user = $(@refs['form'].getDOMNode()).serializeObject()
    UserActions.createUser(user, @handleSaved, @handleError)

  handleSaved: ->
    @setState(errors: {}, saved: true, submitted: true)

  handleError: (xhr, errorType, statusCode) ->
    data = JSON.parse(xhr.responseText)
    @setState(errors: data.user.errors, saved: false, submitted: true)

  getFieldStyle: (field) ->
    return if !@state[field] && !@state.submitted
    if @state.errors[field] then 'error' else 'success'

  renderInput: (label, options = {}) ->
    options = $.extend {
      name: Util.snakeCase(label)
      type: 'text'
    }, options

    if options.type == 'checkbox'
      <Input type={options.type} label={label} name={options.name} ref={options.name}  bsStyle={@getFieldStyle(options.name)} hasFeedback onChange={@handleChange} help={@state.errors[options.name]} />
    else
      <Input type={options.type} placeholder={label} name={options.name} ref={options.name}  bsStyle={@getFieldStyle(options.name)} hasFeedback onChange={@handleChange} help={@state.errors[options.name]} />

  render: ->
    if @state.saved
      <div>
        <h3 class='confirmation-msg'>A conformation email has been sent to you. Pleaes confirm your registration to activate your account!</h3>
        <small>Didn&#39;t receive an emai? <a href="#">Send Again</a></small>
        <Button bsStyle='default' block disabled>Confirm Account</Button>
      </div>
    else
      <form ref='form'>
        <h2>Create a new Account</h2>
        <small>Already have an account? <a href="#/login">Log in</a></small>
        {@renderInput('First Name')}
        {@renderInput('Last Name')}
        {@renderInput('Email')}
        {@renderInput('Date of Birth')}
        {@renderInput('Postal Code')}
        <Input type='select' ref='favouriteTeam'>
          <option value=''>Favourite Team</option>
        </Input>
        {@renderInput('Opt-in for our newsletter?', type: 'checkbox', name: 'news_letter')}
        <Button bsStyle='primary' onClick={@handleSubmit} block>Create Account</Button>
      </form>
