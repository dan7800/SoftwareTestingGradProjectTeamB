.class final Lcom/google/android/gm/welcome/C;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/android/gm/welcome/C;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;B)V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/C;-><init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V

    return-void
.end method

.method private varargs Jd()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/gm/welcome/C;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->b(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/C;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->c(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/google/android/gm/welcome/C;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->c(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 688
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/google/android/gm/welcome/C;->Jd()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/gm/welcome/C;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/C;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->d(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/C;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btg:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-static {v0, v1}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->a(Lcom/google/android/gm/welcome/WelcomeVideoActivity;Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;)Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    return-void
.end method
