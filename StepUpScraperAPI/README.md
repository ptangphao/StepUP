# StepUpScraperAPI

## Description
StepUpScraperAPI is a Sinatra API built for gathering information regarding healthcare professionals from PsychologyToday. This API was built using Sinatra for simplicity and scrapes the web using Nokogiri. Since the default server for a Sinatra application is Webrick which does not support multi-threading, a Puma server was specifically used instead. The application was deployed on Heroku and utilized by the StepUpSearchAPI (http://www.github.com/stepup/steupsearchapi)

## Technologies
* Sinatra (Ruby)
* Puma
* Heroku

## API End Points


### GET '/'  

The only parameter required is the 'url' parameter. A sample request might be as follows:

```
GET '/?url=https://therapists.psychologytoday.com/rms/prof_detail.php?profid=216110'
```

Which would return the following sample response:

```
{
    "data": {
        "pt_id": "216110",
        "name": "Adam Blum",
        "title": "Psychologist, PsyD",
        "phone": "(415) 275-6972",
        "street_address": "55 New Montgomery",
        "locality": "San Francisco",
        "state": "California",
        "zipcode": "94105",
        "blurb": "Being able to feel and think in a free and full way often requires the participation of another person. This dynamic may sound familiar, or it may sound quite strange. Psychotherapy is a unique opportunity to create this essential form of collaboration that elaborates and enriches one's experience of oneself and other people, which tends to reduce the overwhelming frustration and isolation that generate hopelessness and dread. In working together, my interest in what you tell me becomes the ground from which a fundamental and enlivening process can develop in the context of a professional relationship. I am committed to developing meaningful psychotherapy relationships, which often takes some time. It can be difficult to know whether we would be comfortable working together without having met in person. I encourage you to contact me to set up an initial consultation in order for us to meet. This meeting would also be an opportunity to discuss my fee. I have found that it is often possible to work out a fee structure that is feasible for both parties (sometimes involving insurance). I am also more than happy to make appropriate referrals if necessary.",
        "yrs_practice": 5,
        "school": "Wright Institute",
        "yr_graduated": 2013,
        "license_no": "PSY26395",
        "license_state": "California",
        "client_ethnicities": "none provided",
        "client_languages": [
            "Spanish"
        ],
        "client_ages": [
            "Adolescents / Teenagers (14 to 19)",
            "Adults"
        ],
        "client_categories": [
            "Gay Clients",
            "Heterosexual Clients"
        ],
        "treatment_modalities": [
            "Individuals",
            "Couples"
        ],
        "treatment_orientation": [
            "Psychoanalytic",
            "Psychodynamic"
        ],
        "target_issues": [
            "Anxiety",
            "Men's Issues",
            "Relationship Issues"
        ],
        "issues": [
            "Anxiety",
            "Men's Issues",
            "Relationship Issues",
            "Anger Management",
            "Autism",
            "Bipolar Disorder",
            "Borderline Personality",
            "Codependency",
            "Depression",
            "Divorce",
            "Drug Abuse",
            "Emotional Disturbance",
            "Family Conflict",
            "Grief",
            "Peer Relationships",
            "Self Esteem",
            "Suicidal Ideation",
            "Mood Disorders",
            "Personality Disorders",
            "Thinking Disorders"
        ],
        "avg_cost": "no info provided",
        "sliding_scale": "Yes",
        "takes_insurance": "no info provided",
        "accepted_insurance": [
            "Out of Network"
        ],
        "accepted_payments": [
            "Cash",
            "Check"
        ]
    }
}
```
