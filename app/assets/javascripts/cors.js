// https://www.html5rocks.com/en/tutorials/cors/
// Create the XHR object.
function createCORSRequest(method, url) {
  var xhr = new XMLHttpRequest();
  if ("withCredentials" in xhr) {
    // XHR for Chrome/Firefox/Opera/Safari.
    xhr.open(method, url, true);
  } else if (typeof XDomainRequest != "undefined") {
    // XDomainRequest for IE.
    xhr = new XDomainRequest();
    xhr.open(method, url);
  } else {
    // CORS not supported.
    xhr = null;
  }
  return xhr;
}

// Helper method to parse the title tag from the response.
// function getTitle(text) {
//   return text.match('<title>(.*)?</title>')[1];
// }

// Make the actual CORS request.
function makeCorsRequest(url) {
  // This is a sample server that supports CORS.
  // var url = 'http://html5rocks-cors.s3-website-us-east-1.amazonaws.com/index.html';

  var xhr = createCORSRequest('GET', url);
  if (!xhr) {
    console.log('CORS not supported');
    return;
  }

  // Response handlers.
  xhr.onload = function() {
    var text = xhr.responseText;
    // var title = getTitle(text);
    console.log('Response from CORS request to ' + url + ': ' + text);
  };

  xhr.onerror = function() {
    console.log('Woops, there was an error making the request.');
  };

  xhr.send();
}


// function makeCorsRequest(url) {
//   $.ajax({
//
//     // The 'type' property sets the HTTP method.
//     // A value of 'PUT' or 'DELETE' will trigger a preflight request.
//     type: 'GET',
//
//     // The URL to make the request to.
//     url: url,
//
//     // The 'contentType' property sets the 'Content-Type' header.
//     // The JQuery default for this property is
//     // 'application/x-www-form-urlencoded; charset=UTF-8', which does not trigger
//     // a preflight. If you set this value to anything other than
//     // application/x-www-form-urlencoded, multipart/form-data, or text/plain,
//     // you will trigger a preflight request.
//     contentType: 'text/plain',
//
//     xhrFields: {
//       // The 'xhrFields' property sets additional fields on the XMLHttpRequest.
//       // This can be used to set the 'withCredentials' property.
//       // Set the value to 'true' if you'd like to pass cookies to the server.
//       // If this is enabled, your server must respond with the header
//       // 'Access-Control-Allow-Credentials: true'.
//       withCredentials: true
//     },
//
//     headers: {
//       // Set any custom headers here.
//       // If you set any non-simple headers, your server must include these
//       // headers in the 'Access-Control-Allow-Headers' response header.
//     },
//
//     success: function(data) {
//       // Here's where you handle a successful response.
//     },
//
//     error: function() {
//       // Here's where you handle an error response.
//       // Note that if the error was due to a CORS issue,
//       // this function will still fire, but there won't be any additional
//       // information about the error.
//     }
//   });
// }
