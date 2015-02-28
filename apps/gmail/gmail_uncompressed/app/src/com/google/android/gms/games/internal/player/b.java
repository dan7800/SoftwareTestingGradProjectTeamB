package com.google.android.gms.games.internal.player;

import android.text.*;

public final class b
{
    public final String bOB;
    public final String bOC;
    public final String bOD;
    public final String bOE;
    public final String bOF;
    public final String bOG;
    public final String bOH;
    public final String bOI;
    public final String bOJ;
    public final String bOK;
    public final String bOL;
    public final String bOM;
    public final String bON;
    public final String bOO;
    public final String bOP;
    public final String bOQ;
    public final String bOR;
    public final String bOS;
    public final String bOT;
    public final String bOU;
    public final String bOV;
    public final String bOW;
    public final String bOX;
    public final String bOY;
    public final String bOZ;
    
    public b(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            this.bOB = "external_player_id";
            this.bOC = "profile_name";
            this.bOD = "profile_icon_image_uri";
            this.bOE = "profile_icon_image_url";
            this.bOF = "profile_hi_res_image_uri";
            this.bOG = "profile_hi_res_image_url";
            this.bOH = "last_updated";
            this.bOI = "is_in_circles";
            this.bOJ = "played_with_timestamp";
            this.bOK = "current_xp_total";
            this.bOL = "current_level";
            this.bOM = "current_level_min_xp";
            this.bON = "current_level_max_xp";
            this.bOO = "next_level";
            this.bOP = "next_level_max_xp";
            this.bOQ = "last_level_up_timestamp";
            this.bOR = "player_title";
            this.bOS = "has_all_public_acls";
            this.bOT = "is_profile_visible";
            this.bOU = "most_recent_external_game_id";
            this.bOV = "most_recent_game_name";
            this.bOW = "most_recent_activity_timestamp";
            this.bOX = "most_recent_game_icon_uri";
            this.bOY = "most_recent_game_hi_res_uri";
            this.bOZ = "most_recent_game_featured_uri";
            return;
        }
        this.bOB = s + "external_player_id";
        this.bOC = s + "profile_name";
        this.bOD = s + "profile_icon_image_uri";
        this.bOE = s + "profile_icon_image_url";
        this.bOF = s + "profile_hi_res_image_uri";
        this.bOG = s + "profile_hi_res_image_url";
        this.bOH = s + "last_updated";
        this.bOI = s + "is_in_circles";
        this.bOJ = s + "played_with_timestamp";
        this.bOK = s + "current_xp_total";
        this.bOL = s + "current_level";
        this.bOM = s + "current_level_min_xp";
        this.bON = s + "current_level_max_xp";
        this.bOO = s + "next_level";
        this.bOP = s + "next_level_max_xp";
        this.bOQ = s + "last_level_up_timestamp";
        this.bOR = s + "player_title";
        this.bOS = s + "has_all_public_acls";
        this.bOT = s + "is_profile_visible";
        this.bOU = s + "most_recent_external_game_id";
        this.bOV = s + "most_recent_game_name";
        this.bOW = s + "most_recent_activity_timestamp";
        this.bOX = s + "most_recent_game_icon_uri";
        this.bOY = s + "most_recent_game_hi_res_uri";
        this.bOZ = s + "most_recent_game_featured_uri";
    }
}
