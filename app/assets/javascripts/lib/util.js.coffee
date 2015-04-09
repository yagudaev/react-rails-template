class APP.Util
  @snakeCase: (str) -> str.toLowerCase().replace(/ /g, '_')
  # @titelize: (str) -> str.replace(/([A-Z]+)/g, (group) -> )