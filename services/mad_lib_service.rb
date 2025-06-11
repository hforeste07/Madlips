class MadLibService

  STORIES = {
    horror: {
      ghost: {
        title: "The Haunted House",
        template: "It was a dark and stormy night when <%= name %> entered the <%= place %>..."
      },
      # TODO
      # "asylum",
      # "murder",
      # "nature"
    },


    # TODO
    # "sci-fi": ["aliens", "robots", "space", "laboratory"],
    # fantasy: ["magic", "fairy", "dwarf", "knights"],
    # adventure: ["spy", "bank", "jungle", "archaeology"]
  }

  def self.placeholders_for(template)
    # scans for erb tags <%= %>
    # returns array of strings used in erb tags
    template.scan(/<%=\s*(\w+)\s*%>/).flatten.uniq
  end
end
