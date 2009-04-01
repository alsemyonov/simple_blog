module NavigationHelpers
  def path_to(page_name)
    case page_name
    
    when /the homepage/, /главной странице/
      root_path

    when /the list of articles/, /странице статей/
      articles_path

    when /странице управления/
      manage_articles_path
    
    # Add more page name => path mappings here
    
    else
      raise "Can't find mapping from \"#{page_name}\" to a path."
    end
  end
end

World do |world|
  world.extend NavigationHelpers
  world
end
