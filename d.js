p = console.log.bind(console)
l = console.log.bind(console)
var now = new Date;
let daysOfTheWeek = ["Sunday", "Monday", "Tuesday", "Wednesday",
"Thursday", "Friday", "Saturday"];


p (
    daysOfTheWeek[now.getDay()],
    now,
    now.getYear() + "\n",
    now.getTime(),
    now.getDay(),
    now.getMonth(),
    now.getFullYear(),
    now.getDate()
  )

  let zipCode = new RegExp("\\d{5}");
  p(zipCode.test("12345"))

  let result = zipCode.exec("Beverly Hills 90210");
  p(result, result.length)

  var zipcoder = /\d{5}/;

  let s = "Beverly Hills 90210 was a '90s TV show set in Los Angeles.";
  s += " 91125 is another ZIP code in the Los Angeles area." 
  p(s)
  p (
  s.match(zipcoder),
  !!s.match(zipcoder)
  )

  if (s.match(zipCode)) {
    p ( "Looks like there's at least one ZIP code in the string!" )
   }

var zipcodeg = /\d{5}/g;

p (
  s.match(zipcodeg)
)

