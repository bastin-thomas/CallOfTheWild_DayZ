Add to cfgEnvironments.cfg
↓↓↓ under <file path="env/bear_territories.xml" />

<file path="env/rat_territories.xml" />

↓↓↓ add this under (<territory type="Ambient" name="AmbientHen" behavior="DZAmbientLifeGroupBeh">) class

<!-- RABBIT -->
<territory type="Ambient" name="AmbientRat" behavior="DZRatGroupBeh">
    <file usable="rat_territories" />
    <!-- different agent types - class has to begin with AgentType:w -->
    <agent type="Male" chance="1">
        <spawn configName="Animal_Rat_Grey" chance="1" />
    </agent>
    <agent type="Female" chance="3">
        <spawn configName="Animal_Rat_White" chance="10" />
    </agent>

    <item name="globalCountMax" val="50" />
    <item name="zoneCountMin" val="1" />
    <item name="zoneCountMax" val="1" />
    <item name="playerSpawnRadiusNear" val="25" />
    <item name="playerSpawnRadiusFar" val="75" />
</territory>



Add to Events.xml
↓↓↓ add under (<event name="AmbientHen">) class

<event name="AmbientRat">
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
        <child lootmax="0" lootmin="0" max="2" min="1" type="Animal_Rat_Grey"/>
        <child lootmax="0" lootmin="0" max="4" min="1" type="Animal_Rat_White"/>
    </children>
</event>

add to Types.xml (anywhere)

<type name="Animal_Rat_Grey">
    <nominal>0</nominal>
    <lifetime>1800</lifetime>
    <restock>0</restock>
    <min>0</min>
    <quantmin>-1</quantmin>
    <quantmax>-1</quantmax>
    <cost>100</cost>
    <flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
</type>
<type name="Animal_Rat_White">
    <nominal>0</nominal>
    <lifetime>1800</lifetime>
    <restock>0</restock>
    <min>0</min>
    <quantmin>-1</quantmin>
    <quantmax>-1</quantmax>
    <cost>100</cost>
    <flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="0" deloot="0"/>
</type>
<type name="SkinnedRat">
	<nominal>0</nominal>
	<lifetime>14400</lifetime>
	<restock>0</restock>
	<min>0</min>
	<quantmin>-1</quantmin>
	<quantmax>-1</quantmax>
	<cost>100</cost>
	<flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="1" deloot="0"/>
	<category name="food"/>
</type>
<type name="DeadRat_Grey">
	<nominal>0</nominal>
	<lifetime>14400</lifetime>
	<restock>0</restock>
	<min>0</min>
	<quantmin>-1</quantmin>
	<quantmax>-1</quantmax>
	<cost>100</cost>
	<flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="1" deloot="0"/>
	<category name="food"/>
</type>
<type name="DeadRat_White">
	<nominal>0</nominal>
	<lifetime>14400</lifetime>
	<restock>0</restock>
	<min>0</min>
	<quantmin>-1</quantmin>
	<quantmax>-1</quantmax>
	<cost>100</cost>
	<flags count_in_cargo="0" count_in_hoarder="0" count_in_map="1" count_in_player="0" crafted="1" deloot="0"/>
	<category name="food"/>
</type>

move the (rat_territories.xml) to your dayz mission folder (Missing.mapname\env)
