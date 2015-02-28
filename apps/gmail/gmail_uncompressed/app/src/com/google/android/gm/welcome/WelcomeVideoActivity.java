package com.google.android.gm.welcome;

import android.app.*;
import android.widget.*;
import com.android.mail.utils.*;
import android.text.*;
import java.io.*;
import android.annotation.*;
import com.android.mail.a.*;
import android.content.res.*;
import com.google.android.gsf.*;
import android.os.*;
import java.util.*;
import android.media.*;
import android.content.*;
import android.net.*;
import android.view.*;

public class WelcomeVideoActivity extends Activity implements MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnInfoListener, MediaPlayer$OnPreparedListener, MediaPlayer$OnSeekCompleteListener, MediaPlayer$OnVideoSizeChangedListener, SurfaceHolder$Callback, View$OnClickListener, View$OnSystemUiVisibilityChangeListener, n
{
    private TextView FO;
    private View bsM;
    private boolean bsN;
    private SurfaceView bsO;
    private SurfaceHolder bsP;
    private String bsQ;
    private MediaPlayer bsR;
    private WelcomeVideoActivity$MediaPlayerState bsS;
    private int bsT;
    private int bsU;
    private WelcomeVideoActivity$MediaPlayerState bsV;
    private C bsW;
    private A bsX;
    private B bsY;
    private final Object bsZ;
    private long bta;
    private View uF;
    
    public WelcomeVideoActivity() {
        this.bsS = WelcomeVideoActivity$MediaPlayerState.btd;
        this.bsZ = new Object();
    }
    
    private void Jb() {
        (this.bsX = new A(this)).execute((Object[])new Void[0]);
    }
    
    private void Jc() {
        Label_0089: {
            try {
                if (this.bsS != WelcomeVideoActivity$MediaPlayerState.btf && this.bsS != WelcomeVideoActivity$MediaPlayerState.btg && this.bsS != WelcomeVideoActivity$MediaPlayerState.bth && this.bsS != WelcomeVideoActivity$MediaPlayerState.btj) {
                    throw new IllegalStateException(String.format("WelcomeTour video cannot be started when player is %s", this.bsS));
                }
                break Label_0089;
            }
            catch (IllegalStateException ex) {
                E.e("WelcomeTour", ex.getMessage(), ex);
            }
            return;
        }
        (this.bsW = new C(this, (byte)0)).execute((Object[])new Void[0]);
        if (this.bsT > 0) {
            this.bsR.setOnSeekCompleteListener((MediaPlayer$OnSeekCompleteListener)this);
            (this.bsY = new B(this, this.bsT)).execute((Object[])new Void[0]);
        }
    }
    
    private void X(final int n, final int n2) {
        final int rotation = this.getWindowManager().getDefaultDisplay().getRotation();
        boolean b;
        if ((rotation - this.bsU) % 2 != 0) {
            b = true;
        }
        else {
            b = false;
        }
        this.bsU = rotation;
        float n3;
        if (b) {
            n3 = this.uF.getHeight();
        }
        else {
            n3 = this.uF.getWidth();
        }
        float n4;
        if (b) {
            n4 = this.uF.getWidth();
        }
        else {
            n4 = this.uF.getHeight();
        }
        final float n5 = n3 / n4;
        final float n6 = n / n2;
        final ViewGroup$LayoutParams layoutParams = this.bsO.getLayoutParams();
        if (n6 != n5) {
            if (n6 > n5) {
                layoutParams.width = (int)n3;
                layoutParams.height = (int)(n3 / n6);
            }
            else {
                layoutParams.height = (int)n4;
                layoutParams.width = (int)(n4 * n6);
            }
        }
        E.d("WelcomeTour", "Welcome video surface adjusted to %dx%d on a screen of %.0fx%.0f for a video of %dx%d", layoutParams.width, layoutParams.height, n3, n4, n, n2);
        this.bsO.setLayoutParams(layoutParams);
    }
    
    private boolean a(final MediaPlayer mediaPlayer) {
        if (this.bsS != WelcomeVideoActivity$MediaPlayerState.btf) {
            E.g("WelcomeTour", "The Media player must be prepared to start, but it is in state %s", this.bsS);
            return false;
        }
        if (!this.bsN) {
            E.g("WelcomeTour", "The SurfaceView in which to render the welcome video is not created", new Object[0]);
            return false;
        }
        mediaPlayer.setDisplay(this.bsP);
        this.Jc();
        return true;
    }
    
