{
    "KeycardDoor": [ // Dont change this, or it will break
        {
            "doorClassName": "evg_outsideDoor_Wall2",  // Keycard door name. Use from classnames.txt
            "doorPosition": [  // Door location XYZ
                4708.419921875,
                340.8399963378906,
                10305.2001953125
            ],
            "doorRotation": [  // Door rotation XYZ
                -34.0,
                0.5,
                0.0
            ],
            "autoCloseTime": 15.0, // Auto Close Time in seconds. You can set it to 0, so door will not auto close.
            "itemsToOpenDoor": [ // Keycard(s) that will open this particular Keycard door. You can use any item(s) in the game btw...
                "evg_keycards_NWAF01" 
            ],
            "damageToKeycard": 30.0, // Damage to item "keycardToOpen" in percentage. You can set it to -1, so keycard will be DELETED right after usage.
            "enableSwipeSound": 1, // Enables sound on card swipe
            "enableErrorSound": 1, // Enables sound on wrong item use
            "enableCloseSound": 1, // Enables sound on Keycard door close
            "locationName": "NWAF", // Location Text for Notification
            "secondsNotify": 5 // Time period for which Notification will be shown. You can set it to 0, so door will not send Notifications
        }
    ]
}

//Your config.json should look like this:

{
    "KeycardDoor": [
        {
            "doorClassName": "evg_outsideDoor_Wall2",
            "doorPosition": [
                4708.419921875,
                340.8399963378906,
                10305.2001953125
            ],
            "doorRotation": [
                -34.0,
                0.5,
                0.0
            ],
            "autoCloseTime": 15.0,
            "itemsToOpenDoor": [
                "evg_keycards_NWAF01"
            ],
            "damageToKeycard": 30.0,
            "enableSwipeSound": 1,
            "enableErrorSound": 1,
            "enableCloseSound": 1,
            "locationName": "NWAF",
            "secondsNotify": 5
        },
        {
            "doorClassName": "evg_outsideDoor_Wall2",
            "doorPosition": [
                4639.99365234375,
                340.8360290527344,
                10318.7666015625
            ],
            "doorRotation": [
                61.39999771118164,
                0.0,
                0.0
            ],
            "autoCloseTime": 15.0,
            "itemsToOpenDoor": [
                "evg_keycards_NWAF01"
            ],
            "damageToKeycard": 30.0,
            "enableSwipeSound": 1,
            "enableErrorSound": 1,
            "enableCloseSound": 1,
            "locationName": "NWAF",
            "secondsNotify": 5
        },
        ...
    ]
}