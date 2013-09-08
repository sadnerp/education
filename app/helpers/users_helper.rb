module UsersHelper
  def gravatar_for(user, options = {size: 50, cssclass: ""})
  	gravatar_id		= Digest::MD5::hexdigest(user.email.downcase)
  	size			= options[:size]
  	cssclass		= options[:cssclass]
  	gravatar_url	= "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  	image_tag(gravatar_url, alt: user.name, class: "#{cssclass}")
  end
end
