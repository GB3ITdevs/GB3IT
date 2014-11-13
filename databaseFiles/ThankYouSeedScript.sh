echo .
echo Reset the database


echo .
echo .
echo Please restart the rails server
echo .
echo .
echo Create 3 Communities
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/communities -d '{"community": {"postalCode":"9001", "communityName":"TestCom1"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/communities -d '{"community": {"postalCode":"9002", "communityName":"TestCom2"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/communities -d '{"community": {"postalCode":"9003", "communityName":"TestCom3"}}'
echo .
echo .
echo Create 2 Projects Per Community
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/projects -d '{"project": {"postalCode":"9001", "applicantName":"TestApp1", "projectName":"TestProject1", "projectBlurb":"some project info", "fundsRequested":"100", "useOfFunds":"help people"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/projects -d '{"project": {"postalCode":"9001", "applicantName":"TestApp2", "projectName":"TestProject2", "projectBlurb":"some project info", "fundsRequested":"100", "useOfFunds":"help people"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/projects -d '{"project": {"postalCode":"9002", "applicantName":"TestApp3", "projectName":"TestProject3", "projectBlurb":"some project info", "fundsRequested":"200", "useOfFunds":"help people"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/projects -d '{"project": {"postalCode":"9002", "applicantName":"TestApp4", "projectName":"TestProject4", "projectBlurb":"some project info", "fundsRequested":"300", "useOfFunds":"help people"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/projects -d '{"project": {"postalCode":"9003", "applicantName":"TestApp5", "projectName":"TestProject5", "projectBlurb":"some project info", "fundsRequested":"400", "useOfFunds":"help people"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/projects -d '{"project": {"postalCode":"9003", "applicantName":"TestApp6", "projectName":"TestProject6", "projectBlurb":"some project info", "fundsRequested":"100", "useOfFunds":"help people"}}'
echo .
echo .
echo Create 3 Project Websites
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/project_websites -d '{"project_website": {"projectId":"01", "siteAddress":"www.test1.com"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/project_websites -d '{"project_website": {"projectId":"04", "siteAddress":"www.test2.com"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/project_websites -d '{"project_website": {"projectId":"05", "siteAddress":"www.test3.com"}}'
echo .
echo .
echo Create 6 Contact Information Tables
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/contact_infos -d '{"contact_info": {"postalCode":"9001", "suburb":"North Dunedin", "city":"Dunedin", "streetNumber":"86", "street":"Forth Street"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/contact_infos -d '{"contact_info": {"postalCode":"9001", "suburb":"North Dunedin", "city":"Dunedin", "streetNumber":"9", "street":"Sixth Street"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/contact_infos -d '{"contact_info": {"postalCode":"9002", "suburb":"South Dunedin", "city":"Dunedin", "streetNumber":"21", "street":"Third Street"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/contact_infos -d '{"contact_info": {"postalCode":"9002", "suburb":"South Dunedin", "city":"Dunedin", "streetNumber":"115", "street":"Fifth Street"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/contact_infos -d '{"contact_info": {"postalCode":"9003", "suburb":"Pine Hill", "city":"Dunedin", "streetNumber":"62", "street":"First Street"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/contact_infos -d '{"contact_info": {"postalCode":"9003", "suburb":"Pine Hill", "city":"Dunedin", "streetNumber":"89", "street":"Second Street"}}'
echo .
echo .
echo Create 6 Peoples Information Tables
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/person_infos -d '{"person_info": {"firstName":"Test1", "lastName":"User1", "password":"test", "email":"user@1.com"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/person_infos -d '{"person_info": {"firstName":"Test2", "lastName":"User2", "password":"test", "email":"user@2.com"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/person_infos -d '{"person_info": {"firstName":"Test3", "lastName":"User3", "password":"test", "email":"user@3.com"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/person_infos -d '{"person_info": {"firstName":"Test4", "lastName":"Admin1", "password":"test", "email":"admin@1.com"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/person_infos -d '{"person_info": {"firstName":"Test5", "lastName":"Admin2", "password":"test", "email":"admin@2.com"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/person_infos -d '{"person_info": {"firstName":"Test6", "lastName":"Admin3", "password":"test", "email":"admin@3.com"}}'
echo .
echo .
echo Create 6 Phone Numbers
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/phone_numbers -d '{"phone_number": {"infoId":"01", "phoneNumber":"4770001"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/phone_numbers -d '{"phone_number": {"infoId":"02", "phoneNumber":"4770002"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/phone_numbers -d '{"phone_number": {"infoId":"03", "phoneNumber":"4770003"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/phone_numbers -d '{"phone_number": {"infoId":"04", "phoneNumber":"4770004"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/phone_numbers -d '{"phone_number": {"infoId":"05", "phoneNumber":"4770005"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/phone_numbers -d '{"phone_number": {"infoId":"06", "phoneNumber":"4770006"}}'
echo .
echo .
echo Create 3 Admins
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/admins -d '{"admin": {"infoId":"03"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/admins -d '{"admin": {"infoId":"04"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/admins -d '{"admin": {"infoId":"05"}}'
echo .
echo .
echo Create 3 Users
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/users -d '{"user": {"infoId":"01", "contactId":"01"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/users -d '{"user": {"infoId":"02", "contactId":"02"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/users -d '{"user": {"infoId":"03", "contactId":"03"}}'
echo .
echo .
echo Create 1 Comment Per Person
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/comments -d '{"comment": {"infoId":"01", "postalCode":"9001", "comment":"Test Comment1!"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/comments -d '{"comment": {"infoId":"02", "postalCode":"9001", "comment":"Test Comment2!"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/comments -d '{"comment": {"infoId":"03", "postalCode":"9002", "comment":"Test Comment3!"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/comments -d '{"comment": {"infoId":"04", "postalCode":"9002", "comment":"Test Comment4!"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/comments -d '{"comment": {"infoId":"05", "postalCode":"9003", "comment":"Test Comment5!"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/comments -d '{"comment": {"infoId":"06", "postalCode":"9003", "comment":"Test Comment6!"}}'
echo .
echo .
echo Create 1 Rating Per User
echo .
echo .
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/ratings -d '{"rating": {"projectId":"01", "infoId":"01", "rating":"7"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/ratings -d '{"rating": {"projectId":"02", "infoId":"02", "rating":"4"}}'
curl -i -H "Content-type: application/json" -X POST http://gb3it.pickworth.info:3000/ratings -d '{"rating": {"projectId":"03", "infoId":"03", "rating":"6"}}'
echo .
echo .
echo Script is Finished Running
