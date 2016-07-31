# scripts
Script, Ansible playbooks och anteckningar på hur vi driver vår infrastruktur för [Grundämnen.se](https://grundämnen.se)

## Servers
Till en början kommer vi använda en server för alla tjänster (Load Balancing, Appen och Databas), men när fått mer traffik då vi känner för att bygga ut kommer vi först öka till tre servrar (varje tjänst får varsin server) för att sedan planera hur vi vill expandera. Vi kommer även under hela tiden använda oss av några tjänster som Joar C hanterar privat för sina egna servrar (Loggning, övervakning och annat).

### Load Balancing
Vi kommer köra nginx för frontend, som hanterar all statiskt material samt cache:ar all annan information som kommer från appen.
Allt som ligger på i mappen "static/" i huvudrepot kommer finnas på denna server samt lite annat.

### Appen
Dessa kör NodeJS appen som vi har i huvudrepot. Denna server pratar med MongoDB (Databas) för att få information som den sedan ger till klienten, som till exempel alla ämnen som ni läser om.

### Andra tjänster
Vi kommer köra rsyslog till Joars privata servrar, samt munin och nagios. Vi kommer möjligen köra IPA när det systemet har kommit ut till Joars servrar.

## Detta Repo
I detta repo finns Vanliga bash-skript, Ansible playbooks (samt en fix för att göra så man kan köra ansible på ubuntu 16.04), config-filer för de vanliga apparna och så självklart dokumentationen för alla dessa grejer. Dokumentationen kommer finnas i mappen "docs/" i repo, där ni kan läsa om exakt hur vi har valt att konfigurera våra servrar.
