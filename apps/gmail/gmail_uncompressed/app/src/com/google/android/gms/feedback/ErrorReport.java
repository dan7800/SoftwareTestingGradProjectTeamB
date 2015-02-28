package com.google.android.gms.feedback;

import com.google.android.gms.common.internal.safeparcel.*;
import android.app.*;
import android.os.*;

public class ErrorReport implements SafeParcelable
{
    public static final Parcelable$Creator<ErrorReport> CREATOR;
    public ApplicationErrorReport bJA;
    public int bJB;
    public String bJC;
    public String bJD;
    public String bJE;
    public String bJF;
    public String bJG;
    public String bJH;
    public String bJI;
    public int bJJ;
    public String bJK;
    public String bJL;
    public String bJM;
    public String bJN;
    public String[] bJO;
    public String[] bJP;
    public String[] bJQ;
    public String bJR;
    public String bJS;
    public byte[] bJT;
    public int bJU;
    public int bJV;
    public int bJW;
    public int bJX;
    public String bJY;
    public String bJZ;
    public Bundle bKa;
    public boolean bKb;
    public int bKc;
    public int bKd;
    public boolean bKe;
    public String bKf;
    public String bKg;
    public String blK;
    public String description;
    public String exceptionClassName;
    public String exceptionMessage;
    public String release;
    public String stackTrace;
    public String throwClassName;
    public String throwFileName;
    public int throwLineNumber;
    public String throwMethodName;
    public final int versionCode;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    public ErrorReport() {
        this.bJA = new ApplicationErrorReport();
        this.versionCode = 3;
    }
    
    ErrorReport(final int versionCode, final ApplicationErrorReport bja, final String description, final int bjb, final String bjc, final String bjd, final String bje, final String bjf, final String bjg, final String bjh, final String bji, final int bjj, final String release, final String bjk, final String bjl, final String bjm, final String bjn, final String[] bjo, final String[] bjp, final String[] bjq, final String bjr, final String bjs, final byte[] bjt, final int bju, final int bjv, final int bjw, final int bjx, final String bjy, final String blK, final String bjz, final Bundle bKa, final boolean bKb, final int bKc, final int bKd, final boolean bKe, final String exceptionClassName, final String throwFileName, final int throwLineNumber, final String throwClassName, final String throwMethodName, final String stackTrace, final String exceptionMessage, final String bKf, final String bKg) {
        this.bJA = new ApplicationErrorReport();
        this.versionCode = versionCode;
        this.bJA = bja;
        this.description = description;
        this.bJB = bjb;
        this.bJC = bjc;
        this.bJD = bjd;
        this.bJE = bje;
        this.bJF = bjf;
        this.bJG = bjg;
        this.bJH = bjh;
        this.bJI = bji;
        this.bJJ = bjj;
        this.release = release;
        this.bJK = bjk;
        this.bJL = bjl;
        this.bJM = bjm;
        this.bJN = bjn;
        this.bJO = bjo;
        this.bJP = bjp;
        this.bJQ = bjq;
        this.bJR = bjr;
        this.bJS = bjs;
        this.bJT = bjt;
        this.bJU = bju;
        this.bJV = bjv;
        this.bJW = bjw;
        this.bJX = bjx;
        this.bJY = bjy;
        this.blK = blK;
        this.bJZ = bjz;
        this.bKa = bKa;
        this.bKb = bKb;
        this.bKc = bKc;
        this.bKd = bKd;
        this.bKe = bKe;
        this.exceptionClassName = exceptionClassName;
        this.throwFileName = throwFileName;
        this.throwLineNumber = throwLineNumber;
        this.throwClassName = throwClassName;
        this.throwMethodName = throwMethodName;
        this.stackTrace = stackTrace;
        this.exceptionMessage = exceptionMessage;
        this.bKf = bKf;
        this.bKg = bKg;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel, n);
    }
}
