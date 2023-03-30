module HomeHelper
  def symbols_data
    [
      {
        icon: 'insepire-yellow.png',
        alt: 'inspire icon',
        subHeading: 'Insipre',
        description: 'Inspired, inspiring others with Faith In Islam. We take from pristine sources of faith, embody and invite others.'
      },

      {
        icon: 'educate-yellow.png',
        alt: 'educate icon',
        subHeading: 'Educate',
        description: 'Teaching to Bring transformative, lasting and effective change. Cradle to Grave Education initiatives speaking to our lived realties'
      },

      {
        icon: 'serve-yellow.png',
        alt: 'serve icon',
        subHeading: 'Serve',
        description: 'Taking Knowledge into Action by service to others. We operate & develop welfare services which benefit all the Community'
      },

      {
        icon: 'community-yellow.png',
        alt: 'community icon',
        subHeading: 'Community',
        description: 'We are from the people for the benefit of people. We focus on establishing strong communal ties, networks & relationships.'
      },

      {
        icon: 'per-yellow.png',
        alt: 'perpetuity icon',
        subHeading: 'Perpetuity',
        description: 'Building resilience and endurance using Sustainable Enterprise Models. We secure resources, services and assets that endure and bring longevity in delivering our Vision.'
      },

       {
        icon: 'about-us.png',
        alt: 'about us icon',
        id: 'about-us',
        subHeading: 'About Us',
        description: 'We are a registered charity established by the Muslim community of Huddersfield. Our Vision is to inculcate sound Islamic faith & practice to realise our human potential.  -  Caption'
      }

    ]
  end

  def namaz_timings
    [
      {
        name: "Fajr Start",
        starting_time: "4:42",
        ending_time: "4:52"
      },

      {
        name: "Zuhr",
        starting_time: "13:17",
        ending_time: "12:45"
      },

      {
        name: "Asr",
        starting_time: "17:34",
        ending_time: "18:45"
      },

      {
        name: "Maghrib",
        starting_time: "19:43",
        ending_time: "21:13"
      },

      {
        name: "Isha",
        starting_time: "21:13",
        ending_time: "21:30"
      }
    ]
  end

  def event_tab_panel
    [
      {
        id: 'tab-panel-1',
        image: 'ramadhan-byan.jpg',
        alt: 'ramadhan byan',
        title: 'Saturday Ramadhan Bayaan | The Eden Foundation Hall',
        date_time: '23 March 2023 | 7:00 PM',
        description: 'Join us for an evening of spiritual reflection and inspiration at TheEdenFoundation Hall, as renowned Islamic scholar Sheikh Ali Al-Husseini delivers a powerful Ramadhan Bayaan on the topic of forgiveness'
      },

      {
        id: 'tab-panel-2',
        image: 'ramadhan-byan.jpg',
        alt: 'kids ramadhan show',
        title: 'Kids Ramadhan Show | The Eden Foundation Hall',
        date_time: '23 March 2023 | 7:00 PM',
        description: 'Dont miss out on the fun and excitement of our Kids Ramadhan Show at The Eden Foundation Hall. Bring your children along for an evening of entertainment and education as they learn about the importance of Ramadhan in a fun and engaging way'
      },

      {
        id: 'tab-panel-3',
        image: 'ramadhan-byan.jpg',
        alt: 'unity iftaar',
        title: 'Unity Iftaar | The Eden Foundation Hall',
        date_time: '23 March 2023 | 7:00 PM',
        description: 'Join us for an iftaar meal at The Eden Foundation Hall as we come together in the spirit of unity and brotherhood during the holy month of Ramadhan. Enjoy a delicious meal and connect with fellow members of the community.'
      },

      {
        id: 'tab-panel-4',
        image: 'ramadhan-byan.jpg',
        alt: 'snowdon walk',
        title: 'Snowdon walk | The Eden Foundation Hall',
        date_time: '23 March 2023 | 7:00 PM',
        description: 'Lace up your hiking boots and join us for a breathtaking trek up Snowdon, the highest mountain in Wales. Take in the stunning views and enjoy the fresh mountain air as we embark on this unforgettable journey together'
      }
    ]
  end

   def event_tab_button
    [
      {
        id: 'tab-button-1',
        title: 'Saturday Ramadhan Bayaan',
        date: 'March 23',
        day: 'Friday',
        name_time: 'The Eden Foundation Hall | 7:00 PM'
      },

      {
        id: 'tab-button-2',
        title: 'Kids Ramadhan Show',
        date: 'March 27',
        day: 'Tuesday',
        name_time: 'Abdullah Bin Razaak | 8:00 PM'
      },

      {
        id: 'tab-button-3',
        title: 'Unity Iftaar',
        date: 'March 31',
        day: 'Friday',
        name_time: 'Huddersfield, United Kindom | 10:00 PM'
      },

      {
        id: 'tab-button-4',
        title: 'Snowdon walk',
        date: 'March 31',
        day: 'Friday',
        name_time: 'Huddersfield, United Kindom | 10:00 PM'
      }
    ]
  end
end
