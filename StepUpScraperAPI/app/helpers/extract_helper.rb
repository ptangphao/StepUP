helpers do
  def extract_info(webpage)

    provider_initiate = {}

    # Basic information
    provider_initiate[:pt_id] = webpage.at('div#profileContainer')['data-profid']
    provider_initiate[:name] = webpage.at('div#profileContainer')['data-prof-name']
    provider_initiate[:title] = HTMLWhitespaceCleaner.clean(webpage.at('div.modal-subtitle').text.strip)
    provider_initiate[:phone] = webpage.at('div#profileContainer')['data-phone']
    provider_initiate[:street_address] = webpage.css("span[itemprop=streetAddress]")[0].text.strip
    provider_initiate[:locality] = webpage.css("span[itemprop=addressLocality]")[0].text.strip
    provider_initiate[:state] = webpage.css("span[itemprop=addressRegion]")[0].text.strip
    provider_initiate[:zipcode] = webpage.css("span[itemprop=postalcode]")[0].text.strip
    provider_initiate[:blurb] = HTMLWhitespaceCleaner.clean(webpage.css("div.profile-personalstatement").text)

    # Qualifications
    begin
      qual_list = webpage.css("div.profile-qualifications").css("li")
      # provider_initiate[:yrs_practice] = get_qual_yrs_practice(qual_list)
      yrs_practice_item = qual_list.find { |item| item.text.include?("Years in Practice:") }
      provider_initiate[:yrs_practice] = HTMLWhitespaceCleaner.clean(yrs_practice_item.children[2].text)[/\d+/].to_i
    rescue
      provider_initiate[:yrs_practice] = "none provided"
    end

    begin
      school_item = qual_list.find { |item| item.text.include?("School:") }
      provider_initiate[:school] = HTMLWhitespaceCleaner.clean(school_item.children[2].text)
    rescue
      provider_initiate[:school] = "none provided"
    end

    begin
      yr_graduated_item = qual_list.find { |item| item.text.include?("Year Graduated:") }
      provider_initiate[:yr_graduated] = HTMLWhitespaceCleaner.clean(yr_graduated_item.children[2].text).to_i
    rescue
      provider_initiate[:yr_graduated] = "none provided"
    end

    begin
      license_item = qual_list.find { |item| item.text.include?("License No. and State:") }
      license = HTMLWhitespaceCleaner.clean(license_item.children[2].text)
      provider_initiate[:license_no] = license.split(" ")[0]
      provider_initiate[:license_state] = license.split(" ")[1]
    rescue
      provider_initiate[:license_no] = "none provided"
      provider_initiate[:license_state] = "none provided"
    end

    begin
      div_spec_subcat_list = webpage.css("div.spec-subcat")
      ethnicity_item = div_spec_subcat_list.find { |item| item.text.include?("Ethnicity:") }
      ethnicities = ethnicity_item.children.css("span")
      provider_initiate[:client_ethnicities] = ethnicities.map { |ethnicity| HTMLWhitespaceCleaner.clean(ethnicity.text).gsub(/[,]/, "") }
    rescue
      provider_initiate[:client_ethnicities] = "none provided"
    end
    # * client_languages
    # profile_id
    # client_language
    begin
      languages_item = div_spec_subcat_list.find { |item| item.text.include?("Languages:") }
      languages = languages_item.children.css("span")
      provider_initiate[:client_languages] = languages.map { |language| HTMLWhitespaceCleaner.clean(language.text).gsub(/[,]/, "") }
    rescue
      provider_initiate[:client_languages] = "none provided"
    end

    # * client_ages
    # profile_id
    # client_age
    begin
      div_spec_list = webpage.css("div.spec-list")
      age_h3 = div_spec_list.find { |item| item.text.include?("Age") }
      age_element = div_spec_list[div_spec_list.index(age_h3)]
      age_index = age_element.children.index(age_element.children.find{ |item| item.text.include?("Age") })
      age_item = age_element.children[age_index+2]
      ages = age_item.children.css("li")
      provider_initiate[:client_ages] = ages.map { |age| HTMLWhitespaceCleaner.clean(age.text).gsub(/[,]/, "") }
    rescue
      provider_initiate[:client_ages] = "none provided"
    end

    # client_categories
    begin
      client_category_h3 = div_spec_list.find { |item| item.text.include?("Categories") }
      client_category_element = div_spec_list[div_spec_list.index(client_category_h3)]
      client_category_index = client_category_element.children.index(client_category_element.children.find{ |item| item.text.include?("Categories") })
      client_category_item = client_category_element.children[client_category_index+2]
      categories = client_category_item.children.css("li")
      provider_initiate[:client_categories] = categories.map { |category| HTMLWhitespaceCleaner.clean(category.text).gsub(/[,]/, "") }
    rescue
      provider_initiate[:client_categories] = "none provided"
    end

    # * treatment_modality
    # profile_id
    # treatment_modality
    begin
      modality_h3 = div_spec_list.find { |item| item.text.include?("Modality") }
      modality_element = div_spec_list[div_spec_list.index(modality_h3)]
      modality_index = modality_element.children.index(modality_element.children.find{ |item| item.text.include?("Modality") })
      modality_item = modality_element.children[modality_index+2]
      modalities = modality_item.children.css("li")
      provider_initiate[:treatment_modalities] = modalities.map { |modality| HTMLWhitespaceCleaner.clean(modality.text).gsub(/[,]/, "") }
    rescue
      provider_initiate[:treatment_modalities] = "none provided"
    end

    # * treatment_orientation
    # profile_id
    # treatment_orientation
    begin
      treatments = webpage.css("div.spec-list").css("span[data-ui-type=glossary]").children
      provider_initiate[:treatment_orientation] = treatments.map{ |treatment| treatment.text }
    rescue
      provider_initiate[:treatment_orientation] = "none provided"
    end

    # * speciality_target_issues (one to many)
    # profile_id
    # target_issues
    begin
      target_issues_items = webpage.css("ul.specialties-list").text.strip.split("\n")
      provider_initiate[:target_issues] = target_issues_items.map { |item| item.strip }
    rescue
      provider_initiate[:target_issues] = "none provided"
    end

    # * speciality_all_issues (one to many)
    # profile_id
    # issues
    begin
      issues_h3 = div_spec_list.find { |item| item.text.include?("Issues") }
      # issues_item = issues_h3.css("ul").text.strip.split("\n")
      issues_item = issues_h3.css("ul").text.strip.gsub(/\n\n/, "\n").gsub(/\n  \n/, "\n").split("\n ")
      issues_list = issues_item.map { |item| item.strip }
      provider_initiate[:issues] = issues_list.reject!(&:empty?)
      # provider_initiate[:issues] = issues_item.map { |item| item.strip }
      # all_issues = issues.map { |issue| HTMLWhitespaceCleaner.clean(issue.text).gsub(/[,]/, "") }
      # HTMLWhitespaceCleaner.clean(issues_h3.css("ul").text)
    rescue
      provider_initiate[:issues] = "none provided"
    end

    begin
      financials_list = webpage.css("div.profile-finances").css("li")
      avg_cost_item = financials_list.find { |item| item.text.include?("Avg Cost (per session):") }
      provider_initiate[:avg_cost] = HTMLWhitespaceCleaner.clean(avg_cost_item.children[2].text)
      # provider_initiate[:low_cost] = HTMLWhitespaceCleaner.clean(avg_cost_item.children[2].text)[/\d+/].to_i
    rescue
      provider_initiate[:avg_cost] = "no info provided"
    end

    begin
      sliding_scale_item = financials_list.find { |item| item.text.include?("Sliding Scale:") }
      provider_initiate[:sliding_scale] = HTMLWhitespaceCleaner.clean(sliding_scale_item.children[2].text)
    rescue
      provider_initiate[:sliding_scale] = "no info provided"
    end

    begin
      takes_insurance_item = financials_list.find { |item| item.text.include?("Accepts Insurance:") }
      provider_initiate[:takes_insurance] = HTMLWhitespaceCleaner.clean(takes_insurance_item.children[2].text)
    rescue
      provider_initiate[:takes_insurance] = "no info provided"
    end

    begin
      accepted_insurance_item = webpage.css("div.profile-finances").css("div.spec-list").css("ul")
      provider_initiate[:accepted_insurance] = accepted_insurance_item.map { |item| item.text.strip }
    rescue
      provider_initiate[:accepted_insurance] = "no info provided"
    end

    begin
      accepted_payments_item = financials_list.find { |item| item.text.include?("Accepted Payment Methods:") }
      provider_initiate[:accepted_payments] = HTMLWhitespaceCleaner.clean(accepted_payments_item.children[2].text).split(", ")
    rescue
      provider_initiate[:accepted_payments] = "no info provided"
    end

    return provider_initiate

  end

  # def get_qual_yrs_practice(qual_list)
  #   yrs_practice_item = qual_list.find { |item| item.text.include?("Years in Practice:") }
  #   return HTMLWhitespaceCleaner.clean(yrs_practice_item.children[2].text)[/\d+/].to_i
  # end

end
