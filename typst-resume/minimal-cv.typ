#import "./package.typ": *


#let secondary-theme = (
  accent-color: red,
  body-color: red,
)

#show: cv.with(
  theme: (
    //font: "Roboto",
    //accent-color: purple,
    //main-accent-color: red,
    //main-body-color: green,
  ),
  title: "Harris Butler",
  subtitle: "Software Engineer",
  aside: {
    section(
      theme: secondary-theme,
      "Contact",
      {
        entry(
          "Home",
          "Austin, TX",
          none,
        )
        entry(
          "Phone",
          link("https://wa.me/85212345678", "+1 303-319-0118"),
          none,
        )
        entry(
          "Email",
          link("mailto:hb@harrishbutler.com", "hb@harrishbutler.com"),
          none,
        )
        entry("GitHub", link("https://github.com/TheHarrisButler", "TheHarrisButler"), none)
        entry(
          "LinkedIn",
          link("https://www.linkedin.com/in/harris-butler-371761173", "in/harris-butler-371761173"),
          none,
        )
      },
    )

    section(
      "Technology Stack",
      {
        entry(
          "Web",
          "JavaScript + TypeScript",
          [
            #progress-bar(70%)
          ],
        )
        entry(
          none, 
          "Node.js",
          [
            #progress-bar(70%)
          ],
        )
        entry(
          none,
          "React",
          [
            #progress-bar(50%)
          ],
        )
        entry(
          "DBMS",
          "MS SQL, PostgreSQL, MongoDB",
          [
            #progress-bar(40%)
          ],
        )
        entry(
          none,
          "Hosting, CI/CD",
          [Terraform, AWS,\ GitHub Actions],
        )
      },
    )

    section(
      "Extracurricular Activities",
      {
        entry(
          "Culture",
          none,
          [Cooking, History, Reading],
        )
        entry(
          "Sport",
          none,
          [Golf, Running],
        )
      },
    )

     section(
      "Awards and Achievements",
      {
        entry(
          "Student Athelete",
          none,
          [5 year lettermen, 2018 Champions of the American Southwest Conference],
        )
      },
    )

  }
)


#section(
  "Professional Experience",
  {
    entry(
      right: [*\@Auctane* – Austin, TX],
      "Apr 2022 - now",
      "Software Engineer L2",
      [
        #par(lorem(24))
        #list(
          lorem(20),
          lorem(7),
          lorem(16),
          lorem(16),
        )
      ],
    )
    entry(
      right: [*\@Auctane* -- Austin, TX],
      "June 2021 - Apr 2022",
      "Software Engineer L1",
      [
        #par(lorem(28))
        #par(lorem(16))
      ],
    )
    entry(
      right: [*\@Glowstik* -- Denver, CO],
      "Oct 2022 - June 2023",
      "Software Engineer Contract ",
      [
        #par(lorem(12))
        #list(
          lorem(20),
          lorem(16),
          lorem(7),
        )
      ],
    )
    entry(
      right: [*\@Talent Reef* -- Denver, CO],
      "June 2019 - Aug 2019",
      "Internship",
      [
        #par(lorem(12))
      ],
    )
  },
)

#section(
  "Educational Background",
  {
    entry(
      theme: secondary-theme,
      right: [Tyler, TX],
      "2016 - 2021",
      "The University of Texas at Tyler",
      [ Bachelor of Science in Computer Science, Minor in Mathematics ],
    )
  },
)