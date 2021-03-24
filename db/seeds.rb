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
      email: "colin@gmail.com",
      first_name: "Colin",
      last_name: "Frederick",
      image_url: "https://digitaldanceproject.files.wordpress.com/2020/09/img_5092-copy-colin-frederick.jpg?w=233",
      resume: "https://res.cloudinary.com/dvdclhn/image/upload/v1616604772/qstwap8ptakb8ke68ww0.pdf",
      about: "Colin Frederick began his dance training at Center Stage Academy in Warrensburg, Missouri. He has expanded his training with Hubbard Street Dance Chicago and Alonzo King LINES Ballet. Colin obtain his Bachelor of Fine Arts in Dance Performance and Choreography, with an emphasis in Ballet, from the University of Missouri- Kansas City Conservatory under the direction of Paula Weber, Gary Abbott, DeeAnna Hiett, and Ronald Tice. He has danced professionally with Wylliams/Henry Dance Company and Tristian Griffin Dance Company.",
      video: "https://www.youtube.com/watch?v=mlCalvvrRU8",
      genre_id: 4
    },
    {
      password: "password",
      email: "miche@gmail.com",
      first_name: "Miche",
      last_name: "Wong",
      image_url: "https://dance.land/wp-content/uploads/2019/09/MIche-Wong-odcdance-300x300.jpg",
      resume: "https://res.cloudinary.com/dvdclhn/image/upload/v1616604772/qstwap8ptakb8ke68ww0.pdf",
      about: "Miche Wong is classically trained and has performed with locally and internationally recognized modern dance companies. In 2013, she became the only foreign company member of Guangdong Modern Dance Company under the direction of Willy Tsao. Immersed in a different landscape of culture and dance, she also started creating her own work and teaching method. She returned to the Bay Area in 2016 and performed works for Garrett + Moulton Productions, ZiRu Dance, LevyDance, Capacitor, amongst others. Miche has taught in China and locally at the LINES Ballet Training Program, University programs and various studios. She is excited to continue propelling her energy and care into the San Francisco dance community and beyond.",
      video: "https://www.youtube.com/watch?v=0LkXU2rLWP4",
      genre_id: 5
    },
    {
      password: "password",
      email: "jaime@gmail.com",
      first_name: "Jaime",
      last_name: "Castilla",
      image_url: "https://dance.land/wp-content/uploads/2019/09/Jaime-Garcia-Castilla-odcdance-300x300.jpg",
      resume: "https://res.cloudinary.com/dvdclhn/image/upload/v1616604772/qstwap8ptakb8ke68ww0.pdf",
      about: "Jaime Garcia Castilla was born in Madrid, Spain, and studied at the Royal Conservatory of Professional Dance. He was named an apprentice with the San Francisco Ballet in 2001 and joined the Company as a member of the corps de ballet the following year. He was promoted to soloist in 2006 and to principal dancer in 2008. He created roles in Elo’s Double Evil; McGregor’s Borderlands; Morris’ Beaux, Joyride, and Sylvia; Page’s Guide to Strange Places; Possokhov’s Classical Symphony and Fusion; and Wheeldon’s Within the Golden Hour. As a guest artist, Jaime performed at “Ballet Stars From San Francisco,” the Lively Arts Foundation Gala in Fresno, California, in 2012, and at the Pas de Deux Gala in Valladolid, Spain, in 2011 and 2012. He danced Flames of Paris and “The Ocean and Two Pearls” from The Humpbacked Horse in Osaka, Japan, in 2006.",
      video: "https://www.youtube.com/watch?v=ZqB2oCCodzc",
      genre_id: 1
    },
    {
      password: "password",
      email: "chong@gmail.com",
      first_name: "Mia J",
      last_name: "Chong",
      image_url: "https://www.odc.dance/sites/default/files/MiaJChong.jpg",
      resume: "https://res.cloudinary.com/dvdclhn/image/upload/v1616604772/qstwap8ptakb8ke68ww0.pdf",
      about: "Mia J. Chong (she/her/hers) is from San Francisco, California. She received her training from the Kirov Academy of Ballet, San Francisco Ballet School, the Ailey School, Alonzo King LINES Ballet, Hubbard Street Dance Chicago, the School at Jacob’s Pillow’s Contemporary Program, and ODC School. Mia has danced with Robert Moses’ KIN, Post:Ballet, San Francisco Symphony, and Dance Theatre of San Francisco. She has been a creative collaborator and dancer with ODC/Dance Company since 2016. Mia has received a Princess Grace Award, Chris Hellman Dance Honor, Aninstantia Foundation Grant, LINES Ballet Homer Avila Award, Isadora Duncan Dance Awards and nominations, and Jacob’s Pillow Ann & Weston Hicks Choreography Fellowship. She currently studies Organizational Behavior and Change at New York University. For more information, please visit miajchong.com.",
      video: "https://www.youtube.com/watch?v=YPXZJGtuLRM",
      genre_id: "3"
    },
    {
      password: "password",
      email: "calvin@gmail.com",
      first_name: "Calvin",
      last_name: "Thomas",
      image_url: "https://www.odc.dance/sites/default/files/image1_crop.jpg",
      resume: "https://res.cloudinary.com/dvdclhn/image/upload/v1616604772/qstwap8ptakb8ke68ww0.pdf",
      about: "Hailing from Maysville, Kentucky, Calvin Thomas received foundational training at the Otto M. Budig Academy of Cincinnati Ballet. He has supplemented his studies at Boston Ballet School, The School of American Ballet, Ballet Austin Academy, and The School of Oregon Ballet Theatre. His career start began with the Cincinnati Ballet and Ballet Austin. Since moving to the Bay Area in 2011 he has performed with Company C Contemporary Ballet, New York Theatre Ballet, Oakland Ballet Company, Dance Theatre of San Francisco, Kiandanda Dance Theater, Mark Foehringer Dance Project, and Garrett Moulton Productions. His repertoire includes works by Thang Dao, Gregory Dawson, Yuri Zhukov, and Maurice Causey among others. When not dancing he still enjoys time in the studio sharing knowledge and teaching the next generation of dancers. He has recently developed a passion for coaching from the inspiration of his mentor, Shannon Bresnahan.",
      video: "https://www.youtube.com/watch?v=zN5ZngBdiDI"
      genre_id: "1"
    }
  ])

  Employer.create!([
    {
      password: "password",
      email: "odc@gmail.com",
      company_name: "ODC/Dance",
      image_url: "https://www.odc.dance/sites/all/themes/odc/images/odc_logo.png",
      description: "Founded in 1971 by Artistic Director Brenda Way, ODC/Dance was one of the first American companies to incorporate a post-modern sensibility (an appreciation for pedestrian movement) into a virtuosic contemporary dance technique and to commit major resources to interdisciplinary collaboration and musical commissions for the repertory.

      ODC/Dance Company's ten outstanding dancers perform its imaginative repertory for more than 50,000 people annually. In addition to two annual home seasons in San Francisco (Dance Downtown and the beloved holiday production, The Velveteen Rabbit), past highlights include numerous appearances at the Joyce Theater in New York, sold out performances at the Kennedy Center, standing room only engagements in Europe and Russia, and two USIA tours to Asia. In 46 years, ODC/Dance has performed for more than a million people in 32 states and 11 countries, with support from the NEA, the U.S. State Department, and many state and city arts agencies.",
      employer_type: "Company"
    },
    {
      password: "password",
      email: "post@gmail.com",
      company_name: "Post:Ballet",
      image_url: "https://www.newmusicusa.org/wp-content/uploads/2014/03/IMG_0463.jpg",
      description: "Post:ballet is led by Dekkers and Resident Choreographer Vanessa Thiessen, whose collaborative approach to dance making gives all of the artists involved the opportunity to share in the investigation and contribute to the development of a new work, resulting in productions that are “decidedly daring and always beautifully performed” (SF Arts Monthly). Integrating the company’s classically trained dancers with diverse artists including composers, animators, architects, cinematographers, fashion designers, and sculptors, Post:ballet’s collaborations range from intensely intimate to wildly conceptual. Critical Dance exclaimed that Post:ballet’s “choreography and artistic collaborations are risky and challenging, yet they still cling to traditional technique in a very unique and genuine way.” ",
      employer_type: "Company"
    },
    {
      password: "password",
      email: "event@gmail.com",
      company_name: "JC Events",
      image_url: "https://media.glassdoor.com/sqll/1597466/jc-jeans-squarelogo-1531744623807.png",
      description: "Founded in 2016, JC Events has served many clients. We strive to connect our clients with top rated performers and an unforgettable experience.",
      employer_type: "Event Hirer"
    },
    {
      password: "password",
      email: "jeremy@gmail.com",
      company_name: "Noons Dance",
      image_url: "https://mir-s3-cdn-cf.behance.net/project_modules/disp/0aa01128581569.55c7f272d2f73.jpg",
      description: "Jeremy Noons is a San Francisco based TONY® Award nominated choreographer and director. Since paving his professional career, his work has been characterized as a blend of powerful versatility and theatrical range.",
      employer_type: "Freelance Choreographer"
    },
    {
      password: "password",
      email: "jamaal@gmail.com",
      company_name: "Jamaal Burkmar",
      image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlykCcFCd9dLPNErlJZinENSIa2dLhJoAcbQ&usqp=CAU",
      description: "Jamaal is a choreographer who trained at the Northern School of Contemporary Dance (NSCD) where he gained a BA (Hons) in Contemporary Dance & Foundation Diploma. He has worked with ACE Dance and Music – working with professional artists including Luyanda Sidiya, Jose Agudo, and Gail Parmel as well as on the company’s outreach programmes working in schools and with their youth company. Jamaal has taught workshops at NSCD, Pro Dance, and The Place. He currently teaches and has taught in different capacities at Edge Hill University, NSCD and Salford University."
      employer_type: "Freelance Choreographer"
    }
  ])

  Post.create!([
    {
      title: "Dancer Needed for Company Show",
      employer_id: 1, 
      description: "One dancer needed for our holiday show Velveteen Rabbit. Show runs from 12/05/21 - 12//27/21 at YBCA Theater. We’re looking for a dancer with a strong sense of musicality and timing, theater skills, clean technique, and ability to retain a large amount of technical choreography. Include in your email:
      1 page CV and headshot (clear photo of your face, not full body), link to dance reel, and resume. Deadline for applications is the 30th of March 2021",
      image_url: "https://ybca.org/wp-content/uploads/2019/08/VR_16.9-image_feature.jpg",
      genre_id: 1
    },
    {
      title: "Open Company Position 2021-2022 Season",
      employer_id: 2, 
      description: "Looking to hire 1 dancer for open company position 2021-2022 season. Post:Ballet is seeking experienced dancer interested in a diverse, collaborative environment. The artist should display strong classical training, have experience in contemporary dance and a passion for the creative process.Strong sense of musicality and timing, playful theater improvisation skills, clean technique, and ability to retain a large amount of technical choreography a must. Season includes local and touring performances, community outreach classes, and work with guest choreographers. Include in your email:
      1 page CV and headshot (clear photo of your face, not full body), link to dance reel, and resume. Deadline for applications is the 15th of April 2021. Dancers will be notified with more information by May 15th, 2021",
      image_url: "https://images.squarespace-cdn.com/content/v1/5b34758fa2772c576ae3af0a/1599951203176-CIXL8HPWTWWT89XOA3R9/ke17ZwdGBToddI8pDm48kD8rqGGps2pvaaR4DdBgLhNZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpylqMIOeBnlkFIjYo8JeP2Il4wgOQfMtgLt4oIkZ9moAYDrxyjFoHCRsCFZk_szyNA/920x920.jpg",
      genre_id: 2
    },
    {
      title: "Musuem Opening Night: Dancers Needed",
      employer_id: 3, 
      description: "Dancers needed for piece being performed at opening night of museum. We’re looking for a dancers with a strong sense of musicality and timing, playful theater improvisation skills, clean technique, and ability to retain a large amount of technical choreography. Include in your email:
      1 page CV and headshot (clear photo of your face, not full body), link to dance reel, and resume. Deadline for applications is the 26th of March 2021",
      image_url: "https://media.glassdoor.com/sqll/1597466/jc-jeans-squarelogo-1531744623807.png",
      genre_id: 5
    },
    {
      title: "Dancer for film project",
      employer_id: 4, 
      description: "1 Dancer needed for film project. Looking for a dancer with a strong sense of musicality and timing, improvisation skills, clean technique, and ability to retain a large amount of technical choreography. Include in your email:
      1 page CV and headshot (clear photo of your face, not full body), link to dance reel, and resume. Deadline for applications is the 6th of April 2021",
      image_url: "https://assets.danceinforma.com/public/assets/mce/Chelsea_New/San_Francisco_Dance_Film_Festival_-_Home_Alone.jpg",
      genre_id: 3
    },
    {
      title: "Seeking Dancers for two productions",
      employer_id: 5,
      description: "For the upcoming creation and tour of our new production DONUTS Co-produced by The Place , as well as digital creations of our work JUKEBOXin collaboration with Mahalia. We’re looking for dancers with a strong sense of musicality and timing, playful improvisation skills and ability to retain a large amount of technical choreography. We’re looking for a dancer with a strong sense of musicality and timing, playful theater improvisation skills, clean technique, and ability to retain a large amount of technical choreography. Include in your email:
      1 page CV and headshot (clear photo of your face, not full body), link to dance reel, and resume. Deadline for applications is the 26th of March 2021",
      image_url: "https://xtrax.org.uk/app/uploads/2020/08/Jamaal-Burkmar_-Photo-by-Danilo-Moroni-min-1.jpeg",
      genre_id: 5
    }
  ])