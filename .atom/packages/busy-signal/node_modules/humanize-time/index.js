module.exports = function(ms){
  var floor = Math.floor
    , secs  = floor(ms / 1000)
    , mins  = floor(secs / 60)
    , hrs   = floor(mins / 60)

  var buff = ""
  if (hrs > 0){
    buff = buff.concat(hrs + "h, ")
  }
  if (mins > 0){
    buff = buff.concat(mins % 60 + "m, ")
  }
  buff = buff.concat(secs % 60 + "s")
  return buff
}
