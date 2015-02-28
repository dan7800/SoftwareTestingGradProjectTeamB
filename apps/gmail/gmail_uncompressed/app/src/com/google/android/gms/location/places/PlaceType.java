package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class PlaceType implements SafeParcelable
{
    public static final i CREATOR;
    public static final PlaceType cbL;
    public static final PlaceType cbM;
    public static final PlaceType cbN;
    public static final PlaceType cbO;
    public static final PlaceType cbP;
    public static final PlaceType cbQ;
    public static final PlaceType cbR;
    public static final PlaceType cbS;
    public static final PlaceType cbT;
    public static final PlaceType cbU;
    public static final PlaceType cbV;
    public static final PlaceType cbW;
    public static final PlaceType cbX;
    public static final PlaceType cbY;
    public static final PlaceType cbZ;
    public static final PlaceType ccA;
    public static final PlaceType ccB;
    public static final PlaceType ccC;
    public static final PlaceType ccD;
    public static final PlaceType ccE;
    public static final PlaceType ccF;
    public static final PlaceType ccG;
    public static final PlaceType ccH;
    public static final PlaceType ccI;
    public static final PlaceType ccJ;
    public static final PlaceType ccK;
    public static final PlaceType ccL;
    public static final PlaceType ccM;
    public static final PlaceType ccN;
    public static final PlaceType ccO;
    public static final PlaceType ccP;
    public static final PlaceType ccQ;
    public static final PlaceType ccR;
    public static final PlaceType ccS;
    public static final PlaceType ccT;
    public static final PlaceType ccU;
    public static final PlaceType ccV;
    public static final PlaceType ccW;
    public static final PlaceType ccX;
    public static final PlaceType ccY;
    public static final PlaceType ccZ;
    public static final PlaceType cca;
    public static final PlaceType ccb;
    public static final PlaceType ccc;
    public static final PlaceType ccd;
    public static final PlaceType cce;
    public static final PlaceType ccf;
    public static final PlaceType ccg;
    public static final PlaceType cch;
    public static final PlaceType cci;
    public static final PlaceType ccj;
    public static final PlaceType cck;
    public static final PlaceType ccl;
    public static final PlaceType ccm;
    public static final PlaceType ccn;
    public static final PlaceType cco;
    public static final PlaceType ccp;
    public static final PlaceType ccq;
    public static final PlaceType ccr;
    public static final PlaceType ccs;
    public static final PlaceType cct;
    public static final PlaceType ccu;
    public static final PlaceType ccv;
    public static final PlaceType ccw;
    public static final PlaceType ccx;
    public static final PlaceType ccy;
    public static final PlaceType ccz;
    public static final PlaceType cdA;
    public static final PlaceType cdB;
    public static final PlaceType cdC;
    public static final PlaceType cdD;
    public static final PlaceType cdE;
    public static final PlaceType cdF;
    public static final PlaceType cdG;
    public static final PlaceType cdH;
    public static final PlaceType cdI;
    public static final PlaceType cdJ;
    public static final PlaceType cdK;
    public static final PlaceType cdL;
    public static final PlaceType cdM;
    public static final PlaceType cdN;
    public static final PlaceType cdO;
    public static final PlaceType cdP;
    public static final PlaceType cdQ;
    public static final PlaceType cdR;
    public static final PlaceType cdS;
    public static final PlaceType cdT;
    public static final PlaceType cdU;
    public static final PlaceType cdV;
    public static final PlaceType cdW;
    public static final PlaceType cdX;
    public static final PlaceType cdY;
    public static final PlaceType cdZ;
    public static final PlaceType cda;
    public static final PlaceType cdb;
    public static final PlaceType cdc;
    public static final PlaceType cdd;
    public static final PlaceType cde;
    public static final PlaceType cdf;
    public static final PlaceType cdg;
    public static final PlaceType cdh;
    public static final PlaceType cdi;
    public static final PlaceType cdj;
    public static final PlaceType cdk;
    public static final PlaceType cdl;
    public static final PlaceType cdm;
    public static final PlaceType cdn;
    public static final PlaceType cdo;
    public static final PlaceType cdp;
    public static final PlaceType cdq;
    public static final PlaceType cdr;
    public static final PlaceType cds;
    public static final PlaceType cdt;
    public static final PlaceType cdu;
    public static final PlaceType cdv;
    public static final PlaceType cdw;
    public static final PlaceType cdx;
    public static final PlaceType cdy;
    public static final PlaceType cdz;
    public static final PlaceType cea;
    public static final PlaceType ceb;
    public static final PlaceType cec;
    public static final PlaceType ced;
    public static final PlaceType cee;
    public static final PlaceType cef;
    public static final PlaceType ceg;
    final int btV;
    final String bzB;
    
    static {
        cbL = gx("accounting");
        cbM = gx("airport");
        cbN = gx("amusement_park");
        cbO = gx("aquarium");
        cbP = gx("art_gallery");
        cbQ = gx("atm");
        cbR = gx("bakery");
        cbS = gx("bank");
        cbT = gx("bar");
        cbU = gx("beauty_salon");
        cbV = gx("bicycle_store");
        cbW = gx("book_store");
        cbX = gx("bowling_alley");
        cbY = gx("bus_station");
        cbZ = gx("cafe");
        cca = gx("campground");
        ccb = gx("car_dealer");
        ccc = gx("car_rental");
        ccd = gx("car_repair");
        cce = gx("car_wash");
        ccf = gx("casino");
        ccg = gx("cemetery");
        cch = gx("church");
        cci = gx("city_hall");
        ccj = gx("clothing_store");
        cck = gx("convenience_store");
        ccl = gx("courthouse");
        ccm = gx("dentist");
        ccn = gx("department_store");
        cco = gx("doctor");
        ccp = gx("electrician");
        ccq = gx("electronics_store");
        ccr = gx("embassy");
        ccs = gx("establishment");
        cct = gx("finance");
        ccu = gx("fire_station");
        ccv = gx("florist");
        ccw = gx("food");
        ccx = gx("funeral_home");
        ccy = gx("furniture_store");
        ccz = gx("gas_station");
        ccA = gx("general_contractor");
        ccB = gx("grocery_or_supermarket");
        ccC = gx("gym");
        ccD = gx("hair_care");
        ccE = gx("hardware_store");
        ccF = gx("health");
        ccG = gx("hindu_temple");
        ccH = gx("home_goods_store");
        ccI = gx("hospital");
        ccJ = gx("insurance_agency");
        ccK = gx("jewelry_store");
        ccL = gx("laundry");
        ccM = gx("lawyer");
        ccN = gx("library");
        ccO = gx("liquor_store");
        ccP = gx("local_government_office");
        ccQ = gx("locksmith");
        ccR = gx("lodging");
        ccS = gx("meal_delivery");
        ccT = gx("meal_takeaway");
        ccU = gx("mosque");
        ccV = gx("movie_rental");
        ccW = gx("movie_theater");
        ccX = gx("moving_company");
        ccY = gx("museum");
        ccZ = gx("night_club");
        cda = gx("painter");
        cdb = gx("park");
        cdc = gx("parking");
        cdd = gx("pet_store");
        cde = gx("pharmacy");
        cdf = gx("physiotherapist");
        cdg = gx("place_of_worship");
        cdh = gx("plumber");
        cdi = gx("police");
        cdj = gx("post_office");
        cdk = gx("real_estate_agency");
        cdl = gx("restaurant");
        cdm = gx("roofing_contractor");
        cdn = gx("rv_park");
        cdo = gx("school");
        cdp = gx("shoe_store");
        cdq = gx("shopping_mall");
        cdr = gx("spa");
        cds = gx("stadium");
        cdt = gx("storage");
        cdu = gx("store");
        cdv = gx("subway_station");
        cdw = gx("synagogue");
        cdx = gx("taxi_stand");
        cdy = gx("train_station");
        cdz = gx("travel_agency");
        cdA = gx("university");
        cdB = gx("veterinary_care");
        cdC = gx("zoo");
        cdD = gx("administrative_area_level_1");
        cdE = gx("administrative_area_level_2");
        cdF = gx("administrative_area_level_3");
        cdG = gx("colloquial_area");
        cdH = gx("country");
        cdI = gx("floor");
        cdJ = gx("geocode");
        cdK = gx("intersection");
        cdL = gx("locality");
        cdM = gx("natural_feature");
        cdN = gx("neighborhood");
        cdO = gx("political");
        cdP = gx("point_of_interest");
        cdQ = gx("post_box");
        cdR = gx("postal_code");
        cdS = gx("postal_code_prefix");
        cdT = gx("postal_town");
        cdU = gx("premise");
        cdV = gx("room");
        cdW = gx("route");
        cdX = gx("street_address");
        cdY = gx("sublocality");
        cdZ = gx("sublocality_level_1");
        cea = gx("sublocality_level_2");
        ceb = gx("sublocality_level_3");
        cec = gx("sublocality_level_4");
        ced = gx("sublocality_level_5");
        cee = gx("subpremise");
        cef = gx("transit_station");
        ceg = gx("other");
        CREATOR = new i();
    }
    
    PlaceType(final int btV, final String bzB) {
        G.fX(bzB);
        this.btV = btV;
        this.bzB = bzB;
    }
    
    public static PlaceType gx(final String s) {
        return new PlaceType(0, s);
    }
    
    public final int describeContents() {
        final i creator = PlaceType.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o instanceof PlaceType && this.bzB.equals(((PlaceType)o).bzB);
    }
    
    @Override
    public final int hashCode() {
        return this.bzB.hashCode();
    }
    
    @Override
    public final String toString() {
        return this.bzB;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final i creator = PlaceType.CREATOR;
        i.a(this, parcel);
    }
}
