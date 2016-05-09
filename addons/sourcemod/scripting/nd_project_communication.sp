#include <sourcemod>
#include <nd_stocks>

public Plugin:myinfo =
{
	name 		= "[ND] Project Communication",
	author 		= "Stickz",
	description 	= "Breaks Communication Barriers",
	version 	= "dummy",
	url 		= "https://github.com/stickz/Redstone/"
};

#define LANGUAGE_COUNT 		44
#define STRING_STARTS_WITH 	0
#define IS_WITHIN_STRING	-1

/* Auto Updater */
#define UPDATE_URL  "https://github.com/stickz/Redstone/raw/build/updater/nd_project_communication/nd_project_communication.txt"
#include "updater/standard.sp"

#include "nd_project_communication/commander_lang.sp"
#include "nd_project_communication/team_lang.sp"
#include "nd_project_communication/building_requests.sp"

public OnPluginStart()
{
	HookEvent("round_start", Event_RoundStart, EventHookMode_PostNoCopy);
	HookEvent("promoted_to_commander", Event_CommanderPromo);
	
	AddUpdaterLibrary(); //auto-updater
	
	LoadTranslations("structminigame.phrases");
	LoadTranslations("nd_project_communication.phrases");
}

public Event_RoundStart(Handle:event, const String:name[], bool:dontBroadcast)
{
	PrintTeamLanguages();
}
