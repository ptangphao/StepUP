Organization.create(
	name: "DBC",
	contact: "some contact",
	phone: "xxx-xxx-xxxx",
	email: "some@email.com",
	notes: "some notes are written here",
	username: "DBC",
	image_url: "https://image.flaticon.com/teams/slug/freepik.jpg",
	password: "password",
	location: "San Francisco, CA")

Organization.create(
	name: "Dev Bootcamp",
	contact: "some contact",
	phone: "xxx-xxx-xxxx",
	email: "some1@email.com",
	notes: "some notes are written here about org",
	username: "Dev Bootcamp",
	image_url: "https://image.flaticon.com/teams/slug/freepik.jpg",
	password: "password",
	location: "San Francisco, CA")

first = ["first1", "first2", "first3", "first4", "first5"]
last = ["last1", "last2", "last3", "last4", "last5"]
age = [11, 22, 33, 44, 55]
sex = "mfmff".chars
org = [1, 2, 2, 2, 1]
lang = ["english", "english", "spanish", "french", "spanish"]

Issue.create(name: "Depression")
Issue.create(name: "Anxiety")
Issue.create(name: "Sexual Assault")
Issue.create(name: "Domestic Violence")
Issue.create(name: "Health")

for i in 0..4 do 
	Patient.create(
		first_name: first[i], 
		last_name: last[i], 
		age: age[i],
		sex: sex[i],
		organization_id: org[i],
		zip_code: 94607,
		language: lang[i],
		notes: "Some notes about patient",
		location: "San Francisco, CA")
		num = i + 1
		PatientIssue.create(patient_id: num, issue_id: num)
end
