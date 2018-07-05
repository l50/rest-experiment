# rest-experiment

Quick proof-of-concept loosely based on the information found in this article: https://read.acloud.guru/building-a-highly-scalable-resilient-rest-api-with-terraform-go-and-aws-94377b90fd24

Essentially, this will stand up an Ubuntu 16.04 instance in AWS which is running some go code in a docker container. This go code has an endpoint, ```/```, which will simply display ```Hello World```.

## To install and run:
1. Clone into this repo
2. Install terraform
3. Run ```terraform init``` 
4. Add your AWS key pair name to ```main.tf``` in the ```<PUT YOUR KEY NAME HERE>``` placeholder
5. Run ```terraform apply```
6. Find the basic rest endpoint running at the public hostname associated with the created EC2 instance

## To tear it down:
```terraform destroy```

## Something Missing?
Let me know: jayson.e.grace@gmail.com

## License
MIT
