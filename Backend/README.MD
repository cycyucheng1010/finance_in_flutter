# Backend README
## Django sqlite admin login 
* root:root
## curl with api example:
* add user
```sh
curl -XPOST "http://172.104.66.29:9487/user/" -H "Content-Type: application/json" -d '{"account":"lala","password":"wuwu","email":"rick20001010@gmail.com"}'
curl -XGET "http://172.104.66.29:9487/user/" -H "Content-Type: application/json" -d '{"account":"lala"}'
curl -XPUT "http://172.104.66.29:9487/user/" -H "Content-Type: application/json" -d '{"account":"lala","password":"test"}'
curl -XDELETE "http://172.104.66.29:9487/user/" -H "Content-Type: application/json" -d '{"account":"lala"}' -uroot:root
```
