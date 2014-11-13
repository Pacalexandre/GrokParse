#Paulo Alexandre - pacalexandre@gmail.com
#Pentaho - Parse Data-Integration 
#

PEN4 %{DATA:Datahora}\s-\s%{DATA:Servico}\s-\s%{DATA:Processo}\((I=)%{DATA:Insert}(, O=)%{DATA:Open}(, R=)%{DATA:Read}(, W=)%{DATA:Write}(, U=)%{DATA:Update}(, E=)%{DATA:Erase}\)
PEN3 %{DATA:Datahora}\s-\s%{DATA:Servico}\s-\s%{DATA:Processo}\[%{DATA:Transformacao}\]( in directory )\[%{DATA:Repositorio}\]
PEN2 %{DATA:Datahora}\s-\s%{DATA:Servico}\s-\s%{DATA:Processo}\[%{DATA:Transformacao}\]
PEN1 %{DATA:Datahora}\s-\s%{DATA:Servico}\s-\s%{GREEDYDATA:Banco}\(
PEN0 %{DATA:Datahora}\s-\s%{DATA:Servico}\s-\s%{GREEDYDATA:Processo}