    @TargetApi(16)
    public final void c(final File file) {
        if (file == null || TextUtils.isEmpty((CharSequence)file.getPath())) {
            E.e("WelcomeTour", "Welcome video subtitles file is null", new Object[0]);
            return;
        }
        if (this.bsR == null) {
            E.g("WelcomeTour", "mMediaPlayer is null", this.bsR);
            return;
        }
    Label_0107_Outer:
        while (true) {
            while (true) {
            Label_0212:
                while (true) {
                    int n;
                    try {
                        this.bsR.addTimedTextSource(file.getPath(), "application/x-subrip");
                        final MediaPlayer$TrackInfo[] trackInfo = this.bsR.getTrackInfo();
                        n = 0;
                        if (n >= trackInfo.length) {
                            break Label_0212;
                        }
                        if (trackInfo[n].getTrackType() == 3) {
                            if (n < 0) {
                                break;
                            }
                            E.c("WelcomeTour", "Welcome video subtitles found at index %d", n);
                            try {
                                this.bsR.selectTrack(n);
                                return;
                            }
                            catch (RuntimeException ex) {
                                E.d("WelcomeTour", ex, "Couldn't open subtitle file for welcome video: %s", file.getAbsolutePath());
                                return;
                            }
                        }
                    }
                    catch (IOException ex2) {
                        E.f("WelcomeTour", ex2, "Couldn't open subtitle file for welcome video: %s", file.getAbsolutePath());
                        return;
                    }
                    ++n;
                    continue Label_0107_Outer;
                }
                int n = -1;
                continue;
            }
        }
        E.e("WelcomeTour", "Subtitles not found in the media player", new Object[0]);
    }
    
