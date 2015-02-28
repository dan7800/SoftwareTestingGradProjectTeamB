.class public Lcom/google/android/gm/welcome/WelcomeVideoActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Lcom/google/android/gm/welcome/n;


# instance fields
.field private FO:Landroid/widget/TextView;

.field private bsM:Landroid/view/View;

.field private bsN:Z

.field private bsO:Landroid/view/SurfaceView;

.field private bsP:Landroid/view/SurfaceHolder;

.field private bsQ:Ljava/lang/String;

.field private bsR:Landroid/media/MediaPlayer;

.field private bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field private bsT:I

.field private bsU:I

.field private bsV:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field private bsW:Lcom/google/android/gm/welcome/C;

.field private bsX:Lcom/google/android/gm/welcome/A;

.field private bsY:Lcom/google/android/gm/welcome/B;

.field private final bsZ:Ljava/lang/Object;

.field private bta:J

.field private uF:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    sget-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btd:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsZ:Ljava/lang/Object;

    .line 743
    return-void
.end method

.method private Jb()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Lcom/google/android/gm/welcome/A;

    invoke-direct {v0, p0}, Lcom/google/android/gm/welcome/A;-><init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsX:Lcom/google/android/gm/welcome/A;

    .line 523
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsX:Lcom/google/android/gm/welcome/A;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/welcome/A;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 524
    return-void
.end method

.method private Jc()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btf:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btg:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bth:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btj:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WelcomeTour video cannot be started when player is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    const-string v1, "WelcomeTour"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    new-instance v0, Lcom/google/android/gm/welcome/C;

    invoke-direct {v0, p0, v5}, Lcom/google/android/gm/welcome/C;-><init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;B)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsW:Lcom/google/android/gm/welcome/C;

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsW:Lcom/google/android/gm/welcome/C;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/welcome/C;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 544
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    if-lez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 546
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    new-instance v1, Lcom/google/android/gm/welcome/B;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gm/welcome/B;-><init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;I)V

    iput-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsY:Lcom/google/android/gm/welcome/B;

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsY:Lcom/google/android/gm/welcome/B;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/welcome/B;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private X(II)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 483
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsU:I

    sub-int v0, v3, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    .line 484
    :goto_0
    iput v3, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsU:I

    .line 487
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->uF:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 489
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->uF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 492
    :goto_2
    div-float v4, v3, v0

    .line 493
    int-to-float v5, p1

    int-to-float v6, p2

    div-float/2addr v5, v6

    .line 495
    iget-object v6, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsO:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 496
    cmpl-float v7, v5, v4

    if-eqz v7, :cond_0

    .line 498
    cmpl-float v4, v5, v4

    if-lez v4, :cond_4

    .line 501
    float-to-int v4, v3

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    div-float v4, v3, v5

    float-to-int v4, v4

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 513
    :cond_0
    :goto_3
    const-string v4, "WelcomeTour"

    const-string v5, "Welcome video surface adjusted to %dx%d on a screen of %.0fx%.0f for a video of %dx%d"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v4, v5, v7}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 518
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsO:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    return-void

    :cond_1
    move v0, v2

    .line 483
    goto :goto_0

    .line 487
    :cond_2
    iget-object v3, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->uF:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->uF:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    .line 508
    :cond_4
    float-to-int v4, v0

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 511
    mul-float v4, v0, v5

    float-to-int v4, v4

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->FO:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gm/welcome/WelcomeVideoActivity;Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;)Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    return-object p1
.end method

