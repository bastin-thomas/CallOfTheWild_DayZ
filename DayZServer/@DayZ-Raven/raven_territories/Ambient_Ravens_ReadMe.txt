Add to cfgEnvironments.cfg
↓↓↓ under <file path="env/bear_territories.xml" />

<file path="env/raven_territories.xml" />

↓↓↓ add this under (<territory type="Ambient" name="AmbientHen" behavior="DZAmbientLifeGroupBeh">) class

<!-- RAVEN -->
<territory type="Ambient" name="AmbientRaven" behavior="DZRavenGroupBeh">
    <file usable="raven_territories" />
    <!-- different agent types - class has to begin with AgentType:w -->
    <agent type="Male" chance="1">
        <spawn configName="Animal_Raven_Airborne" chance="1" />
    </agent>
    <agent type="Female" chance="3">
	<spawn configName="Animal_Raven" chance="10" />
        <spawn configName="Animal_Raven2" chance="10" />
    </agent>

    <item name="globalCountMax" val="50" />
    <item name="zoneCountMin" val="1" />
    <item name="zoneCountMax" val="1" />
    <item name="playerSpawnRadiusNear" val="25" />
    <item name="playerSpawnRadiusFar" val="75" />
</territory>



Add to Events.xml
↓↓↓ add under (<event name="AmbientHen">) class

<event name="AmbientRaven">
    <nominal>3</nominal>
    <min>0</min>
    <max>50</max>
    <lifetime>33</lifetime>
    <restock>15</restock>
    <saferadius>40</saferadius>
    <distanceradius>0</distanceradius>
    <cleanupradius>0</cleanupradius>
    <flags deletable="0" init_random="0" remove_damaged="0"/>
    <position>fixed</position>
    <limit>mixed</limit>
    <active>1</active>
    <children>
        <child lootmax="0" lootmin="0" max="2" min="1" type="Animal_Raven"/>
        <child lootmax="0" lootmin="0" max="4" min="1" type="Animal_Raven2"/>
	<child lootmax="0" lootmin="0" max="2" min="1" type="Animal_Raven_Airborne"/>
    </children>
</event>

add to Types.xml (anywhere)

<type name="Animal_Raven">
    <nominal>0</nominal>
    <lifetime>1800</lifetime>
    <restock>0</restock>
    <min>0</min>
    <quantmin>-1</quantmin>
    <quantmax>-1</quantmax>
    <cost>100</cost>
    <flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
</type>
<type name="Animal_Raven2">
    <nominal>0</nominal>
    <lifetime>1800</lifetime>
    <restock>0</restock>
    <min>0</min>
    <quantmin>-1</quantmin>
    <quantmax>-1</quantmax>
    <cost>100</cost>
    <flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
</type>
<type name="Animal_Raven_Airborne">
    <nominal>0</nominal>
    <lifetime>1800</lifetime>
    <restock>0</restock>
    <min>0</min>
    <quantmin>-1</quantmin>
    <quantmax>-1</quantmax>
    <cost>100</cost>
    <flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
</type>


move the (raven_territories.xml) to your dayz mission folder (Missing.mapname\env)
