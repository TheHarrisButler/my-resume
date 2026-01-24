#import "./package.typ": *

#let aside-theme = (
  gutter-size: 0.5fr
)

#show: cv.with(
  theme: (),
  title: "Harris Butler",
  subtitle: "Senior Software Engineer",
  aside: {
    section(
      "Contact",
      {
        entry(
          "Home",
          "Austin, TX",
          none,
        )
        entry(
          "Phone",
          "+1 303-319-0118",
          none,
        )
        entry(
          "Email",
          link("mailto:hb@harrishbutler.com", "hb@harrishbutler.com"),
          none,
        )
        entry("Website", link("harrishbutler.com", "harrishbutler.com"), none)
      },
    )

    section(
      "Technology Stack",
      {
        entry(
          theme: aside-theme,
          "Languages",
          "JavaScript, TypeScript, Python, Bash",
          []
        )
        entry(
          theme: aside-theme,
          "Web",
          "React, Next.js, Vite, ReactQuery",
          [],
        )
        entry(
          theme: aside-theme,
          "Testing",
          "React Testing Library, Jest, Cypress",
          [],
        )
        entry(
          theme: aside-theme,
          "API",
          "REST",
          [],
        )
        entry(
          theme: aside-theme,
          "DBMS",
          "PostgreSQL",
          [],
        )
        entry(
          theme: aside-theme,
          "Bundling",
          "Rollup, Webpack",
          [],
        )
        entry(
          theme: aside-theme,
          "CI/CD",
          "GitHub Actions",
          [],
        )
        entry(
          theme: aside-theme,
          "Version Control",
          "Git",
          [],
        )
        entry(
          theme: aside-theme,
          "Hosting",
          "Fly.io, AWS",
          [],
        )
         entry(
          theme: aside-theme,
          "AI/ML",
          "Claude Code, AI Augmented Development",
          [],
        )
      },
    )

    section(
      "Education",
      {
        heading(
          level: 2,
          context {
            set text(fill: text.fill.darken(40%))
            "The University of Texas at Tyler"
          }
        )
        
        set block(below: 4pt)
        "BS in Computer Science, Minor in Mathematics"
      }
    )

     section(
      "Awards and Achievements",
      {
        entry(
          "Student Athelete",
          none,
          [
            4 year lettermen on the UT Tyler Men's Golf Team
          ],
        )
      },
    )

  },
  main: {
     section(
      "Professional Experience",
      {
        entry(
          right: [*\@ShipStation* – Austin, TX],
          "Oct 2024 - Present",
          "Software Engineer L3",
          [
            #v(4pt)
            #list(
              [
                Architected and led the 3-month comprehensive rewrite of the Stamps.com flagship web app, modernizing a legacy codebase for over 50,000 monthly active users.
              ],
              [
                Leveraged AI-augmentation to accelerate development velocity, achieving a production-ready state for a decade-old system in 3 months.
              ],
              [
                Drove the technical vision and engineering for large-scale product initiatives, focusing on scalable architecture and enhanced user experience
              ],
              [
                Established a culture of technical excellence through the mentorship of junior and mid-level engineers, providing guidance on modern architectural principles.
              ]
            )
          ],
        )

        entry(
          right: [*\@ShipStation* – Austin, TX],
          "Apr 2022 -  Oct 2024",
          "Software Engineer L2",
          [
            #v(4pt)
            #list(
              [
                Spearheaded the development of a greenfield shipping and logistics React component library fully integrated with our flagship shipping API, reducing our partner's time to market from quarters to weeks. 
              ],
              [
                Acted as the technical liaison between internal sales and partner engineering teams; Led demo meetings to showcase product implementation, which resulted in an 80% conversion rate.
              ],
              [
                Led a team of 2 engineers to develop an internal product demo application using React, TypeScript, and Next.js, improving our sales team's process and boosting conversion rates, resulting in over \u{0024}500,000 in new deal value.
              ]
            )
          ],
        )

        entry(
          right: [*\@ShipStation* -- Austin, TX],
          "June 2021 - Apr 2022",
          "Software Engineer L1",
          [
            #v(4pt)
            #list(
              [
                Developed and maintained core features in our flagship white-labeled shipping solution, using TypeScript, React, and GraphQL. Deployed to over 400,000 users; It became one of the company's most-used products, generating over \u{0024}8 million YoY.
              ],
              [
                Improved CI/CD efficiency by reducing Cypress.js end-to-end test suite run times by 85% through parallelizing test scripts in GitHub Actions.
              ],
              [
                Boosted our backend's test coverage and robustness by mocking the most frequently used REST API endpoints, ensuring higher reliability and performance.
              ]
            )
          ],
        )
     },
   )
  },
)

#section(
  "Projects",
  {
    entry(
      "2025",
      "Badger",
      [
        #list(
          [
            Simplify splitting bills with friends reducing the "settle-up" process from minutes to seconds.
          ], 
          [
            Architected a cross-platform React Native application that leverages Gemini's computer vision to automate receipt parsing and bill splitting.
          ],
          [
            Engineered a scalable backend using Node.js and PostgreSQL, implementing complex logic to handle asynchronous data processing from image uploads.
          ]
        )
      ],
    )
    entry(
      "2023",
      "Shipmunk",
      [
        #list(
          [
             Won the 2023 Auctane Engineering Hackathon by developing a Chrome extension (React/TypeScript) that enables seamless label purchasing from any site.
          ],
          [
            Integrated directly with flagship shipping APIs, demonstrating the ability to rapidly prototype and ship high-value tools that solve real-world logistical friction.
          ]
        )
         
      ],
    )
  }
)