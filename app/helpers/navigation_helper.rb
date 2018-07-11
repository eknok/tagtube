module NavigationHelper

  def tag_links_partial_path
    if user_signed_in?
      'layouts/navigator/tag_elements/signed_in_links'
    else
      'layouts/navigator/tag_elements/non_signed_in_links'
    end
  end

end