.method private a(Landroid/media/MediaPlayer;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 434
    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v3, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btf:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v2, v3, :cond_0

    .line 435
    const-string v2, "WelcomeTour"

    const-string v3, "The Media player must be prepared to start, but it is in state %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 447
    :goto_0
    return v0

    .line 440
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsN:Z

    if-nez v2, :cond_1

    .line 441
    const-string v1, "WelcomeTour"

    const-string v2, "The SurfaceView in which to render the welcome video is not created"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsP:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 446
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->Jc()V

    move v0, v1

    .line 447
    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsZ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/io/File;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 377
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    const-string v0, "WelcomeTour"

    const-string v2, "Welcome video subtitles file is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 410
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 382
    const-string v0, "WelcomeTour"

    const-string v2, "mMediaPlayer is null"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 386
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-subrip"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 390
    :goto_2
    if-ltz v0, :cond_5

    .line 391
    const-string v2, "WelcomeTour"

    const-string v3, "Welcome video subtitles found at index %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 400
    :try_start_2
    const-string v2, "WelcomeTour"

    const-string v3, "Couldn\'t open subtitle file for welcome video: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    const-string v2, "WelcomeTour"

    const-string v3, "Couldn\'t open subtitle file for welcome video: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 389
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 404
    :cond_5
    :try_start_3
    const-string v0, "WelcomeTour"

    const-string v2, "Subtitles not found in the media player"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 285
    const-string v0, "WelcomeTour"

    const-string v1, "Video surface touched with MediaPlayer state %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    sget-object v0, Lcom/google/android/gm/welcome/y;->btb:[I

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 288
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->Jb()V

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->Jc()V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 564
    const-string v0, "WelcomeTour"

    const-string v1, "Welcome video completed. Finishing the activity."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 565
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v2, "completed"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 566
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->finish()V

    .line 567
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->X(II)V

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const v0, 0x7f0400cd

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    const-string v0, "welcome_video_position"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    .line 155
    invoke-static {}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->values()[Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    move-result-object v0

    const-string v1, "welcome_video_mp_state"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsV:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    .line 159
    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->uF:Landroid/view/View;

    .line 162
    const v0, 0x7f0d0253

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsO:Landroid/view/SurfaceView;

    .line 163
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsO:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsO:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsP:Landroid/view/SurfaceHolder;

    .line 165
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsP:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsU:I

    .line 169
    const v0, 0x7f0d0254

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsM:Landroid/view/View;

    .line 170
    const v0, 0x7f0d0255

    invoke-virtual {p0, v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->FO:Landroid/widget/TextView;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "gmail_new_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v1, "gmail_welcome_tour_video_new"

    .line 176
    const-string v0, "http://gstatic.com/android/gmail/welcome/1/new_user.mp4"

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsQ:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "WelcomeTour"

    const-string v2, "No video specified, please set Gservices %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v2, "error"

    const-string v3, "no video"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->finish()V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 191
    return-void

    .line 178
    :cond_2
    const-string v1, "gmail_welcome_tour_video_upgrading"

    .line 179
    const-string v0, "http://gstatic.com/android/gmail/welcome/1/upgrading_user.mp4"

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 615
    sparse-switch p3, :sswitch_data_0

    .line 640
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 643
    :goto_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v2, "mp_error"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 644
    const-string v0, "WelcomeTour"

    const-string v1, "Welcome video encountered a media player error what=%d extra=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 646
    invoke-virtual {p0, v6}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->setResult(I)V

    .line 647
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->finish()V

    .line 648
    return v6

    .line 618
    :sswitch_0
    const-string v3, "ON_PREPARE_TIMEOUT"

    goto :goto_0

    .line 621
    :sswitch_1
    const-string v3, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    goto :goto_0

    .line 624
    :sswitch_2
    const-string v3, "MEDIA_ERROR_TIMED_OUT"

    goto :goto_0

    .line 627
    :sswitch_3
    const-string v3, "MEDIA_ERROR_IO"

    goto :goto_0

    .line 631
    :sswitch_4
    const-string v3, "ERROR_CONNECTION_LOST"

    goto :goto_0

    .line 634
    :sswitch_5
    const-string v3, "MEDIA_ERROR_MALFORMED"

    goto :goto_0

    .line 637
    :sswitch_6
    const-string v3, "MEDIA_ERROR_UNSUPPORTED"

    goto :goto_0

    .line 615
    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_6
        -0x3ef -> :sswitch_5
        -0x3ed -> :sswitch_4
        -0x3ec -> :sswitch_3
        -0x6e -> :sswitch_2
        0xc8 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 572
    sparse-switch p2, :sswitch_data_0

    .line 604
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 607
    :goto_0
    const-string v0, "WelcomeTour"

    const-string v1, "Welcome video info what=%s extra=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v6

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 608
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v2, "mp_info"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 609
    return v6

    .line 574
    :sswitch_0
    const-string v3, "MEDIA_INFO_UNKNOWN"

    goto :goto_0

    .line 577
    :sswitch_1
    const-string v3, "MEDIA_INFO_VIDEO_RENDERING_START"

    goto :goto_0

    .line 580
    :sswitch_2
    const-string v3, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    goto :goto_0

    .line 583
    :sswitch_3
    const-string v3, "MEDIA_INFO_BUFFERING_START"

    goto :goto_0

    .line 586
    :sswitch_4
    const-string v3, "MEDIA_INFO_BUFFERING_END"

    goto :goto_0

    .line 589
    :sswitch_5
    const-string v3, "MEDIA_INFO_BAD_INTERLEAVING"

    goto :goto_0

    .line 592
    :sswitch_6
    const-string v3, "MEDIA_INFO_NOT_SEEKABLE"

    goto :goto_0

    .line 595
    :sswitch_7
    const-string v3, "MEDIA_INFO_METADATA_UPDATE"

    goto :goto_0

    .line 598
    :sswitch_8
    const-string v3, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    goto :goto_0

    .line 601
    :sswitch_9
    const-string v3, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    goto :goto_0

    .line 572
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_2
        0x2bd -> :sswitch_3
        0x2be -> :sswitch_4
        0x320 -> :sswitch_5
        0x321 -> :sswitch_6
        0x322 -> :sswitch_7
        0x385 -> :sswitch_8
        0x386 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->Jb()V

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bta:J

    sub-long v2, v0, v2

    .line 337
    const-string v0, "WelcomeTour"

    const-string v1, "Welcome Video is ready after %d ms."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 338
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v4, "MediaPlayer"

    const-string v5, "onReady"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btf:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    .line 343
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->X(II)V

    .line 344
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsO:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_0

    .line 348
    const-string v0, "WelcomeTour"

    const-string v1, "Subtitles are not supported in Android API level %d. Please upgrade to API level %d or greater."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsM:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 353
    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 355
    :cond_1
    const-string v0, "WelcomeTour"

    const-string v1, "No need to display subtitles since your locale is English."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gmail_new_user"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/google/android/gm/welcome/z;

    invoke-direct {v3, p0, v6}, Lcom/google/android/gm/welcome/z;-><init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;B)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    new-instance v2, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;

    invoke-direct {v2, p0, p0, v1}, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;-><init>(Landroid/content/Context;Lcom/google/android/gm/welcome/n;Z)V

    new-array v1, v7, [Ljava/util/Locale;

    aput-object v0, v1, v6

    invoke-virtual {v2, v1}, Lcom/google/android/gm/welcome/SubtitleDownloadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 197
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsO:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsM:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsV:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bth:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v0, v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->Jc()V

    .line 238
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btl:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v0, v1, :cond_0

    .line 272
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsV:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->ordinal()I

    move-result v1

    .line 276
    :goto_1
    const-string v2, "WelcomeTour"

    const-string v3, "Welcome video position is %dms. Saved in instance state."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 278
    const-string v2, "welcome_video_position"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string v0, "welcome_video_mp_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    :cond_0
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsV:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->ordinal()I

    move-result v1

    goto :goto_1
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 552
    const-string v0, "WelcomeTour"

    const-string v1, "Seek complete"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsV:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bth:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-ne v0, v1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->Jb()V

    .line 558
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsV:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    .line 559
    iput v3, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    .line 560
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 206
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    .line 207
    sget-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btd:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    .line 208
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 216
    :try_start_0
    const-string v0, "WelcomeTour"

    const-string v1, "Initializing Welcome video %s ..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsQ:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WelcomeTour"

    const-string v2, "Cannot load Welcome video located at relative URL %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v2, "error"

    const-string v3, "bad_url"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    :goto_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 223
    return-void

    .line 216
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btd:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v2, "error"

    const-string v3, "mp_state"

    iget-object v4, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-virtual {v4}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->ordinal()I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, "WelcomeTour"

    const-string v1, "Only an Idle media player can be prepared, but its state is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    :goto_1
    const-string v1, "WelcomeTour"

    const-string v2, "Error while preparing welcome video"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 216
    :cond_1
    :try_start_2
    const-string v1, "WelcomeTour"

    const-string v2, "Setting Welcome video source: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bte:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v0, "WelcomeTour"

    const-string v1, "Preparing media player for the Welcome video..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bta:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onStop()V
    .locals 6

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 250
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsZ:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btl:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-eq v0, v2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    .line 254
    const-string v0, "WelcomeTour"

    const-string v2, "Welcome video position is %dms."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    :cond_0
    const-string v0, "WelcomeTour"

    const-string v2, "Welcome video releases the media player"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 257
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    .line 260
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 265
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 766
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 767
    invoke-direct {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->Jb()V

    .line 769
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 301
    const-string v0, "WelcomeTour"

    const-string v1, "Touched outside the welcome video. Finishing the activity."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome-video"

    const-string v2, "touched_outside"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 303
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->finish()V

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 5

    .prologue
    .line 452
    const-string v0, "WelcomeTour"

    const-string v1, "Size of welcome video has change to %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 453
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 457
    const-string v0, "WelcomeTour"

    const-string v1, "Welcome video: SurfaceView created"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 458
    iput-boolean v3, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsN:Z

    .line 459
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btf:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-ne v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsR:Landroid/media/MediaPlayer;

    invoke-direct {p0, v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->a(Landroid/media/MediaPlayer;)Z

    move-result v0

    .line 461
    if-nez v0, :cond_0

    .line 462
    const-string v0, "WelcomeTour"

    const-string v1, "Welcome Video still cannot start."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->finish()V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string v0, "WelcomeTour"

    const-string v1, "Welcome Video container is ready, but the player is %s and not prepared yet. Please wait."

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsS:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->bsN:Z

    .line 479
    return-void
.end method
