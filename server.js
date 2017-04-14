//
// # SimpleServer
//
// A simple chat server using Socket.IO, Express, and Async.
//
var http = require('http');
var path = require('path');

var express = require('express');
var fs = require('fs');
var request = require('request');
var cheerio = require('cheerio');
var app = express();
var mysql = require('mysql');

var coursesInfoArray=new Array();

function getConnection() {
	var connection = mysql.createConnection({
		host : 'localhost',
		user : 'root',
		password : 'Putts:*<3',
		database : 'uni_friend',
		port : 3306
	});
	return connection;
}

function fetchData(callback, sqlQuery) {
	//console.log("\nSQL Query::" + sqlQuery);
	var connection = getConnection();
	connection.query(sqlQuery, function(err, rows, fields) {
		if (err) {
			console.log("ERROR: " + err.message);
		} else { // return err or result
			console.log("DB Results:" + rows);
			callback(err, rows);
		}
	});
	console.log("\nConnection closed..");
	connection.end();
}

function escapeSymbol(inputString,char){
	var lenquote=(inputString.split(char).length - 1);
	for(var q=0; q<lenquote;q++){
		inputString=inputString.replace(char,"");
	}
	//console.log(inputString);
	return inputString;
}

function getDescription(number, name, department, program, url){
	request(url, function(error, response, html) {
		/*console.log("number in function: "+number);
		console.log("name in function: "+name);
		console.log("dept in function: "+department);
		console.log("prog in function: "+program);
		console.log("url in function: "+url);*/

		if (!error) {
			var $ = cheerio.load(html);
			var div= $('.info_wrapper');
			var desp;
			//var len=div.children().length;
			desp=div.children().eq(2);
			//console.log("desp: "+desp.text().replace('Description','').trim());
			desp=desp.text().replace('Description','').trim();
			
			desp=escapeSymbol(desp,"'");
			name=escapeSymbol(name,"'");
			
			/*var dym="grade of 'c-' or b'e't'ter";
			console.log(dym);
			dym=escapeSymbol(dym, "'");*/
			
			
			 var insert = "insert into courses (number, name, description, department, program, url) " +
			 "values ('" + number + "','" + name + "','" + desp + "','" + department + "','" + program + "','" + url + "')";
			 //console .log("query is " + insert); 
			 
			fetchData( function(err, results) {
				 if (err) { throw err; } 
				 else { if (results) { 
					 console .log("data inserted"); 
				 } } }, insert);
						
		} else {
			console.log('error:' + error);
		}
	});
}

app.get('/scrape', function(req, res) {
	// web scrapping
	var url;
	// cmpe ans se courses link
	url='http://info.sjsu.edu/web-dbgen/catalog/departments/CMPE-courses.html';

	// cs courses link
	 //url ='http://info.sjsu.edu/web-dbgen/catalog/departments/CS-courses.html';

	// ee courses link
	//url = 'http://info.sjsu.edu/web-dbgen/catalog/departments/EE-courses.html';
	var baseurl='http://info.sjsu.edu';
		request(url, function(error, response, html) {

		if (!error) {
			//console.log('in request loop');
			var $ = cheerio.load(html);
			var table= $('div.info_wrapper table');
			var child;
			var len=table.children().length;
			//*********************************************for(var i=1; i<len;i++){
			for(var i=1; i<len;i++){
				child=table.children().eq(i);
				var td=child.children();
				var a=td.children();
				var href = a.attr('href');
				//console.log('href: '+href);
				var courseLink=baseurl+href;
				//console.log('wholeLink: '+courseLink);
				var info=a.text();
				//console.log('info: '+info);
				var infoSplit=info.split(":");
				var courseNum=infoSplit[0];
				//console.log('Num: '+courseNum);
				var courseName=infoSplit[1];
				//console.log('Name: '+courseName);
				var dept = courseNum.split(" ")[0];
				//console.log('dept: '+dept);
				var program;
				var dummy = courseNum.split(" ")[1];
				//console.log('dummy'+dummy);
				var flag=true;
				if(dummy==null){
					dummy='';
				}
				var firstchar = dummy.charAt(0);
				if ((firstchar === '1') || (firstchar === '0')) {
					program = 'undergrad';
				} else if (firstchar === '2') {
					program = 'grad';
				} else {
					console.log('error!!');
					flag=false;
				}
				//console.log('program: '+program);
				if(flag){
					var dummyObject={number:courseNum,name:courseName,description:"",department:dept,program:program,url:courseLink};
					coursesInfoArray.push(dummyObject);
				}
			}
			
			//number:courseNum,name:courseName,description:"",department:dept,program:program,url:courseLink
			for(let i=0; i<coursesInfoArray.length;i++){
				{
					    let u=coursesInfoArray[i];
							/*console.log("number: "+u.number);
							console.log("name: "+u.name);
							console.log("dept: "+u.department);
							console.log("program: "+u.program);
							console.log("url: "+u.url);*/
							getDescription(u.number, u.name, u.department, u.program, u.url);
							
						
				}	
				

				
			}
			
					
				

		
			
		} else {
			console.log('error:' + error);
		}
	});
	
	//console.log('lenght: '+ coursesInfoArray.length);
	
	

});

app.listen('8081');
console.log('web scapping at port 8081');
exports = module.exports = app;
