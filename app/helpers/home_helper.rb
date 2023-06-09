module HomeHelper
  def symbols_data
    [
      {
        icon: 'insepire-yellow.png',
        alt: 'inspire icon',
        subHeading: 'Inspire',
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
        title: 'Saturday Ramadhan Bayaan - 19:00',
        description: 'Join us for an evening of spiritual reflection and inspiration at The Eden Center - Highfields, with our very own local Islamic scholars.'
      },

      {
        id: 'tab-panel-2',
        image: 'ramadhan-byan.jpg',
        alt: 'Kids ramadhan show',
        title: 'Ramadhan Show 2nd April - 18:00',
        description: 'Dont miss out on the fun and excitement of our Kids Ramadhan Show. Listen Via Mixlr broadcast as they learn about the importance of Ramadhan in a fun and engaging way.'
      },

      {
        id: 'tab-panel-3',
        image: 'ramadhan-byan.jpg',
        alt: 'unity iftaar',
        title: 'Unity Iftaar 2nd April - 18:30',
        description: 'Join us for an iftaar meal at St Georges Square from 6:30pm onwards as we come together in the spirit of unity and brotherhood during the holy month of Ramadhan. Break fast with local members of Muslim Community.'
      },
    ]
  end

   def event_tab_button
    [
      {
        id: 'tab-button-1',
        title: 'Saturday Ramadhan Bayaan',
        date: '1st April',
        day: 'Saturday',
        name_time: 'Time | 19:00'
      },

      {
        id: 'tab-button-2',
        title: 'Kids Ramadhan Show',
        date: '2nd April',
        day: 'Sunday',
        name_time: 'Time | 18:00'
      },

      {
        id: 'tab-button-3',
        title: 'Unity Iftaar',
        date: '2nd April',
        day: 'Sunday',
        name_time: 'Time | 18:30'
      }
    ]
  end
end
