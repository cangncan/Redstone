#if defined _nd_breakdown_included
  #endinput
#endif
#define _nd_breakdown_included

/**
 * Retreive the number of snipers on an given team
 *
 * If an invlaid teamIDX is sent, will return -1.
 *
 * @param teamIDX  		The index of the team.
 * @return        		The number of sniper class clients.
 */
native int GetSniperCount(int teamIDX);

/**
 * Retreive the number of stealth on an given team
 *
 * If an invlaid teamIDX is sent, will return -1.
 *
 * @param teamIDX  		The index of the team.
 * @return        		The number of stealth class clients.
 */
native int GetStealthCount(int teamIDX);

/**
 * Retreive the number of anti-structure on an given team
 *
 * If an invlaid teamIDX is sent, will return -1.
 *
 * @param teamIDX  		The index of the team.
 * @return        		The number of anti-structure based clients.
 */
native int GetAntiStructureCount(int teamIDX);
