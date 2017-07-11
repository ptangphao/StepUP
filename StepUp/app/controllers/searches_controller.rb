class SearchesController < ApplicationController
    include SearchHelper

    def show        
# THIS IS THE REAL SOLUTION
    begin
        request = Request.find(session[:request_id])
        i_key = request.issue_param 
        i_value = request.ti_value
        cl_key = request.client_language_param
        cl_value = request.cl_value
        cc_key = request.client_category_param
        cc_value = request.cc_value
        ce_key = request.client_ethnicity_param
        ce_value = request.ce_value

        base_url = "https://stepfat.herokuapp.com/search"

        base_url += (i_key + i_value.to_s) if i_key.length > 0
        base_url += (cl_key + cl_value.to_s) if cl_key.length > 0
        base_url += (cc_key + cc_value.to_s) if cc_key.length > 0
        base_url += (ce_key + ce_value.to_s) if ce_key.length > 0
        @response = HTTParty.get(base_url)
    rescue
# JUST USE THE HACK SOLUTION BY UNCOMMENTING LINES 23 ON IF necessary
# ===================================================================

        @response = {
    "data": [
        {
            "pt_id": "139958",
            "name": "Sampson Goff",
            "title": "Marriage & Family Therapist, LMFT, CHT",
            "phone": "(628) 333-2286",
            "street_address": "315 Sanchez St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "As a therapist I help individuals and couples discover their own unique path towards health and happiness and I support them as they move through life's challenges and grow as people. My therapeutic approach is caring, interactive and direct, and draws on my experience with both psychological, practical, and spiritual approaches to growth and development. Depending on a person's individual needs I use a combination of talk therapy, skills practice, awareness exercises, visualization, and honest reflection to help them achieve their personal goals. I work with people on a variety of topics and my areas of particular specialty include: couples counseling, helping men show up more fully in life, work, and relationships, and helping both men and women better identify, value, and communicate their needs & boundaries. Along with my expertise, I bring my heart, my humor, and my own life experiences as a man, husband, and father to my practice. I enjoy working with people from all kinds of backgrounds and lifestyles.",
            "yrs_practice": 7,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2005,
            "license_no": "49147",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "none provided",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Coaching\", \"Cognitive Behavioral (CBT)\", \"Eclectic\", \"Family / Marital\", \"Gestalt\", \"Humanistic\", \"Hypnotherapy\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Narrative\", \"Relational\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 25,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:32:38.930Z",
                    "updated_at": "2017-07-09T06:32:38.930Z"
                },
                {
                    "id": 26,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:32:38.937Z",
                    "updated_at": "2017-07-09T06:32:38.937Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                }
            ],
            "issues": [
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$130 - $160",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "201850",
            "name": "Knute Johnson",
            "title": "Psychologist, PhD",
            "phone": "(510) 400-6663",
            "street_address": "1730 Divisidero Suite 1",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94115",
            "blurb": "I work with adolescents, families, and adults; especially boys not feeling good and unable to express, adults struggling with relationship conflict, and anger within families. I approach difficult relational problems with gentle irreverence, and sometimes playfulness. You never know what will happen in therapy, but looking at it together with courage we make space to grow. I consider uncovering emotions and meaning important for change. I can help with destructive patterns and nagging trauma. I like working flexibly with families, for example with a child, the whole family, and the parents in different sessions. I offer treatment in Spanish and enjoy working with bilingual families.",
            "yrs_practice": 1,
            "school": "Palo Alto University",
            "yr_graduated": 2012,
            "license_no": "26111",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 1,
                    "name": "Spanish",
                    "created_at": "2017-07-09T06:30:57.130Z",
                    "updated_at": "2017-07-09T06:30:57.130Z"
                }
            ],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Eclectic\", \"Emotionally Focused\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [],
            "issues": [
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 24,
                    "name": "Self-Harming",
                    "created_at": "2017-07-09T06:30:57.243Z",
                    "updated_at": "2017-07-09T06:30:57.243Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 26,
                    "name": "Video Game Addiction",
                    "created_at": "2017-07-09T06:30:57.255Z",
                    "updated_at": "2017-07-09T06:30:57.255Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                }
            ],
            "avg_cost": "$90 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "174583",
            "name": "Jenya Kaufman",
            "title": "Psychiatrist, MD",
            "phone": "(415) 233-9412",
            "street_address": "4111 18th St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "I offer a collaborative approach to helping clients achieve their goals. I believe in treating each person as a unique individual and together finding the best way toward wellbeing. This begins with a comprehensive evaluation which can last from one to four sessions where we will attempt to understand the current difficulties and discuss treatment options. I have experience treating a wide variety of psychological and emotional difficulties with psychotherapy and medication when appropriate. In my practice I offer psychotherapy and medication evaluation/management to patients who are already in therapy. I have training in several modalities of psychotherapy including Psychodynamic, Interpersonal, and Emotionally Focused Couples/Family Therapy. I aim to help clients be present to their emotional experiences and develop insight into their psychological functioning. I have a special interest in women's mental health, particularly issues around pregnancy and motherhood. I have experience and training working with women who have mental illness and are or are considering becoming pregnant.",
            "yrs_practice": 5,
            "school": "Stanford University Medical School",
            "yr_graduated": 2008,
            "license_no": "A109755",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Emotionally Focused\", \"Family Systems\", \"Interpersonal\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 4,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:59.314Z",
                    "updated_at": "2017-07-09T06:30:59.314Z"
                }
            ],
            "issues": [
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 36,
                    "name": "Obesity",
                    "created_at": "2017-07-09T06:30:59.348Z",
                    "updated_at": "2017-07-09T06:30:59.348Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                }
            ],
            "avg_cost": "$180 - $300",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "340591",
            "name": "Jessica Elizabeth Craig",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 569-2663",
            "street_address": "26 7th Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94103",
            "blurb": "I am here to provide a safe space and engage us both in the creative and intentional exploration of your world. My personal style is the integration of problem-solving techniques with empathetic psychotherapy and a touch of humor. We also have the option of using art as a tool to further your search for meaning and resolution. I have always been a passionate advocate for the alternative sexualities, and enjoy helping you explore your relationships. I welcome clients of all backgrounds, sexual orientations, and gender identities/fluctuations. I believe that through the power of human connection we can heal wounds, forge new paths, and examine ourselves fearlessly. I graduated from Notre Dame de Namur University in 2012 with M.A. in Marriage and Family Therapy (MFT) and Art Therapy. I've since worked with a huge range of clients and am deeply humbled by the vulnerability and courage that people bring to therapy and share with me.",
            "yrs_practice": 0,
            "school": "none provided",
            "yr_graduated": 0,
            "license_no": "99734",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Children (6 to 10)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                },
                {
                    "id": 7,
                    "name": "Veterans",
                    "created_at": "2017-07-09T06:31:00.383Z",
                    "updated_at": "2017-07-09T06:31:00.383Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Adlerian\", \"Art Therapy\", \"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Culturally Sensitive\", \"Eclectic\", \"Existential\", \"Family / Marital\", \"Feminist\", \"Integrative\", \"Narrative\", \"Person-Centered\", \"Positive Psychology\", \"Psychodynamic\", \"Reality Therapy\", \"Solution Focused Brief (SFBT)\", \"Strength Based\", \"Trauma Focused\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 6,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.399Z",
                    "updated_at": "2017-07-09T06:31:00.399Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 37,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.413Z",
                    "updated_at": "2017-07-09T06:31:00.413Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 39,
                    "name": "Alzheimer's",
                    "created_at": "2017-07-09T06:31:00.434Z",
                    "updated_at": "2017-07-09T06:31:00.434Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 40,
                    "name": "Borderline Personality",
                    "created_at": "2017-07-09T06:31:00.453Z",
                    "updated_at": "2017-07-09T06:31:00.453Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 46,
                    "name": "Medication Management",
                    "created_at": "2017-07-09T06:31:00.520Z",
                    "updated_at": "2017-07-09T06:31:00.520Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 48,
                    "name": "Narcissistic Personality",
                    "created_at": "2017-07-09T06:31:00.535Z",
                    "updated_at": "2017-07-09T06:31:00.535Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 24,
                    "name": "Self-Harming",
                    "created_at": "2017-07-09T06:30:57.243Z",
                    "updated_at": "2017-07-09T06:30:57.243Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 51,
                    "name": "Sexual Addiction",
                    "created_at": "2017-07-09T06:31:00.572Z",
                    "updated_at": "2017-07-09T06:31:00.572Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 54,
                    "name": "Suicidal Ideation",
                    "created_at": "2017-07-09T06:31:00.596Z",
                    "updated_at": "2017-07-09T06:31:00.596Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 57,
                    "name": "non-monogamy, bdsm",
                    "created_at": "2017-07-09T06:31:00.619Z",
                    "updated_at": "2017-07-09T06:31:00.619Z"
                },
                {
                    "id": 58,
                    "name": "Dissociative Disorders",
                    "created_at": "2017-07-09T06:31:00.625Z",
                    "updated_at": "2017-07-09T06:31:00.625Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$70 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "207977",
            "name": "Michael J Milazzo",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 969-2633",
            "street_address": "533A Castro St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "THERAPY IS ABOUT SOLUTIONS, skills and defining how you want to fit into the world. I assist my clients in finding and defining the best version of themselves while addressing stress, anxiety, depression, fear, creative and professional blocks. Therapy may help you uncover those hidden skills, teach new skills, adjust your relationships, ease anxieties and tap into a more effective you. ONLINE DATING: You had five dates last week, but you're losing hope - glued to your apps, constantly searching. Technology doesn't help human connection, & apps may interfere with your search for love. Learn about dating in the age of the app. Stop searching & find what you are looking for. CAREGIVER BURNOUT: More than 65,000,000 family caregivers are providing care to an ill, aged, or disabled spouse, child or friend. A big mistake caregivers make is to neglect their own physical and emotional needs. Don't forget to care for yourself when you are caring for someone else.",
            "yrs_practice": 8,
            "school": "University of San Francisco",
            "yr_graduated": 2006,
            "license_no": "MFC80088",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Coaching\", \"Cognitive Behavioral (CBT)\", \"Existential\", \"Humanistic\", \"Hypnotherapy\", \"Integrative\", \"Mindfulness-based (MBCT)\", \"Psychodynamic\", \"Solution Focused Brief (SFBT)\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:55.983Z",
                    "updated_at": "2017-07-09T06:30:55.983Z"
                },
                {
                    "id": 7,
                    "name": "Alzheimer's",
                    "created_at": "2017-07-09T06:31:01.838Z",
                    "updated_at": "2017-07-09T06:31:01.838Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 39,
                    "name": "Alzheimer's",
                    "created_at": "2017-07-09T06:31:00.434Z",
                    "updated_at": "2017-07-09T06:31:00.434Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 59,
                    "name": "Internet Addiction",
                    "created_at": "2017-07-09T06:31:01.877Z",
                    "updated_at": "2017-07-09T06:31:01.877Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 61,
                    "name": "Online Dating, Family Caregiver Stress",
                    "created_at": "2017-07-09T06:31:01.893Z",
                    "updated_at": "2017-07-09T06:31:01.893Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 51,
                    "name": "Sexual Addiction",
                    "created_at": "2017-07-09T06:31:00.572Z",
                    "updated_at": "2017-07-09T06:31:00.572Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 62,
                    "name": "Weight Loss",
                    "created_at": "2017-07-09T06:31:01.939Z",
                    "updated_at": "2017-07-09T06:31:01.939Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$60 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Superbills Provided\", \"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "84648",
            "name": "Melodie Del Rio",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(415) 390-5620",
            "street_address": "946 Irving Street, Suite E",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94122",
            "blurb": "I work with adults (individual and couple's therapy), children, and adolescents. Special interests include: life transitions, relationship problems, loss and grief (including pregnancy loss), stress and anxiety, depression, parenting concerns, children/ adolescents and identity. I am warm, accepting, and make people feel at ease. I am committed to learning about who you truly are and working with you to help you make long lasting change. I take an active role in the therapy process by helping you gain insight into patterns in your life. My goal as a therapist is to help you reach a greater understanding and compassion for yourself, to heal from painful experiences, and to find new ways of coping with stress and interacting with others.",
            "yrs_practice": 10,
            "school": "San Francisco State University",
            "yr_graduated": 2003,
            "license_no": "MFC",
            "license_state": "43564",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Toddlers / Preschoolers (0 to 6)\", \"Children (6 to 10)\", \"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Family Systems\", \"Play Therapy\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 8,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:31:02.778Z",
                    "updated_at": "2017-07-09T06:31:02.778Z"
                },
                {
                    "id": 9,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:31:02.784Z",
                    "updated_at": "2017-07-09T06:31:02.784Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                }
            ],
            "issues": [
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 64,
                    "name": "Oppositional Defiance",
                    "created_at": "2017-07-09T06:31:02.847Z",
                    "updated_at": "2017-07-09T06:31:02.847Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 65,
                    "name": "Pre/Postnatal concerns, Pregnancy Loss",
                    "created_at": "2017-07-09T06:31:02.858Z",
                    "updated_at": "2017-07-09T06:31:02.858Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$100 - $140",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"BlueCross and BlueShield\", \"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "60631",
            "name": "Isela Cueva Rizzi",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(415) 799-8343",
            "street_address": "3974 24th Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "Seeking therapy can be complex and multi-layered, so finding a therapist you connect with is essential. I work interactively and collaboratively to support you at your pace while helping you move toward the fullest expression of the life you wish to lead. I provide a safe holding environment where the changes you hope for can occur. The therapeutic relationship is the backdrop for investigation and integration, with openness, curiosity, and tenderness. With greater awareness and non-judgement, your capacity for self-acceptance expands. Ultimately this extends out to others in your life and propels you into a more satisfying and harmonious existence. In my work with families, I focus on strengthening the parent-child relationship. I provide developmental guidance and help attach new meanings to behavior, helping parents find new ways of responding and relating to their children. In my work with adults, I help individuals participate more fully in their life's unfolding by making more conscious choices to embody the life they wish to lead.",
            "yrs_practice": 10,
            "school": "University of San Francisco",
            "yr_graduated": 2002,
            "license_no": "MFC",
            "license_state": "45181",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 1,
                    "name": "Spanish",
                    "created_at": "2017-07-09T06:30:57.130Z",
                    "updated_at": "2017-07-09T06:30:57.130Z"
                }
            ],
            "client_ages": "[\"Toddlers / Preschoolers (0 to 6)\", \"Children (6 to 10)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Family\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Family Systems\", \"Play Therapy\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 10,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:31:03.592Z",
                    "updated_at": "2017-07-09T06:31:03.592Z"
                },
                {
                    "id": 9,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:31:02.784Z",
                    "updated_at": "2017-07-09T06:31:02.784Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$120 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "99147",
            "name": "Sharon Gardner",
            "title": "Marriage & Family Therapist, MA, MFT",
            "phone": "(415) 800-4839",
            "street_address": "3516 Geary Blvd #102",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94118",
            "blurb": "I believe change can happen when there is hope and direction, and I trust healing takes place within safety, connection and support. I am a calm and grounded person, and this makes my clients feel supported and safe. My work as a therapist is supported by training in the Hakomi method, as well as my life experience and 40 years of Buddhist practice. I will support you in developing greater self-awareness as well as balance of body-mind-spirit. You may find yourself stuck in old patterns, following familiar paths that no longer lead where you want to go. New paths may be less familiar and more work, requiring you to clear away rocks and branches. It can be helpful to have a guide - someone who is holding the map, the flashlight, and who has your back. I can be that guide, supporting you in moving along new paths. New paths can lead to improved relationships, greater self esteem, reduced anxiety, and healing from trauma. Our work can bring more satisfaction and enjoyment into your life. Feel free to contact me for a brief initial phone consultation. I see clients during the week and on Saturdays.",
            "yrs_practice": 8,
            "school": "Institute of Transpersonal Psychology",
            "yr_graduated": 2008,
            "license_no": "LMFT84533",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Children (6 to 10)\", \"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Humanistic\", \"Psychodynamic\", \"Somatic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 12,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:04.517Z",
                    "updated_at": "2017-07-09T06:31:04.517Z"
                }
            ],
            "issues": [
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$80 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "247500",
            "name": "Randi Myrseth",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 871-0053",
            "street_address": "3890 24th St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "In the spirit of kindness and compassion we will sit together and explore the changes you are seeking and the habitual patterns and behaviors that may no longer serve you. I might help you to: Discover and release emotional and relational wounds; Alleviate depression, hopelessness, anxiety or mood instability; Face life transitions in employment, relationships, health or aging; Deal with loss and grief; Resolve issues with drug and alcohol dependence; Navigate parenting issues from infancy through young adulthood; Develop more satisfying communication and intimacy in relationships and deepen your relationship with yourself, emerging from dissatisfaction to find fulfillment. I can help you heal the tendency toward self-criticism and blame that is an obstacle to your growth. Your innate capacities for love, joy, intimacy, courage and strength can emerge once emotional injuries are given kind attention and room for change in the therapeutic relationship. I love seeing both individuals and couples. I am trained in depth and relational psychology, and have practiced psychotherapy in San Francisco for 25 years. My work is also informed by meditation; as a student of the Diamond Approach; and a parent for 28 years. I welcome people of any gender and sexual orientation.",
            "yrs_practice": 20,
            "school": "New College of California",
            "yr_graduated": 1995,
            "license_no": "LMFT35726",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 2,
                    "name": "Norwegian",
                    "created_at": "2017-07-09T06:31:05.292Z",
                    "updated_at": "2017-07-09T06:31:05.292Z"
                },
                {
                    "id": 3,
                    "name": "Swedish",
                    "created_at": "2017-07-09T06:31:05.298Z",
                    "updated_at": "2017-07-09T06:31:05.298Z"
                }
            ],
            "client_ages": "[\"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Eclectic\", \"Emotionally Focused\", \"Existential\", \"Family / Marital\", \"Gestalt\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Psychodynamic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 68,
                    "name": "Pregnancy, Prenatal, Postpartum",
                    "created_at": "2017-07-09T06:31:05.465Z",
                    "updated_at": "2017-07-09T06:31:05.465Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$100 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "104729",
            "name": "Kirsten Harnett",
            "title": "Marriage & Family Therapist, MS, LMFT",
            "phone": "(415) 723-4131",
            "street_address": "1100 Sanchez St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "As a therapist I believe each person has the capability and potential of living outside the bounds of fear, anxiety, apathy, and/or depression if they so desire. I see my role as both collaborator and guide, bearing witness to my client's stories and helping grow insight so new, more empowering stories might be written. I do this using several techniques including changing maladaptive, deeply ingrained thinking/feeling/behavior patterns, and exploring challenging childhood, family, and relationship history. I have experience treating issues of anxiety, depression, destructive relationship patterns, and clients with painful spiritual experiences they want assistance healing. While I have a range of experience, my specialty involves work with individual, single adults who have experienced trauma or challenge in their dating lives and/or carry pain associated with the unmet desire to be married. This starting point often leads to deep exploration of family and childhood history.",
            "yrs_practice": 1,
            "school": "Fuller Theological Seminary",
            "yr_graduated": 2004,
            "license_no": "48822",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Family Systems\", \"Narrative\", \"Narrative\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 14,
                    "name": "Singleness, Issues in dating",
                    "created_at": "2017-07-09T06:31:06.265Z",
                    "updated_at": "2017-07-09T06:31:06.265Z"
                },
                {
                    "id": 12,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:04.517Z",
                    "updated_at": "2017-07-09T06:31:04.517Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                }
            ],
            "issues": [
                {
                    "id": 69,
                    "name": "Singleness, Issues in dating",
                    "created_at": "2017-07-09T06:31:06.281Z",
                    "updated_at": "2017-07-09T06:31:06.281Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                }
            ],
            "avg_cost": "$100 - $130",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "297918",
            "name": "Julia Lehrman",
            "title": "Clinical Social Work/Therapist, LCSW, RYT",
            "phone": "(415) 650-4509",
            "street_address": "582 Market St, Suite 1401",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94104",
            "blurb": "You can't sleep. Your thoughts are racing. You replay things in your mind. Your inner critic is winning. You're stressed out. You're on the verge of a meltdown. You feel confused, lost, and stuck. Your life feels void of meaning. You dread waking up. You're surrounded by people, but still feel alone. You have a secret you've been holding in. You're afraid of being judged. Fortunately, you've come to the right place. Therapy can help. I can help you. Life can be hard and feel overwhelming at times, but you don't have to live in constant pain. There is hope. Imagine going to sleep relaxed and waking up excited. Picture yourself happy and confident. What if there was a way to feel better? You no longer have to suffer. Let me help you discover how to connect to your true self, find purpose and direction, and experience life to the fullest. Gain skills to implement immediately. Actualize your potential and transform into the best version of yourself. Quiet that inner critic and embrace your true worth. You have the power to take control of your life. I'm here to support you. The wait is over. Contact me for a free 20 minute consultation!",
            "yrs_practice": 8,
            "school": "NYU",
            "yr_graduated": 0,
            "license_no": "72238",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Acceptance and Commitment Therapy (ACT)\", \"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"Emotionally Focused\", \"Existential\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Motivational Interviewing\", \"Positive Psychology\", \"Psychodynamic\", \"Relational\", \"Solution Focused Brief (SFBT)\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 74,
                    "name": "Chronic Impulsivity",
                    "created_at": "2017-07-09T06:31:09.946Z",
                    "updated_at": "2017-07-09T06:31:09.946Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 76,
                    "name": "Sports Performance",
                    "created_at": "2017-07-09T06:31:09.986Z",
                    "updated_at": "2017-07-09T06:31:09.986Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                }
            ],
            "avg_cost": "$150 - $200",
            "sliding_scale": "no info provided",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Lyra\", \"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "331911",
            "name": "Taylor Rechtschaffen",
            "title": "Marriage & Family Therapist Intern, MA, MFTi",
            "phone": "(415) 767-1682",
            "street_address": "2120 Market Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "Experiencing anxiety, fear, anger, and sadness is a natural part of being human. How you respond to these emotions is what makes all the difference and can dictate whether you sink and struggle or thrive and grow. Amazingly, it is by facing and bringing love to what you wish you could 'get rid of' that allows parts of you to transform and metabolize into the power and grace you long to feel. My job is to help you navigate this journey and learn the skills to be your own captain; to help you see how much choice you actually have. I help clients to heal, deepen, and improve their most important relationship: the relationship with yourself. When all parts of you are welcomed and engaged with, a wholeness can emerge in which you more regularly experience compassion, calmness, courage, and clarity towards yourself and others. I am a long time meditator and student of yoga and Buddhism. With clients, I utilize practices from Tibetan Buddhism as well as Internal Family Systems and Gestalt therapy. My approach is also informed by earth and indigenous based wisdoms. These are the foundations of my embodied, experiential psychotherapy approach.",
            "yrs_practice": 2,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2016,
            "license_no": "99075",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 1,
                    "name": "Hispanic and Latino",
                    "created_at": "2017-07-09T06:31:11.292Z",
                    "updated_at": "2017-07-09T06:31:11.292Z"
                },
                {
                    "id": 2,
                    "name": "Native American",
                    "created_at": "2017-07-09T06:31:11.321Z",
                    "updated_at": "2017-07-09T06:31:11.321Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Culturally Sensitive\", \"Eclectic\", \"Emotionally Focused\", \"Existential\", \"Experiential Therapy\", \"Gestalt\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Multicultural\", \"Person-Centered\", \"Positive Psychology\", \"Psychodynamic\", \"Relational\", \"Strength Based\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 16,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:11.342Z",
                    "updated_at": "2017-07-09T06:31:11.342Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$60 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "136580",
            "name": "Christopher Corey",
            "title": "Marriage & Family Therapist Intern, MFTI",
            "phone": "(415) 697-3313",
            "street_address": "425 Gough Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94102",
            "blurb": "My approach is a flexible, organic experience of healing for many emotional concerns, particularly anxiety, sadness, grief, fear, shame, anger, loneliness, guilt, sexual and creative blockages. We work to bring the hidden into light. That which has caused you to distort your inner strength can be brought to the foreground and choices can be made. I embrace all gender expressions and sexual orientations. I have experience supporting a variety of relationship configurations and lifestyles, and can assist in navigating issues that can surface in these choices, such as boredom, jealousy, intimacy blockages, differing needs and desires, sexual and emotional satisfaction. Influenced by the works of Fritz Perls, Wilhelm Reich and Rollo May, I will help you explore what has been fed to you and become indigestible. We will work to move through the layers of pain towards a new, authentic expression of Self. I believe that we are continually remaking and creating ourselves and our experiences. Sometimes we do this without awareness, and suffer from self-deception and distortion.The goal is for you to become aware of what you are doing, how you are doing it, and how you can change.",
            "yrs_practice": 5,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2012,
            "license_no": "none provided",
            "license_state": "none provided",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Existential\", \"Gestalt\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Relational\", \"Somatic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 74,
                    "name": "Chronic Impulsivity",
                    "created_at": "2017-07-09T06:31:09.946Z",
                    "updated_at": "2017-07-09T06:31:09.946Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 51,
                    "name": "Sexual Addiction",
                    "created_at": "2017-07-09T06:31:00.572Z",
                    "updated_at": "2017-07-09T06:31:00.572Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 58,
                    "name": "Dissociative Disorders",
                    "created_at": "2017-07-09T06:31:00.625Z",
                    "updated_at": "2017-07-09T06:31:00.625Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$80 - $130",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "235960",
            "name": "Bay Area Center for Mood Disorders",
            "title": "Psychologist, PhD",
            "phone": "(415) 697-3964",
            "street_address": "870 Market Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94102",
            "blurb": "Therapy helps to improve lives in a meaningful way (have better relationships with friends, family members and partners, improve our self-esteem), it's not just about managing your symptoms. We offer a warm, compassionate, and collaborative environment, and will work with you to tailor clinical interventions to fit your needs and goals. Our philosophy is of utilizing evidence-based interventions for mood disorders in working with you. By doing so, our work is based upon providing skills and tools that have been proven to be effective. We will collaboratively set measurable treatment goals with you. Our approach integrates different evidence-based therapeutic approaches, such as Cognitive Behavior Therapy, Dialectical Behavior Therapy, Mindfulness, and Acceptance and Commitment Therapy. These are active, practical, skills-based and engaged forms of therapy--which focus on making positive changes in one's current life.",
            "yrs_practice": 0,
            "school": "Stanford University",
            "yr_graduated": 0,
            "license_no": "26024",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 3,
                    "name": "Asian",
                    "created_at": "2017-07-09T06:31:15.731Z",
                    "updated_at": "2017-07-09T06:31:15.731Z"
                }
            ],
            "client_languages": [
                {
                    "id": 4,
                    "name": "Korean",
                    "created_at": "2017-07-09T06:31:15.737Z",
                    "updated_at": "2017-07-09T06:31:15.737Z"
                }
            ],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"Emotionally Focused\", \"Mindfulness-based (MBCT)\", \"Motivational Interviewing\", \"Solution Focused Brief (SFBT)\", \"Trauma Focused\"]",
            "target_issues": [
                {
                    "id": 4,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:59.314Z",
                    "updated_at": "2017-07-09T06:30:59.314Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                }
            ],
            "issues": [
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 40,
                    "name": "Borderline Personality",
                    "created_at": "2017-07-09T06:31:00.453Z",
                    "updated_at": "2017-07-09T06:31:00.453Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T06:30:56.088Z",
                    "updated_at": "2017-07-09T06:30:56.088Z"
                },
                {
                    "id": 7,
                    "name": "Domestic Violence",
                    "created_at": "2017-07-09T06:30:56.094Z",
                    "updated_at": "2017-07-09T06:30:56.094Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 37,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.413Z",
                    "updated_at": "2017-07-09T06:31:00.413Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 24,
                    "name": "Self-Harming",
                    "created_at": "2017-07-09T06:30:57.243Z",
                    "updated_at": "2017-07-09T06:30:57.243Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 54,
                    "name": "Suicidal Ideation",
                    "created_at": "2017-07-09T06:31:00.596Z",
                    "updated_at": "2017-07-09T06:31:00.596Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 77,
                    "name": "Psychosis",
                    "created_at": "2017-07-09T06:31:15.932Z",
                    "updated_at": "2017-07-09T06:31:15.932Z"
                },
                {
                    "id": 33,
                    "name": "Thinking Disorders",
                    "created_at": "2017-07-09T06:30:58.450Z",
                    "updated_at": "2017-07-09T06:30:58.450Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "no info provided",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "178174",
            "name": "Sarah Mclaughlin",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 651-4070",
            "street_address": "1730 Divisadero Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94115",
            "blurb": "I am well aware of how uneasy it can feel to search for a therapist for the first time. I am a therapist, yes, but I pride myself on being a real person. My approach is down to earth, compassionate and non-judgmental. I specialize in Women's Mental Health, and see many clients struggling with anxiety and difficult life phase changes. Every woman deserves a space where she is enough, a space where she can simply be. My goal is to help you create and maintain a loving, accepting relationship with yourself. Additionally, I enjoy working with those in the helping professions (teacher, social worker, nurse etc.) who may be experiencing compassion fatigue or secondary trauma. Visit my blog to get to know me: http://mclaughlintherapy.com/blog.html Are you ready to start the journey toward lasting change and wellness? Contact me to schedule an initial session to see if we're a good fit!",
            "yrs_practice": 4,
            "school": "San Francisco State University",
            "yr_graduated": 2011,
            "license_no": "LMFT",
            "license_state": "85027",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Humanistic\", \"Relational\", \"Somatic\", \"Trauma Focused\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 78,
                    "name": "secondary trauma, compassion fatigue",
                    "created_at": "2017-07-09T06:31:16.996Z",
                    "updated_at": "2017-07-09T06:31:16.996Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$180",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Health Savings Account\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "216590",
            "name": "The Full Story Therapy",
            "title": "Clinical Social Work/Therapist, LCSW",
            "phone": "(415) 649-6552",
            "street_address": "582 Market Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94104",
            "blurb": "Anxiety does not have to overshadow your life. If you are struggling with constant fears and worries that impact your vitality and relationships, it can be hard to feel joy and fulfillment. Anxiety is an energy that can be overwhelming, but when we work together in therapy you can learn to balance it and move toward your preferred life. I offer strength focused counseling and therapy and will love to support you on your path. Let's talk and plan how life can get much better for you! I specialize in treating OCD, panic disorder, phobias, procrastination, avoidant/selective eating problems, and other anxiety related issues, I also work at UCSF, LPPI with children and youth struggling with OCD and use Cognitive Behavioral Therapy (CBT/ERP), mindfulness based therapy (ACT), as well as Narrative Therapy and Positive Psychology. My office hours include Saturdays and Sundays.",
            "yrs_practice": 6,
            "school": "SFSU",
            "yr_graduated": 2010,
            "license_no": "LCSW61849",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 5,
                    "name": "German",
                    "created_at": "2017-07-09T06:31:18.218Z",
                    "updated_at": "2017-07-09T06:31:18.218Z"
                }
            ],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Acceptance and Commitment Therapy (ACT)\", \"Cognitive Behavioral (CBT)\", \"Mindfulness-based (MBCT)\", \"Narrative\", \"Positive Psychology\"]",
            "target_issues": [
                {
                    "id": 17,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:18.251Z",
                    "updated_at": "2017-07-09T06:31:18.251Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 18,
                    "name": "Phobias",
                    "created_at": "2017-07-09T06:31:18.263Z",
                    "updated_at": "2017-07-09T06:31:18.263Z"
                }
            ],
            "issues": [
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 79,
                    "name": "Phobias",
                    "created_at": "2017-07-09T06:31:18.279Z",
                    "updated_at": "2017-07-09T06:31:18.279Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 33,
                    "name": "Thinking Disorders",
                    "created_at": "2017-07-09T06:30:58.450Z",
                    "updated_at": "2017-07-09T06:30:58.450Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$80 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Beacon\\n                    \\n                                                                            \\n                    Blue Shield\\n                    \\n                                                                            \\n                    BlueCross and BlueShield\\n                    \\n                                                                            \\n                    Cigna\\n                    \\n                                                                            \\n                    Health Net\", \"Lyra Health\\n                    \\n                                                                            \\n                    MHN\\n                    \\n                                                                            \\n                    Magellan Behavioral Health\\n                    \\n                                                                            \\n                    Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Mastercard\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "242171",
            "name": "Bay Area CBT Center",
            "title": "Psychologist, PsyD",
            "phone": "(415) 991-6818",
            "street_address": "45 Franklin Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94102",
            "blurb": "Do you feel overwhelmed by challenging relationships with loved ones, friends, or coworkers? Do you feel anxious or depressed, or struggle with low self-esteem, OCD, or the effects of trauma? Are you seeking a way to live a meaningful life that reflects your values? The Bay Area CBT Center is a group practice of behavioral therapists dedicated to providing high quality evidence-based treatments. Our integrative approach allows us to apply principles from the most up to date research-based treatments while adapting these tools to meet your unique needs and build an authentic relationship with you. We specialize in Cognitive Behavioral Therapy, Acceptance and Commitment Therapy, and Schema Therapy. We help you identify and overcome the obstacles that prevent you from living the life you desire and creating the relationships you long for. We offer a range of services including individual, couples, and group therapy.",
            "yrs_practice": 0,
            "school": "none provided",
            "yr_graduated": 0,
            "license_no": "PSY25464",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 4,
                    "name": "Other Racial or Ethnic Background",
                    "created_at": "2017-07-09T06:31:19.404Z",
                    "updated_at": "2017-07-09T06:31:19.404Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                },
                {
                    "id": 7,
                    "name": "Veterans",
                    "created_at": "2017-07-09T06:31:00.383Z",
                    "updated_at": "2017-07-09T06:31:00.383Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Coaching\", \"Cognitive Behavioral (CBT)\", \"Emotionally Focused\", \"Existential\", \"Gestalt\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Relational\", \"Solution Focused Brief (SFBT)\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:55.983Z",
                    "updated_at": "2017-07-09T06:30:55.983Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 62,
                    "name": "Weight Loss",
                    "created_at": "2017-07-09T06:31:01.939Z",
                    "updated_at": "2017-07-09T06:31:01.939Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 80,
                    "name": "mediation, couples therapy",
                    "created_at": "2017-07-09T06:31:19.603Z",
                    "updated_at": "2017-07-09T06:31:19.603Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$150 - $200",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"ACH Bank transfer\", \"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Paypal\", \"Visa\", \"Wire\"]"
        },
        {
            "pt_id": "129104",
            "name": "Lilia Leshan",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(415) 639-9879",
            "street_address": "315 Sanchez Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "As a psychotherapist, I offer support and safety to explore the vast and intricate landscapes of yourself. Body, mind, spirit, heart, and imagination all hold importance in my work. I believe freedom and fulfillment come from the experience of a full spectrum of feelings. Fear, love, grief, anger, sadness, jealousy, joy, and reverence all hold significance inside of us. By making space for all of our feelings, we become intimate with ourselves. What you celebrate about yourself, the hidden or unclaimed parts of yourself, and everything in between have a place in therapy. Together, we become familiar with all of who you are. This is a collaborative process. Past wounding and trauma can make it difficult to be yourself. Some feelings are so painful that we avoid them at all cost; others seem to dominate everything. In therapy, you get to decide what is right for you. As we slow down and tune into what is real for you in each moment, we bring focus and mindfulness to your experiences. Your own unique voice emerges. Together we begin to untangle the threads that keep you from the full capacity of yourself.",
            "yrs_practice": 9,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2006,
            "license_no": "MFC50518",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Toddlers / Preschoolers (0 to 6)\", \"Children (6 to 10)\", \"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Eclectic\", \"Family / Marital\", \"Play Therapy\", \"Psychodynamic\", \"Relational\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                },
                {
                    "id": 12,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:04.517Z",
                    "updated_at": "2017-07-09T06:31:04.517Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 81,
                    "name": "Creativity",
                    "created_at": "2017-07-09T06:31:21.062Z",
                    "updated_at": "2017-07-09T06:31:21.062Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "no info provided",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "78915",
            "name": "Arlene Bermann",
            "title": "Clinical Social Work/Therapist, LCSW",
            "phone": "(415) 574-0962",
            "street_address": "3890 24th Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "I think of therapy as like sanctuary - a place where there aren't distractions, where there is an opportunity to pay attention to what is important, in a spirit of kindness. Because of this, many individuals and couples find it to be enjoyable, and very relieving. Of course, since people do therapy to work on painful things, therapy itself isn't always easy. But at least things can be approached thoughtfully and skillfully, in a safe context, and this itself brings great benefits. I work to help you to settle in with yourself, so that you can relate to your life from the deepest, most genuine place possible. Together, we can consider how you relate to yourself and to others - after all, our relationships with ourselves and with others are central to the quality of our lives. I find that from this kind of conversation skillful responses to inner concerns and relationship difficulties arise. I am very experienced at helping people with relationship problems or lack of relationships, anxiety, sadness and depression, with patterns of self-criticism and difficulty relaxing, history of trauma.",
            "yrs_practice": 15,
            "school": "University of California, Berkeley",
            "yr_graduated": 1991,
            "license_no": "17299",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "none provided",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Psychoanalytic\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 70,
                    "name": "Adoption",
                    "created_at": "2017-07-09T06:31:07.565Z",
                    "updated_at": "2017-07-09T06:31:07.565Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$160+",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "no info provided"
        },
        {
            "pt_id": "222160",
            "name": "Nicole Ridout",
            "title": "Psychologist, PsyD",
            "phone": "(415) 969-3481",
            "street_address": "300 Brannan Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94107",
            "blurb": "Ready to break free of emotional blocks to awaken a healthier life? Therapy can help. I am a psychologist with extensive training and experience in helping individuals work through a variety of challenges. I especially enjoy working with adults who are experiencing issues such as relationship problems, anxiety, depression, work/school stress, transitions, low self-esteem, family conflict, perfectionism, and performance concerns. I recently worked as a psychologist at Stanford University and UCSF where I saw students for personal and academic concerns. My clinical training includes work at several college counseling centers, residential treatment facilities, and children's hospitals. Using a supportive and collaborative approach, my goal is to help people grow and overcome challenges so that they can enjoy a healthier, more satisfying life. I primarily draw from cognitive-behavioral, psychodynamic, and mindfulness-based therapies, and my approach is tailored to best fit the needs of each individual. It can be difficult to find someone you can trust. You can feel confident knowing that I have experience working with a variety of issues, and offer a warm and nonjudgmental space for you to explore your most challenging issues. Visit my website or call for a free phone consultation.",
            "yrs_practice": 0,
            "school": "none provided",
            "yr_graduated": 0,
            "license_no": "PSY",
            "license_state": "26431",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [
                {
                    "id": 9,
                    "name": "Aviation Professionals",
                    "created_at": "2017-07-09T06:31:23.117Z",
                    "updated_at": "2017-07-09T06:31:23.117Z"
                },
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Acceptance and Commitment Therapy (ACT)\", \"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"Humanistic\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Motivational Interviewing\", \"Person-Centered\", \"Positive Psychology\", \"Psychodynamic\", \"Relational\", \"Solution Focused Brief (SFBT)\", \"Strength Based\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T06:30:56.088Z",
                    "updated_at": "2017-07-09T06:30:56.088Z"
                },
                {
                    "id": 7,
                    "name": "Domestic Violence",
                    "created_at": "2017-07-09T06:30:56.094Z",
                    "updated_at": "2017-07-09T06:30:56.094Z"
                },
                {
                    "id": 37,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.413Z",
                    "updated_at": "2017-07-09T06:31:00.413Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 76,
                    "name": "Sports Performance",
                    "created_at": "2017-07-09T06:31:09.986Z",
                    "updated_at": "2017-07-09T06:31:09.986Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 82,
                    "name": "University Student Issues",
                    "created_at": "2017-07-09T06:31:23.291Z",
                    "updated_at": "2017-07-09T06:31:23.291Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "no info provided",
            "sliding_scale": "no info provided",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "195715",
            "name": "Ariane Eroy",
            "title": "Psychologist, PhD, CHT",
            "phone": "(415) 802-0590",
            "street_address": "1801 Bush Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94109",
            "blurb": "I invite you onto an amazing path which opens up before your very eyes, your internal world. Explore your lived experience, and receive the support you need to discover the answers that previously eluded you. For over 20 years, I've been aiding individuals navigate their way through troubling times and complex feelings. I believe deeply in my work's importance, and my clients' inherent worth. I understand the exquisite sensitivity of my clients--and their essential aspects that have been harmed and thus buried. With my help, my clients access their subconscious, whose secrets help them feel whole, and vitally, alive. I welcome into my practice everyone--including those who feel stressed out, burnt out, misunderstood or under-appreciated. For these, I offer hope and healing, a path of greater self-knowing and self-love.",
            "yrs_practice": 20,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2009,
            "license_no": "PSY26336",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 1,
                    "name": "Hispanic and Latino",
                    "created_at": "2017-07-09T06:31:11.292Z",
                    "updated_at": "2017-07-09T06:31:11.292Z"
                },
                {
                    "id": 3,
                    "name": "Asian",
                    "created_at": "2017-07-09T06:31:15.731Z",
                    "updated_at": "2017-07-09T06:31:15.731Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 9,
                    "name": "Aviation Professionals",
                    "created_at": "2017-07-09T06:31:23.117Z",
                    "updated_at": "2017-07-09T06:31:23.117Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Coaching\", \"Hypnotherapy\", \"Psychodynamic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 19,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:31:24.800Z",
                    "updated_at": "2017-07-09T06:31:24.800Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 83,
                    "name": "Activism, Immigration, Twins, Writing",
                    "created_at": "2017-07-09T06:31:24.824Z",
                    "updated_at": "2017-07-09T06:31:24.824Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 84,
                    "name": "Autism",
                    "created_at": "2017-07-09T06:31:24.835Z",
                    "updated_at": "2017-07-09T06:31:24.835Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 85,
                    "name": "Chronic Illness",
                    "created_at": "2017-07-09T06:31:24.845Z",
                    "updated_at": "2017-07-09T06:31:24.845Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 86,
                    "name": "Racial Identity",
                    "created_at": "2017-07-09T06:31:24.859Z",
                    "updated_at": "2017-07-09T06:31:24.859Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 62,
                    "name": "Weight Loss",
                    "created_at": "2017-07-09T06:31:01.939Z",
                    "updated_at": "2017-07-09T06:31:01.939Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                }
            ],
            "avg_cost": "$120 - $160",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"HSA\\n                    \\n                                                                            \\n                    PPO\", \"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
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
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:55.983Z",
                    "updated_at": "2017-07-09T06:30:55.983Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:55.997Z",
                    "updated_at": "2017-07-09T06:30:55.997Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T06:30:56.088Z",
                    "updated_at": "2017-07-09T06:30:56.088Z"
                },
                {
                    "id": 7,
                    "name": "Domestic Violence",
                    "created_at": "2017-07-09T06:30:56.094Z",
                    "updated_at": "2017-07-09T06:30:56.094Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 9,
                    "name": "Intellectual Disability",
                    "created_at": "2017-07-09T06:30:56.106Z",
                    "updated_at": "2017-07-09T06:30:56.106Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$110 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "201850",
            "name": "Knute Johnson",
            "title": "Psychologist, PhD",
            "phone": "(510) 400-6663",
            "street_address": "1730 Divisidero Suite 1",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94115",
            "blurb": "I work with adolescents, families, and adults; especially boys not feeling good and unable to express, adults struggling with relationship conflict, and anger within families. I approach difficult relational problems with gentle irreverence, and sometimes playfulness. You never know what will happen in therapy, but looking at it together with courage we make space to grow. I consider uncovering emotions and meaning important for change. I can help with destructive patterns and nagging trauma. I like working flexibly with families, for example with a child, the whole family, and the parents in different sessions. I offer treatment in Spanish and enjoy working with bilingual families.",
            "yrs_practice": 1,
            "school": "Palo Alto University",
            "yr_graduated": 2012,
            "license_no": "26111",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 1,
                    "name": "Spanish",
                    "created_at": "2017-07-09T06:30:57.130Z",
                    "updated_at": "2017-07-09T06:30:57.130Z"
                }
            ],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Eclectic\", \"Emotionally Focused\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [],
            "issues": [
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 24,
                    "name": "Self-Harming",
                    "created_at": "2017-07-09T06:30:57.243Z",
                    "updated_at": "2017-07-09T06:30:57.243Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 26,
                    "name": "Video Game Addiction",
                    "created_at": "2017-07-09T06:30:57.255Z",
                    "updated_at": "2017-07-09T06:30:57.255Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                }
            ],
            "avg_cost": "$90 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "174583",
            "name": "Jenya Kaufman",
            "title": "Psychiatrist, MD",
            "phone": "(415) 233-9412",
            "street_address": "4111 18th St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "I offer a collaborative approach to helping clients achieve their goals. I believe in treating each person as a unique individual and together finding the best way toward wellbeing. This begins with a comprehensive evaluation which can last from one to four sessions where we will attempt to understand the current difficulties and discuss treatment options. I have experience treating a wide variety of psychological and emotional difficulties with psychotherapy and medication when appropriate. In my practice I offer psychotherapy and medication evaluation/management to patients who are already in therapy. I have training in several modalities of psychotherapy including Psychodynamic, Interpersonal, and Emotionally Focused Couples/Family Therapy. I aim to help clients be present to their emotional experiences and develop insight into their psychological functioning. I have a special interest in women's mental health, particularly issues around pregnancy and motherhood. I have experience and training working with women who have mental illness and are or are considering becoming pregnant.",
            "yrs_practice": 5,
            "school": "Stanford University Medical School",
            "yr_graduated": 2008,
            "license_no": "A109755",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Emotionally Focused\", \"Family Systems\", \"Interpersonal\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 4,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:59.314Z",
                    "updated_at": "2017-07-09T06:30:59.314Z"
                }
            ],
            "issues": [
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 36,
                    "name": "Obesity",
                    "created_at": "2017-07-09T06:30:59.348Z",
                    "updated_at": "2017-07-09T06:30:59.348Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                }
            ],
            "avg_cost": "$180 - $300",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "340591",
            "name": "Jessica Elizabeth Craig",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 569-2663",
            "street_address": "26 7th Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94103",
            "blurb": "I am here to provide a safe space and engage us both in the creative and intentional exploration of your world. My personal style is the integration of problem-solving techniques with empathetic psychotherapy and a touch of humor. We also have the option of using art as a tool to further your search for meaning and resolution. I have always been a passionate advocate for the alternative sexualities, and enjoy helping you explore your relationships. I welcome clients of all backgrounds, sexual orientations, and gender identities/fluctuations. I believe that through the power of human connection we can heal wounds, forge new paths, and examine ourselves fearlessly. I graduated from Notre Dame de Namur University in 2012 with M.A. in Marriage and Family Therapy (MFT) and Art Therapy. I've since worked with a huge range of clients and am deeply humbled by the vulnerability and courage that people bring to therapy and share with me.",
            "yrs_practice": 0,
            "school": "none provided",
            "yr_graduated": 0,
            "license_no": "99734",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Children (6 to 10)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                },
                {
                    "id": 7,
                    "name": "Veterans",
                    "created_at": "2017-07-09T06:31:00.383Z",
                    "updated_at": "2017-07-09T06:31:00.383Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Adlerian\", \"Art Therapy\", \"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Culturally Sensitive\", \"Eclectic\", \"Existential\", \"Family / Marital\", \"Feminist\", \"Integrative\", \"Narrative\", \"Person-Centered\", \"Positive Psychology\", \"Psychodynamic\", \"Reality Therapy\", \"Solution Focused Brief (SFBT)\", \"Strength Based\", \"Trauma Focused\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 6,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.399Z",
                    "updated_at": "2017-07-09T06:31:00.399Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 37,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.413Z",
                    "updated_at": "2017-07-09T06:31:00.413Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 39,
                    "name": "Alzheimer's",
                    "created_at": "2017-07-09T06:31:00.434Z",
                    "updated_at": "2017-07-09T06:31:00.434Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 40,
                    "name": "Borderline Personality",
                    "created_at": "2017-07-09T06:31:00.453Z",
                    "updated_at": "2017-07-09T06:31:00.453Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 46,
                    "name": "Medication Management",
                    "created_at": "2017-07-09T06:31:00.520Z",
                    "updated_at": "2017-07-09T06:31:00.520Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 48,
                    "name": "Narcissistic Personality",
                    "created_at": "2017-07-09T06:31:00.535Z",
                    "updated_at": "2017-07-09T06:31:00.535Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 24,
                    "name": "Self-Harming",
                    "created_at": "2017-07-09T06:30:57.243Z",
                    "updated_at": "2017-07-09T06:30:57.243Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 51,
                    "name": "Sexual Addiction",
                    "created_at": "2017-07-09T06:31:00.572Z",
                    "updated_at": "2017-07-09T06:31:00.572Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 54,
                    "name": "Suicidal Ideation",
                    "created_at": "2017-07-09T06:31:00.596Z",
                    "updated_at": "2017-07-09T06:31:00.596Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 57,
                    "name": "non-monogamy, bdsm",
                    "created_at": "2017-07-09T06:31:00.619Z",
                    "updated_at": "2017-07-09T06:31:00.619Z"
                },
                {
                    "id": 58,
                    "name": "Dissociative Disorders",
                    "created_at": "2017-07-09T06:31:00.625Z",
                    "updated_at": "2017-07-09T06:31:00.625Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$70 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "207977",
            "name": "Michael J Milazzo",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 969-2633",
            "street_address": "533A Castro St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "THERAPY IS ABOUT SOLUTIONS, skills and defining how you want to fit into the world. I assist my clients in finding and defining the best version of themselves while addressing stress, anxiety, depression, fear, creative and professional blocks. Therapy may help you uncover those hidden skills, teach new skills, adjust your relationships, ease anxieties and tap into a more effective you. ONLINE DATING: You had five dates last week, but you're losing hope - glued to your apps, constantly searching. Technology doesn't help human connection, & apps may interfere with your search for love. Learn about dating in the age of the app. Stop searching & find what you are looking for. CAREGIVER BURNOUT: More than 65,000,000 family caregivers are providing care to an ill, aged, or disabled spouse, child or friend. A big mistake caregivers make is to neglect their own physical and emotional needs. Don't forget to care for yourself when you are caring for someone else.",
            "yrs_practice": 8,
            "school": "University of San Francisco",
            "yr_graduated": 2006,
            "license_no": "MFC80088",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Coaching\", \"Cognitive Behavioral (CBT)\", \"Existential\", \"Humanistic\", \"Hypnotherapy\", \"Integrative\", \"Mindfulness-based (MBCT)\", \"Psychodynamic\", \"Solution Focused Brief (SFBT)\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:55.983Z",
                    "updated_at": "2017-07-09T06:30:55.983Z"
                },
                {
                    "id": 7,
                    "name": "Alzheimer's",
                    "created_at": "2017-07-09T06:31:01.838Z",
                    "updated_at": "2017-07-09T06:31:01.838Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 39,
                    "name": "Alzheimer's",
                    "created_at": "2017-07-09T06:31:00.434Z",
                    "updated_at": "2017-07-09T06:31:00.434Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 59,
                    "name": "Internet Addiction",
                    "created_at": "2017-07-09T06:31:01.877Z",
                    "updated_at": "2017-07-09T06:31:01.877Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 61,
                    "name": "Online Dating, Family Caregiver Stress",
                    "created_at": "2017-07-09T06:31:01.893Z",
                    "updated_at": "2017-07-09T06:31:01.893Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 51,
                    "name": "Sexual Addiction",
                    "created_at": "2017-07-09T06:31:00.572Z",
                    "updated_at": "2017-07-09T06:31:00.572Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 62,
                    "name": "Weight Loss",
                    "created_at": "2017-07-09T06:31:01.939Z",
                    "updated_at": "2017-07-09T06:31:01.939Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$60 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Superbills Provided\", \"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "84648",
            "name": "Melodie Del Rio",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(415) 390-5620",
            "street_address": "946 Irving Street, Suite E",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94122",
            "blurb": "I work with adults (individual and couple's therapy), children, and adolescents. Special interests include: life transitions, relationship problems, loss and grief (including pregnancy loss), stress and anxiety, depression, parenting concerns, children/ adolescents and identity. I am warm, accepting, and make people feel at ease. I am committed to learning about who you truly are and working with you to help you make long lasting change. I take an active role in the therapy process by helping you gain insight into patterns in your life. My goal as a therapist is to help you reach a greater understanding and compassion for yourself, to heal from painful experiences, and to find new ways of coping with stress and interacting with others.",
            "yrs_practice": 10,
            "school": "San Francisco State University",
            "yr_graduated": 2003,
            "license_no": "MFC",
            "license_state": "43564",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Toddlers / Preschoolers (0 to 6)\", \"Children (6 to 10)\", \"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Family Systems\", \"Play Therapy\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 8,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:31:02.778Z",
                    "updated_at": "2017-07-09T06:31:02.778Z"
                },
                {
                    "id": 9,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:31:02.784Z",
                    "updated_at": "2017-07-09T06:31:02.784Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                }
            ],
            "issues": [
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 64,
                    "name": "Oppositional Defiance",
                    "created_at": "2017-07-09T06:31:02.847Z",
                    "updated_at": "2017-07-09T06:31:02.847Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 65,
                    "name": "Pre/Postnatal concerns, Pregnancy Loss",
                    "created_at": "2017-07-09T06:31:02.858Z",
                    "updated_at": "2017-07-09T06:31:02.858Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$100 - $140",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"BlueCross and BlueShield\", \"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "60631",
            "name": "Isela Cueva Rizzi",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(415) 799-8343",
            "street_address": "3974 24th Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "Seeking therapy can be complex and multi-layered, so finding a therapist you connect with is essential. I work interactively and collaboratively to support you at your pace while helping you move toward the fullest expression of the life you wish to lead. I provide a safe holding environment where the changes you hope for can occur. The therapeutic relationship is the backdrop for investigation and integration, with openness, curiosity, and tenderness. With greater awareness and non-judgement, your capacity for self-acceptance expands. Ultimately this extends out to others in your life and propels you into a more satisfying and harmonious existence. In my work with families, I focus on strengthening the parent-child relationship. I provide developmental guidance and help attach new meanings to behavior, helping parents find new ways of responding and relating to their children. In my work with adults, I help individuals participate more fully in their life's unfolding by making more conscious choices to embody the life they wish to lead.",
            "yrs_practice": 10,
            "school": "University of San Francisco",
            "yr_graduated": 2002,
            "license_no": "MFC",
            "license_state": "45181",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 1,
                    "name": "Spanish",
                    "created_at": "2017-07-09T06:30:57.130Z",
                    "updated_at": "2017-07-09T06:30:57.130Z"
                }
            ],
            "client_ages": "[\"Toddlers / Preschoolers (0 to 6)\", \"Children (6 to 10)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Family\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Family Systems\", \"Play Therapy\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 10,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:31:03.592Z",
                    "updated_at": "2017-07-09T06:31:03.592Z"
                },
                {
                    "id": 9,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:31:02.784Z",
                    "updated_at": "2017-07-09T06:31:02.784Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$120 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "99147",
            "name": "Sharon Gardner",
            "title": "Marriage & Family Therapist, MA, MFT",
            "phone": "(415) 800-4839",
            "street_address": "3516 Geary Blvd #102",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94118",
            "blurb": "I believe change can happen when there is hope and direction, and I trust healing takes place within safety, connection and support. I am a calm and grounded person, and this makes my clients feel supported and safe. My work as a therapist is supported by training in the Hakomi method, as well as my life experience and 40 years of Buddhist practice. I will support you in developing greater self-awareness as well as balance of body-mind-spirit. You may find yourself stuck in old patterns, following familiar paths that no longer lead where you want to go. New paths may be less familiar and more work, requiring you to clear away rocks and branches. It can be helpful to have a guide - someone who is holding the map, the flashlight, and who has your back. I can be that guide, supporting you in moving along new paths. New paths can lead to improved relationships, greater self esteem, reduced anxiety, and healing from trauma. Our work can bring more satisfaction and enjoyment into your life. Feel free to contact me for a brief initial phone consultation. I see clients during the week and on Saturdays.",
            "yrs_practice": 8,
            "school": "Institute of Transpersonal Psychology",
            "yr_graduated": 2008,
            "license_no": "LMFT84533",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Children (6 to 10)\", \"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Humanistic\", \"Psychodynamic\", \"Somatic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 12,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:04.517Z",
                    "updated_at": "2017-07-09T06:31:04.517Z"
                }
            ],
            "issues": [
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$80 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "247500",
            "name": "Randi Myrseth",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 871-0053",
            "street_address": "3890 24th St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "In the spirit of kindness and compassion we will sit together and explore the changes you are seeking and the habitual patterns and behaviors that may no longer serve you. I might help you to: Discover and release emotional and relational wounds; Alleviate depression, hopelessness, anxiety or mood instability; Face life transitions in employment, relationships, health or aging; Deal with loss and grief; Resolve issues with drug and alcohol dependence; Navigate parenting issues from infancy through young adulthood; Develop more satisfying communication and intimacy in relationships and deepen your relationship with yourself, emerging from dissatisfaction to find fulfillment. I can help you heal the tendency toward self-criticism and blame that is an obstacle to your growth. Your innate capacities for love, joy, intimacy, courage and strength can emerge once emotional injuries are given kind attention and room for change in the therapeutic relationship. I love seeing both individuals and couples. I am trained in depth and relational psychology, and have practiced psychotherapy in San Francisco for 25 years. My work is also informed by meditation; as a student of the Diamond Approach; and a parent for 28 years. I welcome people of any gender and sexual orientation.",
            "yrs_practice": 20,
            "school": "New College of California",
            "yr_graduated": 1995,
            "license_no": "LMFT35726",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 2,
                    "name": "Norwegian",
                    "created_at": "2017-07-09T06:31:05.292Z",
                    "updated_at": "2017-07-09T06:31:05.292Z"
                },
                {
                    "id": 3,
                    "name": "Swedish",
                    "created_at": "2017-07-09T06:31:05.298Z",
                    "updated_at": "2017-07-09T06:31:05.298Z"
                }
            ],
            "client_ages": "[\"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Eclectic\", \"Emotionally Focused\", \"Existential\", \"Family / Marital\", \"Gestalt\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Psychodynamic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 68,
                    "name": "Pregnancy, Prenatal, Postpartum",
                    "created_at": "2017-07-09T06:31:05.465Z",
                    "updated_at": "2017-07-09T06:31:05.465Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$100 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "104729",
            "name": "Kirsten Harnett",
            "title": "Marriage & Family Therapist, MS, LMFT",
            "phone": "(415) 723-4131",
            "street_address": "1100 Sanchez St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "As a therapist I believe each person has the capability and potential of living outside the bounds of fear, anxiety, apathy, and/or depression if they so desire. I see my role as both collaborator and guide, bearing witness to my client's stories and helping grow insight so new, more empowering stories might be written. I do this using several techniques including changing maladaptive, deeply ingrained thinking/feeling/behavior patterns, and exploring challenging childhood, family, and relationship history. I have experience treating issues of anxiety, depression, destructive relationship patterns, and clients with painful spiritual experiences they want assistance healing. While I have a range of experience, my specialty involves work with individual, single adults who have experienced trauma or challenge in their dating lives and/or carry pain associated with the unmet desire to be married. This starting point often leads to deep exploration of family and childhood history.",
            "yrs_practice": 1,
            "school": "Fuller Theological Seminary",
            "yr_graduated": 2004,
            "license_no": "48822",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Family Systems\", \"Narrative\", \"Narrative\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 14,
                    "name": "Singleness, Issues in dating",
                    "created_at": "2017-07-09T06:31:06.265Z",
                    "updated_at": "2017-07-09T06:31:06.265Z"
                },
                {
                    "id": 12,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:04.517Z",
                    "updated_at": "2017-07-09T06:31:04.517Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                }
            ],
            "issues": [
                {
                    "id": 69,
                    "name": "Singleness, Issues in dating",
                    "created_at": "2017-07-09T06:31:06.281Z",
                    "updated_at": "2017-07-09T06:31:06.281Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                }
            ],
            "avg_cost": "$100 - $130",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "297918",
            "name": "Julia Lehrman",
            "title": "Clinical Social Work/Therapist, LCSW, RYT",
            "phone": "(415) 650-4509",
            "street_address": "582 Market St, Suite 1401",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94104",
            "blurb": "You can't sleep. Your thoughts are racing. You replay things in your mind. Your inner critic is winning. You're stressed out. You're on the verge of a meltdown. You feel confused, lost, and stuck. Your life feels void of meaning. You dread waking up. You're surrounded by people, but still feel alone. You have a secret you've been holding in. You're afraid of being judged. Fortunately, you've come to the right place. Therapy can help. I can help you. Life can be hard and feel overwhelming at times, but you don't have to live in constant pain. There is hope. Imagine going to sleep relaxed and waking up excited. Picture yourself happy and confident. What if there was a way to feel better? You no longer have to suffer. Let me help you discover how to connect to your true self, find purpose and direction, and experience life to the fullest. Gain skills to implement immediately. Actualize your potential and transform into the best version of yourself. Quiet that inner critic and embrace your true worth. You have the power to take control of your life. I'm here to support you. The wait is over. Contact me for a free 20 minute consultation!",
            "yrs_practice": 8,
            "school": "NYU",
            "yr_graduated": 0,
            "license_no": "72238",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Acceptance and Commitment Therapy (ACT)\", \"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"Emotionally Focused\", \"Existential\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Motivational Interviewing\", \"Positive Psychology\", \"Psychodynamic\", \"Relational\", \"Solution Focused Brief (SFBT)\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 74,
                    "name": "Chronic Impulsivity",
                    "created_at": "2017-07-09T06:31:09.946Z",
                    "updated_at": "2017-07-09T06:31:09.946Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 76,
                    "name": "Sports Performance",
                    "created_at": "2017-07-09T06:31:09.986Z",
                    "updated_at": "2017-07-09T06:31:09.986Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                }
            ],
            "avg_cost": "$150 - $200",
            "sliding_scale": "no info provided",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Lyra\", \"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "331911",
            "name": "Taylor Rechtschaffen",
            "title": "Marriage & Family Therapist Intern, MA, MFTi",
            "phone": "(415) 767-1682",
            "street_address": "2120 Market Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "Experiencing anxiety, fear, anger, and sadness is a natural part of being human. How you respond to these emotions is what makes all the difference and can dictate whether you sink and struggle or thrive and grow. Amazingly, it is by facing and bringing love to what you wish you could 'get rid of' that allows parts of you to transform and metabolize into the power and grace you long to feel. My job is to help you navigate this journey and learn the skills to be your own captain; to help you see how much choice you actually have. I help clients to heal, deepen, and improve their most important relationship: the relationship with yourself. When all parts of you are welcomed and engaged with, a wholeness can emerge in which you more regularly experience compassion, calmness, courage, and clarity towards yourself and others. I am a long time meditator and student of yoga and Buddhism. With clients, I utilize practices from Tibetan Buddhism as well as Internal Family Systems and Gestalt therapy. My approach is also informed by earth and indigenous based wisdoms. These are the foundations of my embodied, experiential psychotherapy approach.",
            "yrs_practice": 2,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2016,
            "license_no": "99075",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 1,
                    "name": "Hispanic and Latino",
                    "created_at": "2017-07-09T06:31:11.292Z",
                    "updated_at": "2017-07-09T06:31:11.292Z"
                },
                {
                    "id": 2,
                    "name": "Native American",
                    "created_at": "2017-07-09T06:31:11.321Z",
                    "updated_at": "2017-07-09T06:31:11.321Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Culturally Sensitive\", \"Eclectic\", \"Emotionally Focused\", \"Existential\", \"Experiential Therapy\", \"Gestalt\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Multicultural\", \"Person-Centered\", \"Positive Psychology\", \"Psychodynamic\", \"Relational\", \"Strength Based\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 16,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:11.342Z",
                    "updated_at": "2017-07-09T06:31:11.342Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$60 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "136580",
            "name": "Christopher Corey",
            "title": "Marriage & Family Therapist Intern, MFTI",
            "phone": "(415) 697-3313",
            "street_address": "425 Gough Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94102",
            "blurb": "My approach is a flexible, organic experience of healing for many emotional concerns, particularly anxiety, sadness, grief, fear, shame, anger, loneliness, guilt, sexual and creative blockages. We work to bring the hidden into light. That which has caused you to distort your inner strength can be brought to the foreground and choices can be made. I embrace all gender expressions and sexual orientations. I have experience supporting a variety of relationship configurations and lifestyles, and can assist in navigating issues that can surface in these choices, such as boredom, jealousy, intimacy blockages, differing needs and desires, sexual and emotional satisfaction. Influenced by the works of Fritz Perls, Wilhelm Reich and Rollo May, I will help you explore what has been fed to you and become indigestible. We will work to move through the layers of pain towards a new, authentic expression of Self. I believe that we are continually remaking and creating ourselves and our experiences. Sometimes we do this without awareness, and suffer from self-deception and distortion.The goal is for you to become aware of what you are doing, how you are doing it, and how you can change.",
            "yrs_practice": 5,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2012,
            "license_no": "none provided",
            "license_state": "none provided",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Existential\", \"Gestalt\", \"Humanistic\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Relational\", \"Somatic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 74,
                    "name": "Chronic Impulsivity",
                    "created_at": "2017-07-09T06:31:09.946Z",
                    "updated_at": "2017-07-09T06:31:09.946Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 51,
                    "name": "Sexual Addiction",
                    "created_at": "2017-07-09T06:31:00.572Z",
                    "updated_at": "2017-07-09T06:31:00.572Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 58,
                    "name": "Dissociative Disorders",
                    "created_at": "2017-07-09T06:31:00.625Z",
                    "updated_at": "2017-07-09T06:31:00.625Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$80 - $130",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "235960",
            "name": "Bay Area Center for Mood Disorders",
            "title": "Psychologist, PhD",
            "phone": "(415) 697-3964",
            "street_address": "870 Market Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94102",
            "blurb": "Therapy helps to improve lives in a meaningful way (have better relationships with friends, family members and partners, improve our self-esteem), it's not just about managing your symptoms. We offer a warm, compassionate, and collaborative environment, and will work with you to tailor clinical interventions to fit your needs and goals. Our philosophy is of utilizing evidence-based interventions for mood disorders in working with you. By doing so, our work is based upon providing skills and tools that have been proven to be effective. We will collaboratively set measurable treatment goals with you. Our approach integrates different evidence-based therapeutic approaches, such as Cognitive Behavior Therapy, Dialectical Behavior Therapy, Mindfulness, and Acceptance and Commitment Therapy. These are active, practical, skills-based and engaged forms of therapy--which focus on making positive changes in one's current life.",
            "yrs_practice": 0,
            "school": "Stanford University",
            "yr_graduated": 0,
            "license_no": "26024",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 3,
                    "name": "Asian",
                    "created_at": "2017-07-09T06:31:15.731Z",
                    "updated_at": "2017-07-09T06:31:15.731Z"
                }
            ],
            "client_languages": [
                {
                    "id": 4,
                    "name": "Korean",
                    "created_at": "2017-07-09T06:31:15.737Z",
                    "updated_at": "2017-07-09T06:31:15.737Z"
                }
            ],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"Emotionally Focused\", \"Mindfulness-based (MBCT)\", \"Motivational Interviewing\", \"Solution Focused Brief (SFBT)\", \"Trauma Focused\"]",
            "target_issues": [
                {
                    "id": 4,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:59.314Z",
                    "updated_at": "2017-07-09T06:30:59.314Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                }
            ],
            "issues": [
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 40,
                    "name": "Borderline Personality",
                    "created_at": "2017-07-09T06:31:00.453Z",
                    "updated_at": "2017-07-09T06:31:00.453Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T06:30:56.088Z",
                    "updated_at": "2017-07-09T06:30:56.088Z"
                },
                {
                    "id": 7,
                    "name": "Domestic Violence",
                    "created_at": "2017-07-09T06:30:56.094Z",
                    "updated_at": "2017-07-09T06:30:56.094Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 37,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.413Z",
                    "updated_at": "2017-07-09T06:31:00.413Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 24,
                    "name": "Self-Harming",
                    "created_at": "2017-07-09T06:30:57.243Z",
                    "updated_at": "2017-07-09T06:30:57.243Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 54,
                    "name": "Suicidal Ideation",
                    "created_at": "2017-07-09T06:31:00.596Z",
                    "updated_at": "2017-07-09T06:31:00.596Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 77,
                    "name": "Psychosis",
                    "created_at": "2017-07-09T06:31:15.932Z",
                    "updated_at": "2017-07-09T06:31:15.932Z"
                },
                {
                    "id": 33,
                    "name": "Thinking Disorders",
                    "created_at": "2017-07-09T06:30:58.450Z",
                    "updated_at": "2017-07-09T06:30:58.450Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "no info provided",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "178174",
            "name": "Sarah Mclaughlin",
            "title": "Marriage & Family Therapist, MA, LMFT",
            "phone": "(415) 651-4070",
            "street_address": "1730 Divisadero Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94115",
            "blurb": "I am well aware of how uneasy it can feel to search for a therapist for the first time. I am a therapist, yes, but I pride myself on being a real person. My approach is down to earth, compassionate and non-judgmental. I specialize in Women's Mental Health, and see many clients struggling with anxiety and difficult life phase changes. Every woman deserves a space where she is enough, a space where she can simply be. My goal is to help you create and maintain a loving, accepting relationship with yourself. Additionally, I enjoy working with those in the helping professions (teacher, social worker, nurse etc.) who may be experiencing compassion fatigue or secondary trauma. Visit my blog to get to know me: http://mclaughlintherapy.com/blog.html Are you ready to start the journey toward lasting change and wellness? Contact me to schedule an initial session to see if we're a good fit!",
            "yrs_practice": 4,
            "school": "San Francisco State University",
            "yr_graduated": 2011,
            "license_no": "LMFT",
            "license_state": "85027",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Humanistic\", \"Relational\", \"Somatic\", \"Trauma Focused\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 78,
                    "name": "secondary trauma, compassion fatigue",
                    "created_at": "2017-07-09T06:31:16.996Z",
                    "updated_at": "2017-07-09T06:31:16.996Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$180",
            "sliding_scale": "no info provided",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Health Savings Account\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "216590",
            "name": "The Full Story Therapy",
            "title": "Clinical Social Work/Therapist, LCSW",
            "phone": "(415) 649-6552",
            "street_address": "582 Market Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94104",
            "blurb": "Anxiety does not have to overshadow your life. If you are struggling with constant fears and worries that impact your vitality and relationships, it can be hard to feel joy and fulfillment. Anxiety is an energy that can be overwhelming, but when we work together in therapy you can learn to balance it and move toward your preferred life. I offer strength focused counseling and therapy and will love to support you on your path. Let's talk and plan how life can get much better for you! I specialize in treating OCD, panic disorder, phobias, procrastination, avoidant/selective eating problems, and other anxiety related issues, I also work at UCSF, LPPI with children and youth struggling with OCD and use Cognitive Behavioral Therapy (CBT/ERP), mindfulness based therapy (ACT), as well as Narrative Therapy and Positive Psychology. My office hours include Saturdays and Sundays.",
            "yrs_practice": 6,
            "school": "SFSU",
            "yr_graduated": 2010,
            "license_no": "LCSW61849",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 5,
                    "name": "German",
                    "created_at": "2017-07-09T06:31:18.218Z",
                    "updated_at": "2017-07-09T06:31:18.218Z"
                }
            ],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Acceptance and Commitment Therapy (ACT)\", \"Cognitive Behavioral (CBT)\", \"Mindfulness-based (MBCT)\", \"Narrative\", \"Positive Psychology\"]",
            "target_issues": [
                {
                    "id": 17,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:18.251Z",
                    "updated_at": "2017-07-09T06:31:18.251Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 18,
                    "name": "Phobias",
                    "created_at": "2017-07-09T06:31:18.263Z",
                    "updated_at": "2017-07-09T06:31:18.263Z"
                }
            ],
            "issues": [
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 79,
                    "name": "Phobias",
                    "created_at": "2017-07-09T06:31:18.279Z",
                    "updated_at": "2017-07-09T06:31:18.279Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 33,
                    "name": "Thinking Disorders",
                    "created_at": "2017-07-09T06:30:58.450Z",
                    "updated_at": "2017-07-09T06:30:58.450Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$80 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Beacon\\n                    \\n                                                                            \\n                    Blue Shield\\n                    \\n                                                                            \\n                    BlueCross and BlueShield\\n                    \\n                                                                            \\n                    Cigna\\n                    \\n                                                                            \\n                    Health Net\", \"Lyra Health\\n                    \\n                                                                            \\n                    MHN\\n                    \\n                                                                            \\n                    Magellan Behavioral Health\\n                    \\n                                                                            \\n                    Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Mastercard\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "242171",
            "name": "Bay Area CBT Center",
            "title": "Psychologist, PsyD",
            "phone": "(415) 991-6818",
            "street_address": "45 Franklin Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94102",
            "blurb": "Do you feel overwhelmed by challenging relationships with loved ones, friends, or coworkers? Do you feel anxious or depressed, or struggle with low self-esteem, OCD, or the effects of trauma? Are you seeking a way to live a meaningful life that reflects your values? The Bay Area CBT Center is a group practice of behavioral therapists dedicated to providing high quality evidence-based treatments. Our integrative approach allows us to apply principles from the most up to date research-based treatments while adapting these tools to meet your unique needs and build an authentic relationship with you. We specialize in Cognitive Behavioral Therapy, Acceptance and Commitment Therapy, and Schema Therapy. We help you identify and overcome the obstacles that prevent you from living the life you desire and creating the relationships you long for. We offer a range of services including individual, couples, and group therapy.",
            "yrs_practice": 0,
            "school": "none provided",
            "yr_graduated": 0,
            "license_no": "PSY25464",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 4,
                    "name": "Other Racial or Ethnic Background",
                    "created_at": "2017-07-09T06:31:19.404Z",
                    "updated_at": "2017-07-09T06:31:19.404Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                },
                {
                    "id": 7,
                    "name": "Veterans",
                    "created_at": "2017-07-09T06:31:00.383Z",
                    "updated_at": "2017-07-09T06:31:00.383Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Coaching\", \"Cognitive Behavioral (CBT)\", \"Emotionally Focused\", \"Existential\", \"Gestalt\", \"Integrative\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Relational\", \"Solution Focused Brief (SFBT)\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:55.983Z",
                    "updated_at": "2017-07-09T06:30:55.983Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 62,
                    "name": "Weight Loss",
                    "created_at": "2017-07-09T06:31:01.939Z",
                    "updated_at": "2017-07-09T06:31:01.939Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 80,
                    "name": "mediation, couples therapy",
                    "created_at": "2017-07-09T06:31:19.603Z",
                    "updated_at": "2017-07-09T06:31:19.603Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$150 - $200",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"ACH Bank transfer\", \"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Paypal\", \"Visa\", \"Wire\"]"
        },
        {
            "pt_id": "129104",
            "name": "Lilia Leshan",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(415) 639-9879",
            "street_address": "315 Sanchez Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "As a psychotherapist, I offer support and safety to explore the vast and intricate landscapes of yourself. Body, mind, spirit, heart, and imagination all hold importance in my work. I believe freedom and fulfillment come from the experience of a full spectrum of feelings. Fear, love, grief, anger, sadness, jealousy, joy, and reverence all hold significance inside of us. By making space for all of our feelings, we become intimate with ourselves. What you celebrate about yourself, the hidden or unclaimed parts of yourself, and everything in between have a place in therapy. Together, we become familiar with all of who you are. This is a collaborative process. Past wounding and trauma can make it difficult to be yourself. Some feelings are so painful that we avoid them at all cost; others seem to dominate everything. In therapy, you get to decide what is right for you. As we slow down and tune into what is real for you in each moment, we bring focus and mindfulness to your experiences. Your own unique voice emerges. Together we begin to untangle the threads that keep you from the full capacity of yourself.",
            "yrs_practice": 9,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2006,
            "license_no": "MFC50518",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Toddlers / Preschoolers (0 to 6)\", \"Children (6 to 10)\", \"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Eclectic\", \"Family / Marital\", \"Play Therapy\", \"Psychodynamic\", \"Relational\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                },
                {
                    "id": 12,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:04.517Z",
                    "updated_at": "2017-07-09T06:31:04.517Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 81,
                    "name": "Creativity",
                    "created_at": "2017-07-09T06:31:21.062Z",
                    "updated_at": "2017-07-09T06:31:21.062Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "no info provided",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "78915",
            "name": "Arlene Bermann",
            "title": "Clinical Social Work/Therapist, LCSW",
            "phone": "(415) 574-0962",
            "street_address": "3890 24th Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "I think of therapy as like sanctuary - a place where there aren't distractions, where there is an opportunity to pay attention to what is important, in a spirit of kindness. Because of this, many individuals and couples find it to be enjoyable, and very relieving. Of course, since people do therapy to work on painful things, therapy itself isn't always easy. But at least things can be approached thoughtfully and skillfully, in a safe context, and this itself brings great benefits. I work to help you to settle in with yourself, so that you can relate to your life from the deepest, most genuine place possible. Together, we can consider how you relate to yourself and to others - after all, our relationships with ourselves and with others are central to the quality of our lives. I find that from this kind of conversation skillful responses to inner concerns and relationship difficulties arise. I am very experienced at helping people with relationship problems or lack of relationships, anxiety, sadness and depression, with patterns of self-criticism and difficulty relaxing, history of trauma.",
            "yrs_practice": 15,
            "school": "University of California, Berkeley",
            "yr_graduated": 1991,
            "license_no": "17299",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "none provided",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Family / Marital\", \"Psychoanalytic\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 70,
                    "name": "Adoption",
                    "created_at": "2017-07-09T06:31:07.565Z",
                    "updated_at": "2017-07-09T06:31:07.565Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$160+",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "no info provided"
        },
        {
            "pt_id": "222160",
            "name": "Nicole Ridout",
            "title": "Psychologist, PsyD",
            "phone": "(415) 969-3481",
            "street_address": "300 Brannan Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94107",
            "blurb": "Ready to break free of emotional blocks to awaken a healthier life? Therapy can help. I am a psychologist with extensive training and experience in helping individuals work through a variety of challenges. I especially enjoy working with adults who are experiencing issues such as relationship problems, anxiety, depression, work/school stress, transitions, low self-esteem, family conflict, perfectionism, and performance concerns. I recently worked as a psychologist at Stanford University and UCSF where I saw students for personal and academic concerns. My clinical training includes work at several college counseling centers, residential treatment facilities, and children's hospitals. Using a supportive and collaborative approach, my goal is to help people grow and overcome challenges so that they can enjoy a healthier, more satisfying life. I primarily draw from cognitive-behavioral, psychodynamic, and mindfulness-based therapies, and my approach is tailored to best fit the needs of each individual. It can be difficult to find someone you can trust. You can feel confident knowing that I have experience working with a variety of issues, and offer a warm and nonjudgmental space for you to explore your most challenging issues. Visit my website or call for a free phone consultation.",
            "yrs_practice": 0,
            "school": "none provided",
            "yr_graduated": 0,
            "license_no": "PSY",
            "license_state": "26431",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [
                {
                    "id": 9,
                    "name": "Aviation Professionals",
                    "created_at": "2017-07-09T06:31:23.117Z",
                    "updated_at": "2017-07-09T06:31:23.117Z"
                },
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Acceptance and Commitment Therapy (ACT)\", \"Attachment-based\", \"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"Humanistic\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Motivational Interviewing\", \"Person-Centered\", \"Positive Psychology\", \"Psychodynamic\", \"Relational\", \"Solution Focused Brief (SFBT)\", \"Strength Based\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T06:30:56.088Z",
                    "updated_at": "2017-07-09T06:30:56.088Z"
                },
                {
                    "id": 7,
                    "name": "Domestic Violence",
                    "created_at": "2017-07-09T06:30:56.094Z",
                    "updated_at": "2017-07-09T06:30:56.094Z"
                },
                {
                    "id": 37,
                    "name": "Dual Diagnosis",
                    "created_at": "2017-07-09T06:31:00.413Z",
                    "updated_at": "2017-07-09T06:31:00.413Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 76,
                    "name": "Sports Performance",
                    "created_at": "2017-07-09T06:31:09.986Z",
                    "updated_at": "2017-07-09T06:31:09.986Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 82,
                    "name": "University Student Issues",
                    "created_at": "2017-07-09T06:31:23.291Z",
                    "updated_at": "2017-07-09T06:31:23.291Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "no info provided",
            "sliding_scale": "no info provided",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "195715",
            "name": "Ariane Eroy",
            "title": "Psychologist, PhD, CHT",
            "phone": "(415) 802-0590",
            "street_address": "1801 Bush Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94109",
            "blurb": "I invite you onto an amazing path which opens up before your very eyes, your internal world. Explore your lived experience, and receive the support you need to discover the answers that previously eluded you. For over 20 years, I've been aiding individuals navigate their way through troubling times and complex feelings. I believe deeply in my work's importance, and my clients' inherent worth. I understand the exquisite sensitivity of my clients--and their essential aspects that have been harmed and thus buried. With my help, my clients access their subconscious, whose secrets help them feel whole, and vitally, alive. I welcome into my practice everyone--including those who feel stressed out, burnt out, misunderstood or under-appreciated. For these, I offer hope and healing, a path of greater self-knowing and self-love.",
            "yrs_practice": 20,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 2009,
            "license_no": "PSY26336",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 1,
                    "name": "Hispanic and Latino",
                    "created_at": "2017-07-09T06:31:11.292Z",
                    "updated_at": "2017-07-09T06:31:11.292Z"
                },
                {
                    "id": 3,
                    "name": "Asian",
                    "created_at": "2017-07-09T06:31:15.731Z",
                    "updated_at": "2017-07-09T06:31:15.731Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 9,
                    "name": "Aviation Professionals",
                    "created_at": "2017-07-09T06:31:23.117Z",
                    "updated_at": "2017-07-09T06:31:23.117Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Coaching\", \"Hypnotherapy\", \"Psychodynamic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 19,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:31:24.800Z",
                    "updated_at": "2017-07-09T06:31:24.800Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 83,
                    "name": "Activism, Immigration, Twins, Writing",
                    "created_at": "2017-07-09T06:31:24.824Z",
                    "updated_at": "2017-07-09T06:31:24.824Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 84,
                    "name": "Autism",
                    "created_at": "2017-07-09T06:31:24.835Z",
                    "updated_at": "2017-07-09T06:31:24.835Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 85,
                    "name": "Chronic Illness",
                    "created_at": "2017-07-09T06:31:24.845Z",
                    "updated_at": "2017-07-09T06:31:24.845Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 86,
                    "name": "Racial Identity",
                    "created_at": "2017-07-09T06:31:24.859Z",
                    "updated_at": "2017-07-09T06:31:24.859Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 53,
                    "name": "Stress",
                    "created_at": "2017-07-09T06:31:00.583Z",
                    "updated_at": "2017-07-09T06:31:00.583Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 62,
                    "name": "Weight Loss",
                    "created_at": "2017-07-09T06:31:01.939Z",
                    "updated_at": "2017-07-09T06:31:01.939Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                }
            ],
            "avg_cost": "$120 - $160",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"HSA\\n                    \\n                                                                            \\n                    PPO\", \"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "143854",
            "name": "Catherine Rose",
            "title": "Psychologist, PhD",
            "phone": "(415) 682-6192",
            "street_address": "2142 Sutter Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94115",
            "blurb": "I have more than 20 years experience working with individuals and couples in short term and in longer term in depth psychotherapy. My clients struggle with depression, anxiety, loneliness, relationship challenges, questions around life direction, life purpose, personal identity. Often they report feeling \"stuck,\" frustrated in their creative expression or in their ability to change or move forward in their lives. I try to look at each individual's strengths (ask how we can build upon those), and also look at where a person is getting in his or her own way. I try and understand what experiences have helped shaped you, who you are at this particular moment in time, and what directions you hope to move in in the future. I offer weekly or twice weekly psychotherapy sessions. These are dynamic conversations designed to facilitate insight, awareness, and change.",
            "yrs_practice": 20,
            "school": "California Insitute of Integral Studies",
            "yr_graduated": 1995,
            "license_no": "PSY18527",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\", \"Elders (65+)\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Existential\", \"Family / Marital\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [],
            "issues": [
                {
                    "id": 70,
                    "name": "Adoption",
                    "created_at": "2017-07-09T06:31:07.565Z",
                    "updated_at": "2017-07-09T06:31:07.565Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 87,
                    "name": "Asperger's Syndrome",
                    "created_at": "2017-07-09T06:32:23.930Z",
                    "updated_at": "2017-07-09T06:32:23.930Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T06:30:56.088Z",
                    "updated_at": "2017-07-09T06:30:56.088Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 22,
                    "name": "School Issues",
                    "created_at": "2017-07-09T06:30:57.231Z",
                    "updated_at": "2017-07-09T06:30:57.231Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$130 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Aetna\\n                    \\n                                                                            \\n                    Beacon\\n                    \\n                                                                            \\n                    Beech Street\\n                    \\n                                                                            \\n                    MHN\", \"Magellan Behavioral Health\\n                    \\n                                                                            \\n                    Medicare\\n                    \\n                                                                            \\n                    ValueOptions\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "113552",
            "name": "Jonathan Horowitz",
            "title": "Psychologist, PhD",
            "phone": "(650) 557-3826",
            "street_address": "55 New Montgomery St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94105",
            "blurb": "Life is stressful, and sometimes it seems overwhelming. That's where I can help. Many of my clients are highly motivated, achievement-oriented professionals who feel held back or \"stuck.\" Some are dealing with stress and anxiety, some are having trouble finding focus or motivation, and many are trying to clarify their purpose and direction. I help them find a way through these issues--particularly as they show up in the workplace. Like it or not, we spend a huge amount of time and energy at work, so it's important that we spend it well. I understand that therapy is an investment of time and money, and so I use approaches that are time-limited and research-supported, such as CBT. Yet my approach is highly individualized; I help you get clear on what's important to you, so that you can make good decisions. I'm an analytical person, and I'm good at helping people break down thorny issues into manageable pieces. At the same time, I recognize that we are dealing with personal problems that are complicated and sometimes difficult to talk about. So I strive to be authentic, grounded, and nonjudgmental.",
            "yrs_practice": 9,
            "school": "University of Texas at Austin",
            "yr_graduated": 2009,
            "license_no": "PSY24198",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [
                {
                    "id": 1,
                    "name": "Spanish",
                    "created_at": "2017-07-09T06:30:57.130Z",
                    "updated_at": "2017-07-09T06:30:57.130Z"
                }
            ],
            "client_ages": "[\"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Group\"]",
            "treatment_orientation": "[\"Coaching\", \"Cognitive Behavioral (CBT)\", \"Existential\", \"Mindfulness-based (MBCT)\", \"Psychological Testing and Evaluation\", \"Solution Focused Brief (SFBT)\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 20,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:32:24.769Z",
                    "updated_at": "2017-07-09T06:32:24.769Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:55.983Z",
                    "updated_at": "2017-07-09T06:30:55.983Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 87,
                    "name": "Asperger's Syndrome",
                    "created_at": "2017-07-09T06:32:23.930Z",
                    "updated_at": "2017-07-09T06:32:23.930Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 74,
                    "name": "Chronic Impulsivity",
                    "created_at": "2017-07-09T06:31:09.946Z",
                    "updated_at": "2017-07-09T06:31:09.946Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 59,
                    "name": "Internet Addiction",
                    "created_at": "2017-07-09T06:31:01.877Z",
                    "updated_at": "2017-07-09T06:31:01.877Z"
                },
                {
                    "id": 48,
                    "name": "Narcissistic Personality",
                    "created_at": "2017-07-09T06:31:00.535Z",
                    "updated_at": "2017-07-09T06:31:00.535Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 49,
                    "name": "Sex Therapy",
                    "created_at": "2017-07-09T06:31:00.561Z",
                    "updated_at": "2017-07-09T06:31:00.561Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 54,
                    "name": "Suicidal Ideation",
                    "created_at": "2017-07-09T06:31:00.596Z",
                    "updated_at": "2017-07-09T06:31:00.596Z"
                },
                {
                    "id": 73,
                    "name": "Testing and Evaluation",
                    "created_at": "2017-07-09T06:31:07.630Z",
                    "updated_at": "2017-07-09T06:31:07.630Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 26,
                    "name": "Video Game Addiction",
                    "created_at": "2017-07-09T06:30:57.255Z",
                    "updated_at": "2017-07-09T06:30:57.255Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                }
            ],
            "avg_cost": "$180 - $200",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Mastercard\", \"Paypal\", \"Visa\"]"
        },
        {
            "pt_id": "52188",
            "name": "Gwendolyn Evans",
            "title": "Psychologist, PhD",
            "phone": "(415) 799-7968",
            "street_address": "1 Daniel Burnham Court",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94109",
            "blurb": "Are you anxious or depressed? Struggling with emotional or physical infidelity? Has the passion died in your relationship? Do you want more sex and intimacy? Feeling overwhelmed and undervalued by your partner? Are you lonely in your marriage? Are you struggling with racial or cross-cultural issues? Tired of the same fights with your spouse, your family, your boss, your kids? High-anxiety individuals find me very helpful. I help couples renegotiate to get the relationship you each want. Your partner won't come to counseling? Let me show you how to work around that, too. I work with any two people who want to resolve conflict. I conduct 3-hr intensive sessions for couples in crisis. I am a certified Gottman Method couples therapist. Workshop leader of \"Gottman Art and Science of Love Workshops.\" Certified Intensive Short-term Dynamic Psychotherapist,certified Cognitive-Behavioral therapist. I use neurobehavioral, biofeedback and video feedback to help individuals & couples. Appointments: weekdays, evenings and occasional Saturdays.",
            "yrs_practice": 20,
            "school": "UCLA",
            "yr_graduated": 1992,
            "license_no": "PSY14089",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 4,
                    "name": "Other Racial or Ethnic Background",
                    "created_at": "2017-07-09T06:31:19.404Z",
                    "updated_at": "2017-07-09T06:31:19.404Z"
                },
                {
                    "id": 5,
                    "name": "African-American",
                    "created_at": "2017-07-09T06:32:25.703Z",
                    "updated_at": "2017-07-09T06:32:25.703Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Coaching\", \"Cognitive Behavioral (CBT)\", \"EMDR\", \"Eclectic\", \"Emotionally Focused\", \"Gottman Method\", \"Imago\", \"Motivational Interviewing\", \"Multicultural\", \"Neurofeedback\", \"Psychodynamic\", \"Relational\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 8,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:31:02.778Z",
                    "updated_at": "2017-07-09T06:31:02.778Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 24,
                    "name": "Self-Harming",
                    "created_at": "2017-07-09T06:30:57.243Z",
                    "updated_at": "2017-07-09T06:30:57.243Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                }
            ],
            "avg_cost": "$70 - $150",
            "sliding_scale": "no info provided",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"BlueCross and BlueShield\\n                    \\n                                                                            \\n                    Health Net\\n                    \\n                                                                            \\n                    Magellan Behavioral Health\", \"PacifiCare\\n                    \\n                                                                            \\n                    UnitedHealthcare\\n                    \\n                                                                            \\n                    Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "66390",
            "name": "Judith Anna Nitchie",
            "title": "Marriage & Family Therapist, MA, CMT, MFT",
            "phone": "(415) 799-9266",
            "street_address": "944 Irving Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94122",
            "blurb": "Life with a chronic illness presents unique challenges. Not only do you have your new (and changing) physical reality, but anxiety, depression and overwhelm can show up unannounced. I've been there! The great news is that, with help, we can transform our state of mind and start loving life again. WE can get YOU back on the road to loving your life--let's get to it! Whether an illness is your own or that of someone close to you, adjusting to new diagnoses, changing symptoms and abilities--sometimes invisible symptoms--can challenge the strongest of us. Clients learn new ways to value and manage emotions and to live fully with all that life brings. Interactive and educational workshops address stress and emotions relative to chronic illness and loss for self-help groups and professional organizations; education and training for counselors and therapists who work with clients with chronic illness.",
            "yrs_practice": 10,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 1995,
            "license_no": "MFC36770",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Eclectic\", \"Somatic\"]",
            "target_issues": [
                {
                    "id": 21,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:32:26.688Z",
                    "updated_at": "2017-07-09T06:32:26.688Z"
                },
                {
                    "id": 8,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:31:02.778Z",
                    "updated_at": "2017-07-09T06:31:02.778Z"
                },
                {
                    "id": 12,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:04.517Z",
                    "updated_at": "2017-07-09T06:31:04.517Z"
                }
            ],
            "issues": [
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 88,
                    "name": "chronic medical illness",
                    "created_at": "2017-07-09T06:32:26.788Z",
                    "updated_at": "2017-07-09T06:32:26.788Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                }
            ],
            "avg_cost": "$130 - $160",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "51348",
            "name": "Martin Block",
            "title": "Psychologist, PhD",
            "phone": "(415) 563-3438",
            "street_address": "1736 Divisadero St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94115",
            "blurb": "I am a seasoned psychotherapist with more than 20 years of experience. The majority of my work is with people who are working to overcome anxiety, depression, relationship problems, job stress, addiction, and life transition concerns that are interfering with their ability to live a more satisfying and fulfilling life. Licensed and trained as a clinical psychologist and a MFT, I work with both individuals and couples, using a collaborative and active approach. In addition to my clinical work, I supervise psychiatric residents and graduates students in psychology. I am on the clinical faculty at UC San Francisco, the staff at California Pacific Medical Center and a provider for Brown and Toland Medical Group.",
            "yrs_practice": 20,
            "school": "Wright Institute",
            "yr_graduated": 1988,
            "license_no": "PSY11367",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\", \"Elders (65+)\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Attachment-based\", \"Family / Marital\", \"Family Systems\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 70,
                    "name": "Adoption",
                    "created_at": "2017-07-09T06:31:07.565Z",
                    "updated_at": "2017-07-09T06:31:07.565Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 63,
                    "name": "Infertility",
                    "created_at": "2017-07-09T06:31:02.841Z",
                    "updated_at": "2017-07-09T06:31:02.841Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                }
            ],
            "avg_cost": "$160 - $190",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Aetna\\n                    \\n                                                                            \\n                    Anthem\\n                    \\n                                                                            \\n                    Beacon\\n                    \\n                                                                            \\n                    Beech Street\\n                    \\n                                                                            \\n                    Blue Cross\\n                    \\n                                                                            \\n                    BlueCross and BlueShield\\n                    \\n                                                                            \\n                    ChoiceCare\\n                    \\n                                                                            \\n                    Coventry\\n                    \\n                                                                            \\n                    First Choice Health\\n                    \\n                                                                            \\n                    First Health\", \"GEHA\\n                    \\n                                                                            \\n                    Health Net\\n                    \\n                                                                            \\n                    Integrated Health Plan\\n                    \\n                                                                            \\n                    Interplan\\n                    \\n                                                                            \\n                    Multiplan\\n                    \\n                                                                            \\n                    PHCS\\n                    \\n                                                                            \\n                    ValueOptions\\n                    \\n                                                                            \\n                    WellPoint\\n                    \\n                                                                            \\n                    Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "293726",
            "name": "Tim Cordell",
            "title": "Marriage & Family Therapist, LMFT",
            "phone": "(415) 570-8590",
            "street_address": "3330 Geary Boulevard",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94118",
            "blurb": "I am a psychotherapist working in San Francisco with people who are struggling with anxiety, depression, intimacy, relationship concerns, difficult life transitions, family problems, loss and grief, career stress and creativity challenges. Many people come to my practice reporting they find themselves feeling stuck and overwhelmed, with their usual ways of coping with stress in relationships and at work no longer feeling effective. Psychotherapy can provide a space to mindfully explore what might be contributing to our difficulties and offer an opportunity to better understand aspects of oneself, through an exploration of our thoughts feelings, behaviors, memories and dreams. My approach is based in relational psychodynamic psychotherapy. It holds that healing takes place within the context of a relationship. Our early experiences are important in understanding how we tend to think, feel and act in particular situations. Therapy can help people sort through and see themselves more fully. My style is interactive and warm, but also direct and practical. I create a safe and open space to explore your concerns free of judgment. Finding a therapist who is a good fit is the first step. Please contact me so we can decide if my approach feels right.",
            "yrs_practice": 0,
            "school": "San Francisco State University",
            "yr_graduated": 2010,
            "license_no": "LMFT",
            "license_state": "87233",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Emotionally Focused\", \"Family / Marital\", \"Interpersonal\", \"Psychoanalytic\", \"Psychodynamic\", \"Relational\"]",
            "target_issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 11,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:31:04.505Z",
                    "updated_at": "2017-07-09T06:31:04.505Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 48,
                    "name": "Narcissistic Personality",
                    "created_at": "2017-07-09T06:31:00.535Z",
                    "updated_at": "2017-07-09T06:31:00.535Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 33,
                    "name": "Thinking Disorders",
                    "created_at": "2017-07-09T06:30:58.450Z",
                    "updated_at": "2017-07-09T06:30:58.450Z"
                }
            ],
            "avg_cost": "$120 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "45747",
            "name": "Lucy Colvin",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(650) 918-5910",
            "street_address": "1801 Bush Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94109",
            "blurb": "Are you feeling stuck? I use a holistic mind/body approach to therapy to help you loosen those stuck places, and to feel confident and more fully at ease with yourself and others. Sometimes anxiety and worries can become obstacles to achieving your goals, limiting your experience and potential. You can develop tools to use to get these stuck places moving again and to live with less anxiety. We will work together to help you identify triggers and fears and to understand and disentangle from familial patterns to enable you to experience successful meaningful relationships and joy in your life. We have many resources within us that become neglected and forgotten while other unresolved issues take center stage. I use a holistic strengths based approach that draws from mindfulness, cognitive behavioral therapy, body-awareness, creative, and psychodynamic traditions to help unlock hidden places that prevent you from living a satisfying life. My training includes a specialty in mind/body therapy. I have heard many people say, \"I have talked about this for a long time but nothing ever changes.\" We can work together using verbal as well as mindfulness and sensory awareness to help experience shifts at a deeper level.",
            "yrs_practice": 15,
            "school": "California Institute of Integral Studies",
            "yr_graduated": 1997,
            "license_no": "MFC38099",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Children (6 to 10)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\", \"Family\", \"Group\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Relational\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 22,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:32:31.813Z",
                    "updated_at": "2017-07-09T06:32:31.813Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 89,
                    "name": "Developmental Disorders",
                    "created_at": "2017-07-09T06:32:31.833Z",
                    "updated_at": "2017-07-09T06:32:31.833Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 77,
                    "name": "Psychosis",
                    "created_at": "2017-07-09T06:31:15.932Z",
                    "updated_at": "2017-07-09T06:31:15.932Z"
                },
                {
                    "id": 33,
                    "name": "Thinking Disorders",
                    "created_at": "2017-07-09T06:30:58.450Z",
                    "updated_at": "2017-07-09T06:30:58.450Z"
                }
            ],
            "avg_cost": "$120",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Aetna\\n                    \\n                                                                            \\n                    Blue Care Network\\n                    \\n                                                                            \\n                    Blue Shield\\n                    \\n                                                                            \\n                    Blue shield PPO\\n                    \\n                                                                            \\n                    Healthy San Francisco\", \"MHN\\n                    \\n                                                                            \\n                    Magellan Behavioral Health\\n                    \\n                                                                            \\n                    MediCal\\n                    \\n                                                                            \\n                    Out of network PPO\\n                    \\n                                                                            \\n                    Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "271719",
            "name": "Nicole Chung",
            "title": "Psychologist, PsyD",
            "phone": "(415) 548-2763",
            "street_address": "870 Market Street, Suite 1046",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94102",
            "blurb": "Do you feel like life's obstacles have become too overwhelming? If so, you're not alone. I can help you overcome such obstacles. Through psychotherapy, I help individuals live happier, healthier and more productive lives. Breaking through your obstacles begins with you. Contact me and we start your journey toward wellness. I see individuals dealing with a wide variety of struggles ranging from depression, anxiety and trauma to trouble with relationships, multicultural issues and difficult life transitions. Even if don't see your particular issue listed, let's discuss your needs and goals for therapy, and I can refer if necessary.",
            "yrs_practice": 0,
            "school": "none provided",
            "yr_graduated": 0,
            "license_no": "PSY27721",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [],
            "treatment_modalities": "[\"Individuals\"]",
            "treatment_orientation": "[\"Eclectic\", \"Interpersonal\", \"Motivational Interviewing\", \"Psychodynamic\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 90,
                    "name": "Multicultural issues",
                    "created_at": "2017-07-09T06:32:32.678Z",
                    "updated_at": "2017-07-09T06:32:32.678Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 86,
                    "name": "Racial Identity",
                    "created_at": "2017-07-09T06:31:24.859Z",
                    "updated_at": "2017-07-09T06:31:24.859Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                }
            ],
            "avg_cost": "$90 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Anthem\\n                    \\n                                                                            \\n                    Beacon\", \"MHN\\n                    \\n                                                                            \\n                    Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
        {
            "pt_id": "198137",
            "name": "Sveta Alshvang",
            "title": "Psychologist, PsyD, MBA, MA",
            "phone": "(650) 215-6194",
            "street_address": "3329 Sacramento St",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94118",
            "blurb": "Are you here because you struggle with painful emotions and sometimes feel out of control? You may feel angry, worried, helpless, sad, or lonely. Perhaps, you have been experiencing excessive stress trying to manage family or financial issues, a relationship, or a demanding career. I specialize in stress and anger management, trauma treatment, and mood problems often associated with depression and Bipolar Disorder. My other specialty is aging and issues that often surface when we get older. I work with my senior clients through issues such as anxiety, depression, grief, chronic pain, family problems, or re-discovery of life meaning. My style in therapy has been commented on as warm, caring, approachable, and, yet, direct. Before becoming a psychologist, I was a career coach, teacher, scientist, and a business manager. I lived in other countries. Many clients find my experience with career transitions, corporate environment, and diversity helpful and relevant. Together, we will work on improvements in managing your stress level, emotions, relationships, and career. I offer weekend, morning, and evening hours, and videoconferencing for your convenience. Please email (this is preferable) or call with any questions, including clarification on my practice and accepted insurance, or to schedule an appointment.",
            "yrs_practice": 7,
            "school": "The Wright Institute",
            "yr_graduated": 0,
            "license_no": "PSY26385",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 3,
                    "name": "Asian",
                    "created_at": "2017-07-09T06:31:15.731Z",
                    "updated_at": "2017-07-09T06:31:15.731Z"
                },
                {
                    "id": 4,
                    "name": "Other Racial or Ethnic Background",
                    "created_at": "2017-07-09T06:31:19.404Z",
                    "updated_at": "2017-07-09T06:31:19.404Z"
                }
            ],
            "client_languages": [
                {
                    "id": 6,
                    "name": "Russian",
                    "created_at": "2017-07-09T06:32:33.953Z",
                    "updated_at": "2017-07-09T06:32:33.953Z"
                }
            ],
            "client_ages": "[\"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 7,
                    "name": "Veterans",
                    "created_at": "2017-07-09T06:31:00.383Z",
                    "updated_at": "2017-07-09T06:31:00.383Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\"]",
            "treatment_orientation": "[\"Acceptance and Commitment Therapy (ACT)\", \"Coaching\", \"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"EMDR\", \"Existential\", \"Family / Marital\", \"Humanistic\", \"Hypnotherapy\", \"Interpersonal\", \"Mindfulness-based (MBCT)\", \"Motivational Interviewing\", \"Multicultural\", \"Psychodynamic\", \"Psychological Testing and Evaluation\", \"Solution Focused Brief (SFBT)\", \"Somatic\", \"Trauma Focused\"]",
            "target_issues": [
                {
                    "id": 23,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:32:33.993Z",
                    "updated_at": "2017-07-09T06:32:33.993Z"
                },
                {
                    "id": 4,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:59.314Z",
                    "updated_at": "2017-07-09T06:30:59.314Z"
                },
                {
                    "id": 24,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:32:34.009Z",
                    "updated_at": "2017-07-09T06:32:34.009Z"
                }
            ],
            "issues": [
                {
                    "id": 67,
                    "name": "Anger Management",
                    "created_at": "2017-07-09T06:31:04.536Z",
                    "updated_at": "2017-07-09T06:31:04.536Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 30,
                    "name": "Elderly Persons Disorders",
                    "created_at": "2017-07-09T06:30:58.427Z",
                    "updated_at": "2017-07-09T06:30:58.427Z"
                },
                {
                    "id": 34,
                    "name": "ADHD",
                    "created_at": "2017-07-09T06:30:59.324Z",
                    "updated_at": "2017-07-09T06:30:59.324Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 40,
                    "name": "Borderline Personality",
                    "created_at": "2017-07-09T06:31:00.453Z",
                    "updated_at": "2017-07-09T06:31:00.453Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 74,
                    "name": "Chronic Impulsivity",
                    "created_at": "2017-07-09T06:31:09.946Z",
                    "updated_at": "2017-07-09T06:31:09.946Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 47,
                    "name": "Men's Issues",
                    "created_at": "2017-07-09T06:31:00.528Z",
                    "updated_at": "2017-07-09T06:31:00.528Z"
                },
                {
                    "id": 48,
                    "name": "Narcissistic Personality",
                    "created_at": "2017-07-09T06:31:00.535Z",
                    "updated_at": "2017-07-09T06:31:00.535Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 50,
                    "name": "Sexual Abuse",
                    "created_at": "2017-07-09T06:31:00.566Z",
                    "updated_at": "2017-07-09T06:31:00.566Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 91,
                    "name": "Stress Reduction. Minority issues",
                    "created_at": "2017-07-09T06:32:34.148Z",
                    "updated_at": "2017-07-09T06:32:34.148Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 73,
                    "name": "Testing and Evaluation",
                    "created_at": "2017-07-09T06:31:07.630Z",
                    "updated_at": "2017-07-09T06:31:07.630Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 92,
                    "name": "Traumatic Brain Injury",
                    "created_at": "2017-07-09T06:32:34.170Z",
                    "updated_at": "2017-07-09T06:32:34.170Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 31,
                    "name": "Impulse Control Disorders",
                    "created_at": "2017-07-09T06:30:58.434Z",
                    "updated_at": "2017-07-09T06:30:58.434Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$130 - $180",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Aetna PPO OON\\n                    \\n                                                                            \\n                    Anthem\\n                    \\n                                                                            \\n                    Blue Cross\\n                    \\n                                                                            \\n                    Blue Shield of California PPO OON\\n                    \\n                                                                            \\n                    BlueCross and BlueShield\\n                    \\n                                                                            \\n                    California Victim Compensation (CalVCP)\\n                    \\n                                                                            \\n                    Cigna PPO OON\", \"Flexible Saving Account\\n                    \\n                                                                            \\n                    Humana\\n                    \\n                                                                            \\n                    MHN\\n                    \\n                                                                            \\n                    Medicare\\n                    \\n                                                                            \\n                    TRICARE\\n                    \\n                                                                            \\n                    We'll do paperwork for OON reimbursement for you\\n                    \\n                                                                            \\n                    Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\", \"Paypal\"]"
        },
        {
            "pt_id": "129911",
            "name": "Carolina Robb",
            "title": "Marriage & Family Therapist, PhD, LMFT",
            "phone": "(415) 264-2466",
            "street_address": "1102 Sanchez Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94114",
            "blurb": "I am here for you, weather it be heartbreak, death of a loved one, problems at work, or with family relationships. Life just isn't going the way you hoped. I consider \"problems\" an indicator of new development, or individual development, what Jung calls individuation. A problem of some sort be it anger management, substance abuse or relationship issues is a \"call\" to look deeper in to what is going on in your life. It is an opportunity in life, not a failure. I make things easy for you with weekend hours. Please call, email does not work so well. I stay current... I am currently (2016) in the analyst training program in Santa Fe New Mexico. I did a Pacifica extension at Jung Institute in Switzerland- 2013, which included over 20 presentations by Jungian Analysts. I have been an analyst in training at the SF Jung Institute (2014-15). Please call, don't email Early childhood Trauma is more common than you think. If you have anxiety, depression, or addictions these symptoms are often due to childhood trauma. We usually think of one traumatic event that alters the course of a life, however recent research has shown that cumulative trauma or \"a million cuts\" can often be more damaging.",
            "yrs_practice": 20,
            "school": "Saybrook PhD(c); Summit PhD",
            "yr_graduated": 1998,
            "license_no": "MFC13514",
            "license_state": "California",
            "client_ethnicities": [
                {
                    "id": 4,
                    "name": "Other Racial or Ethnic Background",
                    "created_at": "2017-07-09T06:31:19.404Z",
                    "updated_at": "2017-07-09T06:31:19.404Z"
                }
            ],
            "client_languages": [],
            "client_ages": "[\"Adults\"]",
            "client_categories": [
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Cognitive Behavioral (CBT)\", \"Family / Marital\", \"Family Systems\", \"Integrative\", \"Jungian\", \"Mindfulness-based (MBCT)\", \"Relational\", \"Somatic\"]",
            "target_issues": [
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:55.997Z",
                    "updated_at": "2017-07-09T06:30:55.997Z"
                }
            ],
            "issues": [
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 17,
                    "name": "Divorce",
                    "created_at": "2017-07-09T06:30:57.192Z",
                    "updated_at": "2017-07-09T06:30:57.192Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 93,
                    "name": "Families",
                    "created_at": "2017-07-09T06:32:35.051Z",
                    "updated_at": "2017-07-09T06:32:35.051Z"
                },
                {
                    "id": 18,
                    "name": "Family Conflict",
                    "created_at": "2017-07-09T06:30:57.198Z",
                    "updated_at": "2017-07-09T06:30:57.198Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 75,
                    "name": "Infidelity",
                    "created_at": "2017-07-09T06:31:09.957Z",
                    "updated_at": "2017-07-09T06:31:09.957Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                }
            ],
            "avg_cost": "$80 - $150",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"Optum\", \"Out of Network\"]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        },
        {
            "pt_id": "143606",
            "name": "Maureen Fiorelli",
            "title": "Marriage & Family Therapist, MFT",
            "phone": "(415) 969-3981",
            "street_address": "582 Market Street",
            "locality": "San Francisco",
            "state": "California",
            "zipcode": "94104",
            "blurb": "Have you been feeling depressed, anxious, overwhelmed and alone? Do you find that your mind and emotions control you? Are you stuck in repetitive patterns? I work with people who suffer with these symptoms and I have over 15 years of experience treating depression, addictions, anxiety and eating disorders. I have a background in art and have a warm, engaging (rather than silent) style of interacting. My experience includes work at 2 Bay Area eating disorder centers, work as a Mental Health Assessor for UCSF, teaching graduate psychology classes, crisis work for Mental Health Association of NYC & supervision of interns. I teach clients to use meditation & mindfulness tools and work from a holistic view addressing mind, body and spirit. Together, we will work to help you find new meaning and purpose in life. Additionally, I work with couples struggling in their relationship. Also offering creativity coaching for artists, writers, musicians. Finding the right therapist with whom you feel the most comfortable and connected is essential, and therefore, I offer an initial consultation at a reduced fee. Please visit my website www.mfiorelli.com for more information about my background.",
            "yrs_practice": 15,
            "school": "New College of California",
            "yr_graduated": 2001,
            "license_no": "MFC43980",
            "license_state": "California",
            "client_ethnicities": [],
            "client_languages": [],
            "client_ages": "[\"Preteens / Tweens (11 to 13)\", \"Adolescents / Teenagers (14 to 19)\", \"Adults\", \"Elders (65+)\"]",
            "client_categories": [
                {
                    "id": 1,
                    "name": "Bisexual Clients",
                    "created_at": "2017-07-09T06:30:58.304Z",
                    "updated_at": "2017-07-09T06:30:58.304Z"
                },
                {
                    "id": 8,
                    "name": "Cancer",
                    "created_at": "2017-07-09T06:31:05.310Z",
                    "updated_at": "2017-07-09T06:31:05.310Z"
                },
                {
                    "id": 2,
                    "name": "Gay Clients",
                    "created_at": "2017-07-09T06:30:58.333Z",
                    "updated_at": "2017-07-09T06:30:58.333Z"
                },
                {
                    "id": 5,
                    "name": "HIV / AIDS Clients",
                    "created_at": "2017-07-09T06:31:00.363Z",
                    "updated_at": "2017-07-09T06:31:00.363Z"
                },
                {
                    "id": 3,
                    "name": "Heterosexual Clients",
                    "created_at": "2017-07-09T06:30:58.345Z",
                    "updated_at": "2017-07-09T06:30:58.345Z"
                },
                {
                    "id": 4,
                    "name": "Lesbian Clients",
                    "created_at": "2017-07-09T06:30:58.352Z",
                    "updated_at": "2017-07-09T06:30:58.352Z"
                },
                {
                    "id": 6,
                    "name": "Transgender Clients",
                    "created_at": "2017-07-09T06:31:00.377Z",
                    "updated_at": "2017-07-09T06:31:00.377Z"
                },
                {
                    "id": 7,
                    "name": "Veterans",
                    "created_at": "2017-07-09T06:31:00.383Z",
                    "updated_at": "2017-07-09T06:31:00.383Z"
                }
            ],
            "treatment_modalities": "[\"Individuals\", \"Couples\", \"Family\"]",
            "treatment_orientation": "[\"Coaching\", \"Cognitive Behavioral (CBT)\", \"Dialectical (DBT)\", \"Existential\", \"Humanistic\", \"Integrative\", \"Mindfulness-based (MBCT)\", \"Psychodynamic\", \"Transpersonal\"]",
            "target_issues": [
                {
                    "id": 13,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:31:05.334Z",
                    "updated_at": "2017-07-09T06:31:05.334Z"
                },
                {
                    "id": 22,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:32:31.813Z",
                    "updated_at": "2017-07-09T06:32:31.813Z"
                },
                {
                    "id": 5,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:31:00.389Z",
                    "updated_at": "2017-07-09T06:31:00.389Z"
                }
            ],
            "issues": [
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 35,
                    "name": "Eating Disorders",
                    "created_at": "2017-07-09T06:30:59.342Z",
                    "updated_at": "2017-07-09T06:30:59.342Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 38,
                    "name": "Alcohol Abuse",
                    "created_at": "2017-07-09T06:31:00.428Z",
                    "updated_at": "2017-07-09T06:31:00.428Z"
                },
                {
                    "id": 15,
                    "name": "Behavioral Issues",
                    "created_at": "2017-07-09T06:30:57.173Z",
                    "updated_at": "2017-07-09T06:30:57.173Z"
                },
                {
                    "id": 28,
                    "name": "Bipolar Disorder",
                    "created_at": "2017-07-09T06:30:58.394Z",
                    "updated_at": "2017-07-09T06:30:58.394Z"
                },
                {
                    "id": 94,
                    "name": "Body Image issues",
                    "created_at": "2017-07-09T06:32:36.189Z",
                    "updated_at": "2017-07-09T06:32:36.189Z"
                },
                {
                    "id": 41,
                    "name": "Career Counseling",
                    "created_at": "2017-07-09T06:31:00.461Z",
                    "updated_at": "2017-07-09T06:31:00.461Z"
                },
                {
                    "id": 16,
                    "name": "Child or Adolescent",
                    "created_at": "2017-07-09T06:30:57.181Z",
                    "updated_at": "2017-07-09T06:30:57.181Z"
                },
                {
                    "id": 85,
                    "name": "Chronic Illness",
                    "created_at": "2017-07-09T06:31:24.845Z",
                    "updated_at": "2017-07-09T06:31:24.845Z"
                },
                {
                    "id": 42,
                    "name": "Chronic Pain",
                    "created_at": "2017-07-09T06:31:00.468Z",
                    "updated_at": "2017-07-09T06:31:00.468Z"
                },
                {
                    "id": 43,
                    "name": "Codependency",
                    "created_at": "2017-07-09T06:31:00.474Z",
                    "updated_at": "2017-07-09T06:31:00.474Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 44,
                    "name": "Emotional Disturbance",
                    "created_at": "2017-07-09T06:31:00.500Z",
                    "updated_at": "2017-07-09T06:31:00.500Z"
                },
                {
                    "id": 19,
                    "name": "Grief",
                    "created_at": "2017-07-09T06:30:57.204Z",
                    "updated_at": "2017-07-09T06:30:57.204Z"
                },
                {
                    "id": 60,
                    "name": "Life Coaching",
                    "created_at": "2017-07-09T06:31:01.883Z",
                    "updated_at": "2017-07-09T06:31:01.883Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 45,
                    "name": "Marital and Premarital",
                    "created_at": "2017-07-09T06:31:00.514Z",
                    "updated_at": "2017-07-09T06:31:00.514Z"
                },
                {
                    "id": 72,
                    "name": "Obsessive-Compulsive (OCD)",
                    "created_at": "2017-07-09T06:31:07.607Z",
                    "updated_at": "2017-07-09T06:31:07.607Z"
                },
                {
                    "id": 20,
                    "name": "Parenting",
                    "created_at": "2017-07-09T06:30:57.210Z",
                    "updated_at": "2017-07-09T06:30:57.210Z"
                },
                {
                    "id": 21,
                    "name": "Peer Relationships",
                    "created_at": "2017-07-09T06:30:57.220Z",
                    "updated_at": "2017-07-09T06:30:57.220Z"
                },
                {
                    "id": 68,
                    "name": "Pregnancy, Prenatal, Postpartum",
                    "created_at": "2017-07-09T06:31:05.465Z",
                    "updated_at": "2017-07-09T06:31:05.465Z"
                },
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 23,
                    "name": "Self Esteem",
                    "created_at": "2017-07-09T06:30:57.238Z",
                    "updated_at": "2017-07-09T06:30:57.238Z"
                },
                {
                    "id": 52,
                    "name": "Sleep or Insomnia",
                    "created_at": "2017-07-09T06:31:00.577Z",
                    "updated_at": "2017-07-09T06:31:00.577Z"
                },
                {
                    "id": 66,
                    "name": "Spirituality",
                    "created_at": "2017-07-09T06:31:03.639Z",
                    "updated_at": "2017-07-09T06:31:03.639Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 55,
                    "name": "Transgender",
                    "created_at": "2017-07-09T06:31:00.602Z",
                    "updated_at": "2017-07-09T06:31:00.602Z"
                },
                {
                    "id": 25,
                    "name": "Trauma and PTSD",
                    "created_at": "2017-07-09T06:30:57.249Z",
                    "updated_at": "2017-07-09T06:30:57.249Z"
                },
                {
                    "id": 62,
                    "name": "Weight Loss",
                    "created_at": "2017-07-09T06:31:01.939Z",
                    "updated_at": "2017-07-09T06:31:01.939Z"
                },
                {
                    "id": 56,
                    "name": "Women's Issues",
                    "created_at": "2017-07-09T06:31:00.612Z",
                    "updated_at": "2017-07-09T06:31:00.612Z"
                },
                {
                    "id": 58,
                    "name": "Dissociative Disorders",
                    "created_at": "2017-07-09T06:31:00.625Z",
                    "updated_at": "2017-07-09T06:31:00.625Z"
                },
                {
                    "id": 27,
                    "name": "Mood Disorders",
                    "created_at": "2017-07-09T06:30:57.261Z",
                    "updated_at": "2017-07-09T06:30:57.261Z"
                },
                {
                    "id": 32,
                    "name": "Personality Disorders",
                    "created_at": "2017-07-09T06:30:58.444Z",
                    "updated_at": "2017-07-09T06:30:58.444Z"
                },
                {
                    "id": 33,
                    "name": "Thinking Disorders",
                    "created_at": "2017-07-09T06:30:58.450Z",
                    "updated_at": "2017-07-09T06:30:58.450Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$130 - $180",
            "sliding_scale": "Yes",
            "takes_insurance": "Yes",
            "accepted_insurance": "[\"All PPO- statement for reimbursement\", \"Out of Network\"]",
            "accepted_payments": "[\"American Express\", \"Cash\", \"Check\", \"Discover\", \"Health Savings Account\", \"Mastercard\", \"Visa\"]"
        },
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
                    "created_at": "2017-07-09T06:30:55.932Z",
                    "updated_at": "2017-07-09T06:30:55.932Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:55.983Z",
                    "updated_at": "2017-07-09T06:30:55.983Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:55.997Z",
                    "updated_at": "2017-07-09T06:30:55.997Z"
                }
            ],
            "issues": [
                {
                    "id": 1,
                    "name": "Relationship Issues",
                    "created_at": "2017-07-09T06:30:56.015Z",
                    "updated_at": "2017-07-09T06:30:56.015Z"
                },
                {
                    "id": 2,
                    "name": "Coping Skills",
                    "created_at": "2017-07-09T06:30:56.047Z",
                    "updated_at": "2017-07-09T06:30:56.047Z"
                },
                {
                    "id": 3,
                    "name": "Addiction",
                    "created_at": "2017-07-09T06:30:56.067Z",
                    "updated_at": "2017-07-09T06:30:56.067Z"
                },
                {
                    "id": 4,
                    "name": "Anxiety",
                    "created_at": "2017-07-09T06:30:56.076Z",
                    "updated_at": "2017-07-09T06:30:56.076Z"
                },
                {
                    "id": 5,
                    "name": "Depression",
                    "created_at": "2017-07-09T06:30:56.082Z",
                    "updated_at": "2017-07-09T06:30:56.082Z"
                },
                {
                    "id": 6,
                    "name": "Domestic Abuse",
                    "created_at": "2017-07-09T06:30:56.088Z",
                    "updated_at": "2017-07-09T06:30:56.088Z"
                },
                {
                    "id": 7,
                    "name": "Domestic Violence",
                    "created_at": "2017-07-09T06:30:56.094Z",
                    "updated_at": "2017-07-09T06:30:56.094Z"
                },
                {
                    "id": 8,
                    "name": "Drug Abuse",
                    "created_at": "2017-07-09T06:30:56.101Z",
                    "updated_at": "2017-07-09T06:30:56.101Z"
                },
                {
                    "id": 9,
                    "name": "Intellectual Disability",
                    "created_at": "2017-07-09T06:30:56.106Z",
                    "updated_at": "2017-07-09T06:30:56.106Z"
                },
                {
                    "id": 10,
                    "name": "Life Transitions",
                    "created_at": "2017-07-09T06:30:56.112Z",
                    "updated_at": "2017-07-09T06:30:56.112Z"
                },
                {
                    "id": 11,
                    "name": "Substance Abuse",
                    "created_at": "2017-07-09T06:30:56.118Z",
                    "updated_at": "2017-07-09T06:30:56.118Z"
                },
                {
                    "id": 12,
                    "name": "Bisexual",
                    "created_at": "2017-07-09T06:30:56.124Z",
                    "updated_at": "2017-07-09T06:30:56.124Z"
                },
                {
                    "id": 13,
                    "name": "Gay",
                    "created_at": "2017-07-09T06:30:56.130Z",
                    "updated_at": "2017-07-09T06:30:56.130Z"
                },
                {
                    "id": 14,
                    "name": "Lesbian",
                    "created_at": "2017-07-09T06:30:56.138Z",
                    "updated_at": "2017-07-09T06:30:56.138Z"
                }
            ],
            "avg_cost": "$110 - $120",
            "sliding_scale": "Yes",
            "takes_insurance": "no info provided",
            "accepted_insurance": "[]",
            "accepted_payments": "[\"Cash\", \"Check\"]"
        }
    ]
}
    end 
    end
end