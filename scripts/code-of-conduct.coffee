# Description
#   Script para Código de Conduta
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   none
#
# Notes:
#   none
#
# Author:
#   Gustavo Barbosa

module.exports = (robot) ->
  homophobic = ["gay", "viado", "bicha", "boiola", "viadinho", "bichona", " hupa", "chupar", "g0y", "lésbica", "homosexual", "machona", "baitola"]
  chauvinist = ["coisa de menina", "afeminado", "igual mulher", "igual garota", "igual menina", "mocinha", "lugar de mulher", "vadia", "vagabunda"]
  political = ["Lula", "Dilma", "Dilmãe", "Bolsonaro", "Bolsomito", "FHC", "Lacra o 13"]

  expressions = homophobic.concat(chauvinist).concat(political)
  
  regex = RegExp('(' + expressions.join('|') + ')', 'i')
  robot.hear regex, (msg) ->
    msg.send "Ei <@#{msg.envelope.user.id}>. *#{msg.match[1]}* não é legal de se falar por aqui. " +
             "Depois dá uma conferida no Código de Conduta do grupo :wink:"
    msg.send "https://github.com/iOSDevBR/Codigo-De-Conduta"
