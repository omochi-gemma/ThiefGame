tag @r[limit=1] add lord_decision
tp @a[tag=lord_decision] 77 37 45 0 0
tp @a[tag=!lord_decision] 83 37 45 0 0
function thiefgame:lobby/team_decision

tag @a remove lord_decision