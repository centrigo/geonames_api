module GeoNamesAPI
  class Search < ListEndpoint

    METHOD = 'search'
    FIND_PARAMS = %w(q maxRows)
    DEFAULT_MAX_ROWS = 10

    def self.find_place(q, options = {})
      request = {q: q, maxRows: DEFAULT_MAX_ROWS, type: "json"}.merge(options)
      where(request)
    end

  end
end
