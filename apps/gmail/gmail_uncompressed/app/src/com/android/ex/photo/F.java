package com.android.ex.photo;

import android.content.*;
import android.net.*;
import java.io.*;

public final class f
{
    private int agA;
    private int agB;
    private int agC;
    private int agD;
    private boolean agE;
    private boolean agF;
    private Integer ags;
    private String agt;
    private String agu;
    private String agv;
    private String agw;
    private Float agx;
    private boolean agy;
    private boolean agz;
    private String[] eN;
    private final Intent mIntent;
    
    private f(final Context context, final Class<?> clazz) {
        this.mIntent = new Intent(context, (Class)clazz);
        this.nD();
    }
    
    private f(final Context context, final String s) {
        (this.mIntent = new Intent()).setClassName(context, s);
        this.nD();
    }
    
    private void nD() {
        this.agz = false;
        this.agE = false;
        this.agF = false;
    }
    
    public final f a(final Integer ags) {
        this.ags = ags;
        return this;
    }
    
    public final f aQ(final String agt) {
        this.agt = agt;
        return this;
    }
    
    public final f aR(final String agu) {
        this.agu = agu;
        return this;
    }
    
    public final f aS(final String agv) {
        this.agv = agv;
        return this;
    }
    
    public final f aT(final String agw) {
        this.agw = agw;
        return this;
    }
    
    public final f aj(final boolean agF) {
        this.agF = agF;
        return this;
    }
    
    public final f h(final String[] en) {
        this.eN = en;
        return this;
    }
    
    public final Intent nE() {
        this.mIntent.setAction("android.intent.action.VIEW");
        this.mIntent.setFlags(524288);
        if (this.ags != null) {
            this.mIntent.putExtra("photo_index", (int)this.ags);
        }
        if (this.agt != null) {
            this.mIntent.putExtra("initial_photo_uri", this.agt);
        }
        if (this.agt != null && this.ags != null) {
            throw new IllegalStateException("specified both photo index and photo uri");
        }
        if (this.agu != null) {
            this.mIntent.putExtra("photos_uri", this.agu);
            this.mIntent.setData(Uri.parse(this.agu));
        }
        if (this.agv != null) {
            this.mIntent.putExtra("resolved_photo_uri", this.agv);
        }
        if (this.eN != null) {
            this.mIntent.putExtra("projection", this.eN);
        }
        if (this.agw != null) {
            this.mIntent.putExtra("thumbnail_uri", this.agw);
        }
        if (this.agx != null) {
            this.mIntent.putExtra("max_scale", (Serializable)this.agx);
        }
        this.mIntent.putExtra("watch_network", this.agy);
        this.mIntent.putExtra("scale_up_animation", this.agz);
        if (this.agz) {
            this.mIntent.putExtra("start_x_extra", this.agA);
            this.mIntent.putExtra("start_y_extra", this.agB);
            this.mIntent.putExtra("start_width_extra", this.agC);
            this.mIntent.putExtra("start_height_extra", this.agD);
        }
        this.mIntent.putExtra("action_bar_hidden_initially", this.agE);
        this.mIntent.putExtra("display_thumbs_fullscreen", this.agF);
        return this.mIntent;
    }
    
    public final f s(final float n) {
        this.agx = n;
        return this;
    }
}
