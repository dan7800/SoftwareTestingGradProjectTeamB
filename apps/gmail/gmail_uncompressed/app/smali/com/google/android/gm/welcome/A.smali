.class public final Lcom/google/android/gm/welcome/A;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/google/android/gm/welcome/A;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/gm/welcome/A;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->b(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/A;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->e(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    move-result-object v0

    sget-object v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btg:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/welcome/A;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->c(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/A;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->c(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 727
    const/4 v0, 0x0

    return-object v0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    const-string v2, "WelcomeTour"

    const-string v3, "Error trying to pause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/google/android/gm/welcome/A;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/gm/welcome/A;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/A;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bth:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-static {v0, v1}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->a(Lcom/google/android/gm/welcome/WelcomeVideoActivity;Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;)Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    return-void
.end method
