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
	console.log("\nSQL Query::" + sqlQuery);
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

app.get('/scrape', function(req, res) {
	// web scrapping
	// cmpe ans se courses link
	// url='http://info.sjsu.edu/web-dbgen/catalog/departments/CMPE-courses.html';

	// cs courses link
	// url =
	// 'http://info.sjsu.edu/web-dbgen/catalog/departments/CS-courses.html';

	// ee courses link
	url = 'http://info.sjsu.edu/web-dbgen/catalog/departments/EE-courses.html';

	request(url, function(error, response, html) {

		if (!error) {
			console.log('in request loop');
			var $ = cheerio.load(html);
			var courseNumber, courseName;
			var json = {
				courseNumber : "",
				courseName : ""
			};

			$('.info_wrapper').filter(function() {
				var data = $(this);
				var datatest = data.text();
				console.log('data: ' + datatest);

				var eng = datatest.split("\n\n");
				var cs = eng[2];
				console.log('cs: ' + cs);

				var csCourses = cs.split("\n");
				console.log('l: ' + csCourses.length);

				for (var i = 1; i < csCourses.length; i++) {
					var course = csCourses[i];
					var courseNumName = course.split(':');
					var courseNum = courseNumName[0];
					var dept = courseNum.split(" ")[0];
					var program;
					var dummy = courseNum.split(" ")[1];
					var firstchar = dummy.charAt(0);
					if ((firstchar == '1') || (firstchar == '0')) {
						program = 'undergrad';
					} else if (firstchar == '2') {
						program = 'grad';
					} else {
						console.log('error!!');
					}
					var courseName = courseNumName[1];
					console.log('course: ' + course);
					console.log('num: ' + courseNum);
					console.log('name: ' + courseName);
					console.log('dept: ' + dept);
					console.log('program: ' + program);

					
					 var insert = "insert into courses (number, name, department, program) " +
					 "values ('" + courseNum + "','" + courseName + "','" + dept + "','" + program + "')";
					 console .log("query is " + insert); 
					 fetchData( function(err, results) {
						 if (err) { throw err; } 
						 else { if (results) { 
							 console .log("data inserted"); 
						 } } }, insert);
					 }

			})
			
		} else {
			console.log('error:' + error);
		}
	})

});

app.listen('8081');
console.log('web scapping at port 8081');
exports = module.exports = app;
