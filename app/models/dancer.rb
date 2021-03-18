class Dancer < ApplicationRecord
  belongs_to :genre, optional: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :about, :video, :first_name, :last_name, presence: true, on: :update

  # def youtube_embed

  #   if video 
  #     if video[/youtu.be\/([^\?])/]
  #     youtube_id = $1
  #     else
  #     video[/^.((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?])./]
  #     youtube_id = $5
  #     end
      
  #     return "http://www.youtube.com/embed/#{ youtube_id }" 
  #   end
  #   return nil
    
  # end


  def youtube_embed(youtube_url)
    if youtube_url[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end
  
    return "http://www.youtube.com/embed/#{ youtube_id }"
  end

end