    public void onClick(final View view) {
        E.c("WelcomeTour", "Video surface touched with MediaPlayer state %s", this.bsS);
        switch (y.btb[this.bsS.ordinal()]) {
            default: {}
            case 1: {
                this.Jb();
            }
            case 2:
            case 3: {
                this.Jc();
            }
        }
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        E.d("WelcomeTour", "Welcome video completed. Finishing the activity.", new Object[0]);
        a.oq().a("welcome-video", "completed", null, 0L);
        this.finish();
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.X(this.bsR.getVideoWidth(), this.bsR.getVideoHeight());
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968781);
        this.getWindow().getDecorView().setOnSystemUiVisibilityChangeListener((View$OnSystemUiVisibilityChangeListener)this);
        if (bundle != null) {
            this.bsT = bundle.getInt("welcome_video_position", 0);
            this.bsV = WelcomeVideoActivity$MediaPlayerState.values()[bundle.getInt("welcome_video_mp_state", 0)];
        }
        this.uF = this.findViewById(16908290);
        (this.bsO = (SurfaceView)this.findViewById(2131558995)).setOnClickListener((View$OnClickListener)this);
        (this.bsP = this.bsO.getHolder()).addCallback((SurfaceHolder$Callback)this);
        this.bsU = this.getWindowManager().getDefaultDisplay().getRotation();
        this.bsM = this.findViewById(2131558996);
        this.FO = (TextView)this.findViewById(2131558997);
        String s;
        String s2;
        if (this.getIntent().getBooleanExtra("gmail_new_user", false)) {
            s = "gmail_welcome_tour_video_new";
            s2 = "http://gstatic.com/android/gmail/welcome/1/new_user.mp4";
        }
        else {
            s = "gmail_welcome_tour_video_upgrading";
            s2 = "http://gstatic.com/android/gmail/welcome/1/upgrading_user.mp4";
        }
        this.bsQ = c.a(this.getContentResolver(), s, s2);
        if (TextUtils.isEmpty((CharSequence)this.bsQ)) {
            E.f("WelcomeTour", "No video specified, please set Gservices %s", s);
            a.oq().a("welcome-video", "error", "no video", 0L);
            this.finish();
        }
        this.getWindow().addFlags(128);
    }
    
    public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
        String string = null;
        switch (n2) {
            default: {
                string = Integer.toString(n2);
                break;
            }
            case 202: {
                string = "ON_PREPARE_TIMEOUT";
                break;
            }
            case 200: {
                string = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
                break;
            }
            case -110: {
                string = "MEDIA_ERROR_TIMED_OUT";
                break;
            }
            case -1004: {
                string = "MEDIA_ERROR_IO";
                break;
            }
            case -1005: {
                string = "ERROR_CONNECTION_LOST";
                break;
            }
            case -1007: {
                string = "MEDIA_ERROR_MALFORMED";
                break;
            }
            case -1010: {
                string = "MEDIA_ERROR_UNSUPPORTED";
                break;
            }
        }
        a.oq().a("welcome-video", "mp_error", string, 0L);
        E.e("WelcomeTour", "Welcome video encountered a media player error what=%d extra=%s", n, string);
        this.setResult(1);
        this.finish();
        return true;
    }
    
    public boolean onInfo(final MediaPlayer mediaPlayer, final int n, final int n2) {
        String string = null;
        switch (n) {
            default: {
                string = Integer.toString(n);
                break;
            }
            case 1: {
                string = "MEDIA_INFO_UNKNOWN";
                break;
            }
            case 3: {
                string = "MEDIA_INFO_VIDEO_RENDERING_START";
                break;
            }
            case 700: {
                string = "MEDIA_INFO_VIDEO_TRACK_LAGGING";
                break;
            }
            case 701: {
                string = "MEDIA_INFO_BUFFERING_START";
                break;
            }
            case 702: {
                string = "MEDIA_INFO_BUFFERING_END";
                break;
            }
            case 800: {
                string = "MEDIA_INFO_BAD_INTERLEAVING";
                break;
            }
            case 801: {
                string = "MEDIA_INFO_NOT_SEEKABLE";
                break;
            }
            case 802: {
                string = "MEDIA_INFO_METADATA_UPDATE";
                break;
            }
            case 901: {
                string = "MEDIA_INFO_UNSUPPORTED_SUBTITLE";
                break;
            }
            case 902: {
                string = "MEDIA_INFO_SUBTITLE_TIMED_OUT";
                break;
            }
        }
        E.c("WelcomeTour", "Welcome video info what=%s extra=%d", string, n2);
        a.oq().a("welcome-video", "mp_info", string, 0L);
        return false;
    }
    
    protected void onPause() {
        this.Jb();
        super.onPause();
    }
    
    public void onPrepared(final MediaPlayer mediaPlayer) {
        final long n = System.currentTimeMillis() - this.bta;
        E.c("WelcomeTour", "Welcome Video is ready after %d ms.", n);
        a.oq().a("welcome-video", n, "MediaPlayer", "onReady");
        this.bsS = WelcomeVideoActivity$MediaPlayerState.btf;
        this.X(this.bsR.getVideoWidth(), this.bsR.getVideoHeight());
        this.bsO.setVisibility(0);
        if (Build$VERSION.SDK_INT < 16) {
            E.d("WelcomeTour", "Subtitles are not supported in Android API level %d. Please upgrade to API level %d or greater.", Build$VERSION.SDK_INT, 16);
        }
        else {
            final Locale locale = this.getResources().getConfiguration().locale;
            if (locale == null || Locale.ENGLISH.getLanguage().equals(locale.getLanguage())) {
                E.c("WelcomeTour", "No need to display subtitles since your locale is English.", new Object[0]);
            }
            else {
                final boolean booleanExtra = this.getIntent().getBooleanExtra("gmail_new_user", false);
                this.bsR.setOnTimedTextListener((MediaPlayer$OnTimedTextListener)new z(this, (byte)0));
                new SubtitleDownloadAsyncTask((Context)this, this, booleanExtra).execute((Object[])new Locale[] { locale });
            }
        }
        this.bsM.setVisibility(8);
    }
    
    protected void onRestart() {
        super.onRestart();
        this.bsO.setVisibility(8);
        this.bsM.setVisibility(0);
    }
    
    protected void onResume() {
        super.onResume();
        if (this.bsV != WelcomeVideoActivity$MediaPlayerState.bth) {
            this.Jc();
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.bsR != null && this.bsS != WelcomeVideoActivity$MediaPlayerState.btl) {
            int n;
            if (this.bsT == 0) {
                n = this.bsR.getCurrentPosition();
            }
            else {
                n = this.bsT;
            }
            int n2;
            if (this.bsV == null) {
                n2 = this.bsS.ordinal();
            }
            else {
                n2 = this.bsV.ordinal();
            }
            E.c("WelcomeTour", "Welcome video position is %dms. Saved in instance state.", n);
            bundle.putInt("welcome_video_position", n);
            bundle.putInt("welcome_video_mp_state", n2);
        }
    }
    
    public void onSeekComplete(final MediaPlayer mediaPlayer) {
        E.d("WelcomeTour", "Seek complete", new Object[0]);
        if (this.bsV == WelcomeVideoActivity$MediaPlayerState.bth) {
            this.Jb();
        }
        this.bsV = null;
        this.bsT = 0;
    }
    
    protected void onStart() {
        super.onStart();
        this.bsR = new MediaPlayer();
        this.bsS = WelcomeVideoActivity$MediaPlayerState.btd;
        this.bsR.setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
        this.bsR.setOnVideoSizeChangedListener((MediaPlayer$OnVideoSizeChangedListener)this);
        this.bsR.setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
        this.bsR.setOnInfoListener((MediaPlayer$OnInfoListener)this);
        this.bsR.setOnErrorListener((MediaPlayer$OnErrorListener)this);
        this.bsR.setAudioStreamType(3);
        try {
            E.c("WelcomeTour", "Initializing Welcome video %s ...", this.bsQ);
            final Uri parse = Uri.parse(this.bsQ);
            if (!parse.isAbsolute()) {
                E.g("WelcomeTour", "Cannot load Welcome video located at relative URL %s", parse);
                a.oq().a("welcome-video", "error", "bad_url", 0L);
                this.finish();
            }
            else {
                if (this.bsS == WelcomeVideoActivity$MediaPlayerState.btd) {
                    goto Label_0244;
                }
                a.oq().a("welcome-video", "error", "mp_state", this.bsS.ordinal());
                E.g("WelcomeTour", "Only an Idle media player can be prepared, but its state is %s", this.bsR);
                this.finish();
            }
            a.oq().e(this);
        }
        catch (IOException ex) {}
        catch (IllegalArgumentException ex2) {
            goto Label_0227;
        }
    }
    
    protected void onStop() {
        this.getWindow().clearFlags(128);
        synchronized (this.bsZ) {
            if (this.bsR != null) {
                if (this.bsS != WelcomeVideoActivity$MediaPlayerState.btl) {
                    this.bsT = this.bsR.getCurrentPosition();
                    E.c("WelcomeTour", "Welcome video position is %dms.", this.bsT);
                }
                E.d("WelcomeTour", "Welcome video releases the media player", new Object[0]);
                this.bsR.release();
                this.bsR = null;
            }
            // monitorexit(this.bsZ)
            a.oq().f(this);
            super.onStop();
        }
    }
    
    public void onSystemUiVisibilityChange(final int n) {
        if ((n & 0x2) == 0x0) {
            this.Jb();
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        E.d("WelcomeTour", "Touched outside the welcome video. Finishing the activity.", new Object[0]);
        a.oq().a("welcome-video", "touched_outside", null, 0L);
        this.finish();
        return true;
    }
    
    public void onVideoSizeChanged(final MediaPlayer mediaPlayer, final int n, final int n2) {
        E.c("WelcomeTour", "Size of welcome video has change to %dx%d", n, n2);
    }
    
    public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
    }
    
    public void surfaceCreated(final SurfaceHolder surfaceHolder) {
        E.b("WelcomeTour", "Welcome video: SurfaceView created", new Object[0]);
        this.bsN = true;
        if (this.bsS == WelcomeVideoActivity$MediaPlayerState.btf) {
            if (!this.a(this.bsR)) {
                E.f("WelcomeTour", "Welcome Video still cannot start.", new Object[0]);
                this.finish();
            }
            return;
        }
        E.c("WelcomeTour", "Welcome Video container is ready, but the player is %s and not prepared yet. Please wait.", this.bsS);
    }
    
    public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
        this.bsN = false;
    }
}
