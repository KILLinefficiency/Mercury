const fs = require("fs");

var nodemailer = require('nodemailer');

const r_name = process.argv[2];
const r_email = process.argv[3];

if(!fs.existsSync("google_key.txt")) {
    console.log("Please enter your passkey in a file called google_key.txt in this folder.")
    process.exit()
}

const PASS = String(fs.readFileSync("google_key.txt"));

var transporter = nodemailer.createTransport({
  service: "gmail",
  auth: {
    user: "shreyas.sable2166@gmail.com",
    pass: PASS
  }
});

var mailOptions = {
  from: "shreyas.sable2166@gmail.com",
  to: r_email,
  subject: "Certificate",
  text: `Hello ${r_name}. You have recieved a Certificate!`,
  attachments: [
    {
        filename: "Certificate.pdf",
        path: __dirname + "/Certificate.pdf",
    }
  ],
};

console.log(`Sending certificate to ${r_name}`);

transporter.sendMail(mailOptions, function(error) {
  if (error) {
    console.log(error);
  } else {
    console.log("Certificate sent to " + r_email);
  }
});
