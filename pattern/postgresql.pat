#Paulo Alexandre - pacalexandre@gmail.com
#Postgresql 9.3 - Parse log simples
#

POSTGRESSQLF \<\s%{TIMESTAMP_ISO8601:horalocal}\s%{DATA:zona}\>%{DATA:logtype}:\s\s%{WORD:acao}:\s(session)\s(time):\s%{DATA:session}\s(user=)%{DATA:user}(database=)%{DATA:database}(host=)%{DATA:host}(port=)%{GREEDYDATA:port}
POSTGRESSQLS \<\s%{TIMESTAMP_ISO8601:horalocal}\s%{DATA:zona}\>%{DATA:logtype}:\s\sstatement:\s%{GREEDYDATA:sql}
POSTGRESSQLT \<\s%{TIMESTAMP_ISO8601:horalocal}\s%{DATA:zona}\>%{DATA:logtype}:\s\s%{GREEDYDATA:sql}
POSTGRESSQLA \<\s%{TIMESTAMP_ISO8601:horalocal}\s%{DATA:zona}\>%{DATA:logtype}:%{GREEDYDATA}