Add to cfgEnvironments.cfg
↓↓↓ under <file path="env/bear_territories.xml" />

<file path="env/raven_territories.xml" />

↓↓↓ add this under (<territory type="Ambient" name="AmbientHen" behavior="DZAmbientLifeGroupBeh">) class

<!-- SEAGULL -->
<territory type="Ambient" name="AmbientSeagull" behavior="DZSeagullGroupBeh">
    <file usable="seagull_territories" />
    <!-- different agent types - class has to begin with AgentType:w -->
    <agent type="Male" chance="3">
        <spawn configName="Animal_Seagull_Airborne" chance="10" />
    </agent>
    <agent type="Female" chance="1">
		<spawn configName="Animal_Seagull" chance="10" />
    </agent>

    <item name="globalCountMax" val="50" />
    <item name="zoneCountMin" val="1" />
    <item name="zoneCountMax" val="1" />
    <item name="playerSpawnRadiusNear" val="25" />
    <item name="playerSpawnRadiusFar" val="75" />
</territory>



Add to Events.xml
↓↓↓ add under (<event name="AmbientHen">) class

<event name="AmbientSeagull">
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
        <child lootmax="0" lootmin="0" max="2" min="1" type="Animal_Seagull"/>
		<child lootmax="0" lootmin="0" max="2" min="1" type="Animal_Seagull_Airborne"/>
    </children>
</event>

add to Types.xml (anywhere)

<type name="Animal_Seagull">
    <nominal>0</nominal>
    <lifetime>1800</lifetime>
    <restock>0</restock>
    <min>0</min>
    <quantmin>-1</quantmin>
    <quantmax>-1</quantmax>
    <cost>100</cost>
    <flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
</type>
<type name="Animal_Seagull_Airborne">
    <nominal>0</nominal>
    <lifetime>1800</lifetime>
    <restock>0</restock>
    <min>0</min>
    <quantmin>-1</quantmin>
    <quantmax>-1</quantmax>
    <cost>100</cost>
    <flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
</type>


move the (seagull_territories.xml) to your dayz mission folder (Missing.mapname\env)
