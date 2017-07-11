get '/' do
  content_type :json
  begin
    page = Nokogiri::HTML(open(params[:url]))
    results = extract_info(page)
    {data: results}.to_json
  rescue
    {data: "invalid search criteria"}.to_json
  end
end
