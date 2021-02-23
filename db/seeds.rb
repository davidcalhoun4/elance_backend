# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Genre.create!([
    {
      style: "Ballet"
    },
    {
      style: "Modern"
    },
    {
      style: "Contemporary"
    },
    {
      style: "Tap"
    },
    {
      style: "Hip-Hop"
    }
  ])

  Dancer.create!([
    {
      password: "password",
      email: "frederick@gmail.com",
      first_name: "Colin",
      last_name: "Frederick",
      image_url: "https://digitaldanceproject.files.wordpress.com/2020/09/img_5092-copy-colin-frederick.jpg?w=233",
      resume: "Colin Frederick Resume",
      about: "Colin Frederick About",
      video: "https://www.youtube.com/watch?v=mlCalvvrRU8",
      genre_id: 3
    },
    {
      password: "password",
      email: "wong@gmail.com",
      first_name: "Miche",
      last_name: "Wong",
      image_url: "https://dance.land/wp-content/uploads/2019/09/MIche-Wong-odcdance-300x300.jpg",
      resume: "Miche Wong Resume",
      about: "Miche Wong About",
      video: "https://www.youtube.com/watch?v=0LkXU2rLWP4",
      genre_id: 2
    },
    {
      password: "password",
      email: "castillo@gmail.com",
      first_name: "Jaime",
      last_name: "Castilla",
      image_url: "https://dance.land/wp-content/uploads/2019/09/Jaime-Garcia-Castilla-odcdance-300x300.jpg",
      resume: "Jaime Castilla Resume",
      about: "Jaime Castilla About",
      video: "https://www.youtube.com/watch?v=ZqB2oCCodzc",
      genre_id: 1
    }
  ])

  Employer.create!([
    {
      password: "password",
      email: "odc@gmail.com",
      company_name: "ODC/Dance",
      image_url: "https://www.odc.dance/sites/all/themes/odc/images/odc_logo.png",
      description: "ODC/Dance description",
      employer_type: "Company"
    },
    {
      password: "password",
      email: "post@gmail.com",
      company_name: "Post:Ballet",
      image_url: "https://www.newmusicusa.org/wp-content/uploads/2014/03/IMG_0463.jpg",
      description: "Post:Ballet description",
      employer_type: "Company"
    },
    {
      password: "password",
      email: "event@gmail.com",
      company_name: "JC Events",
      image_url: "https://media.glassdoor.com/sqll/1597466/jc-jeans-squarelogo-1531744623807.png",
      description: "JC Events description",
      employer_type: "Event Hirer"
    },
    {
      password: "password",
      email: "neches@gmail.com",
      company_name: "Neches Dance",
      image_url: "https://mir-s3-cdn-cf.behance.net/project_modules/disp/0aa01128581569.55c7f272d2f73.jpg",
      description: "Neches Dance description",
      employer_type: "Freelance Choreographer"
    }
  ])

  Post.create!([
    {
      title: "Dancer Needed for Company Show",
      employer_id: 1, 
      description: "Dancer needed for our holiday show Velveteen Rabbit",
      image_url: "https://ybca.org/wp-content/uploads/2019/08/VR_16.9-image_feature.jpg",
      genre_id: 1
    },
    {
      title: "Open Company Position",
      employer_id: 2, 
      description: "Looking to hire dancr for open company position next season",
      image_url: "https://images.squarespace-cdn.com/content/v1/5b34758fa2772c576ae3af0a/1599951203176-CIXL8HPWTWWT89XOA3R9/ke17ZwdGBToddI8pDm48kD8rqGGps2pvaaR4DdBgLhNZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpylqMIOeBnlkFIjYo8JeP2Il4wgOQfMtgLt4oIkZ9moAYDrxyjFoHCRsCFZk_szyNA/920x920.jpg",
      genre_id: 2
    },
    {
      title: "Musuem Opening Night: Dancers Needed",
      employer_id: 3, 
      description: "Dancers needed for piece being performed at opening night of museum.",
      image_url: "https://media.glassdoor.com/sqll/1597466/jc-jeans-squarelogo-1531744623807.png",
      genre_id: 5
    },
    {
      title: "Dancer for film project",
      employer_id: 4, 
      description: "1 Dancer needed for film project",
      image_url: "https://assets.danceinforma.com/public/assets/mce/Chelsea_New/San_Francisco_Dance_Film_Festival_-_Home_Alone.jpg",
      genre_id: 3
    }
  ])