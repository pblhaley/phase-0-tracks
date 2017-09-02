var colors = ["sparkles", "glitter", "green", "bronze"];

var names = ["Ed", "Marshall", "Princess Fancypants", "Whisper in the Wind"];

colors.push("Rose");
names.push("Jasper");

console.log(colors);
console.log(names);

horseObject = {};

for (var i = 0; i < colors.length; i++) {
  horseObject[names[i]] = colors[i];
}

console.log(horseObject);