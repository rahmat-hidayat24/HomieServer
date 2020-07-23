const nodemailer = require('nodemailer');
const { google } = require('googleapis');
const { response } = require('express');
const OAuth2 = google.auth.OAuth2;
const clientId = "547903104625-dipofuv94rpg7v4h4kt8ve00v0ondrdl.apps.googleusercontent.com";
const clientSecret = "jAzMt39WANDW2c3o9lLGICSk";
const refreshToken = "1//0fCDPBFEMcRyqCgYIARAAGA8SNwF-L9Ir-0LF_q5Fg1daYfImZnovVwrMFHfAigiqYZXVq-O8oNKveDXgFtTq4S2r4PN4mcxM4xE";
const access_token = ''

const oauth2Client = new OAuth2(
  clientId,
  clientSecret,
  'https://developers.google.com/oauthplayground'
);

google.options({auth : oauth2Client});

oauth2Client.setCredentials({ refresh_token : refreshToken });

console.log('Refresh Token', refreshToken)
const accessToken = oauth2Client.getAccessToken().then(function(err,tokens){
  console.log('Tokens - ' , tokens)
})

console.log('Access Token -', access_token)
console.log('Access Token 1 -', accessToken)
const smtpTransport = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    type: 'OAuth2',
    user: 'help.center.homie@gmail.com',
    clientId,
    clientSecret,
    refreshToken,
    access_token
  }
});

module.exports = smtpTransport;