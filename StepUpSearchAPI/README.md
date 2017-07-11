# StepUpSearchAPI

## Description
StepUpSearchAPI is a Ruby on Rails API that holds data regarding mental health professionals. Users are able to query the API to obtain a list of relevant healthcare professionals organized using a ranking algorithm based on user provided parameters. The application was deployed on Heroku and utilized the StepUpScraperAPI to build its database.(http://www.github.com/stepup/steupscraperapi)

## Technologies
* Ruby on Rails
* Heroku

## API End Points

### GET '/search'  

Valid parameters are as follows:
* issue
* ti_value
* client_language
* cl_value
* client_category
* cc_value
* client_ethnicity
* ce_value

Sample Request:

```
GET '/search?issue=Relationship Issues&ti_value=5&client_language=Spanish&cl_value=10&client_category=Bisexual Clients&cc_value=50&client_ethnicity=Hispanic and Latino&ce_value=10'
```

Which would return the following sample response (truncated due to length):

```
{
    "data": [
        {
            "pt_id": "41481",
            "name": "Leanne Carter",
            "title": "Marriage & Family Therapist, MS, MFT",
            "phone": "(415) 843-1936",
            "street_address": "1728 Union Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94123",
            "blurb": "I work collaboratively to help you become aware of your strengths and start finding solutions that will enhance your life and relationships. Being mindful of how societal attitudes about success, gender, age, class, religion, ethnicity, sexuality, body image and relationships impact our experience of life helps guide the work. In a supportive environment I work with individuals as they explore and learn to live their life, in their own context, in their own way. My approach to therapy is to integrate specific techniques from different modalities, based on the needs and desires of the individual. Some of the therapeutic modalities in which I am trained include Solution Focused Therapy, Person Centered Counseling, Cognitive Therapy, Narrative Therapy, Behavioral Therapy and Family Therapy. I am originally from Australia, and have lived in the Bay Area for the past 20 years. Over the past twenty years I have worked with individuals, couples, families and adolescents. These clients were often struggling with a range of concerns including relationship concerns, life transitions, anxiety, depression and drug/substance abuse.",
            "yrs_practice": 10,
            "school": "Dominican University",
            "yr_graduated": 2000,
            "license_no": "MFC",
            "license_state": "42144",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Humanistic\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T08:01:53.380Z",
                    "updated_at": "2017-07-09T08:01:53.380Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T08:01:53.427Z",
                    "updated_at": "2017-07-09T08:01:53.427Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T08:01:53.446Z",
                    "updated_at": "2017-07-09T08:01:53.446Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T08:01:53.488Z",
                    "updated_at": "2017-07-09T08:01:53.488Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T08:01:53.562Z",
                    "updated_at": "2017-07-09T08:01:53.562Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T08:01:53.594Z",
                    "updated_at": "2017-07-09T08:01:53.594Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T08:01:53.665Z",
                    "updated_at": "2017-07-09T08:01:53.665Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T08:01:53.707Z",
                    "updated_at": "2017-07-09T08:01:53.707Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T08:01:53.724Z",
                    "updated_at": "2017-07-09T08:01:53.724Z"
                },
                {
                    "id": 7,
                    "name": "Domestic Violence",
                    "created_at": "2017-07-09T08:01:53.743Z",
                    "updated_at": "2017-07-09T08:01:53.743Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T08:01:53.764Z",
                    "updated_at": "2017-07-09T08:01:53.764Z"
                },
                {
                    "id": 9,
                    "name": "Intellectual Disability",
                    "created_at": "2017-07-09T08:01:53.796Z",
                    "updated_at": "2017-07-09T08:01:53.796Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T08:01:53.823Z",
                    "updated_at": "2017-07-09T08:01:53.823Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T08:01:53.841Z",
                    "updated_at": "2017-07-09T08:01:53.841Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T08:01:53.857Z",
                    "updated_at": "2017-07-09T08:01:53.857Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T08:01:53.874Z",
                    "updated_at": "2017-07-09T08:01:53.874Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T08:01:53.892Z",
                    "updated_at": "2017-07-09T08:01:53.892Z"
                }
            ],
            "avg_cost": "$110 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
      ...
    ]
}
```
