.class public final Lcom/google/android/gm/welcome/B;
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

.field private final vk:I


# direct methods
.method public constructor <init>(Lcom/google/android/gm/welcome/WelcomeVideoActivity;I)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/google/android/gm/welcome/B;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 748
    iput p2, p0, Lcom/google/android/gm/welcome/B;->vk:I

    .line 749
    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/android/gm/welcome/B;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->b(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/B;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->c(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/google/android/gm/welcome/B;->btc:Lcom/google/android/gm/welcome/WelcomeVideoActivity;

    invoke-static {v0}, Lcom/google/android/gm/welcome/WelcomeVideoActivity;->c(Lcom/google/android/gm/welcome/WelcomeVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gm/welcome/B;->vk:I

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 757
    const-string v0, "WelcomeTour"

    const-string v2, "Resuming video from %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gm/welcome/B;->vk:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 759
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    const/4 v0, 0x0

    return-object v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/google/android/gm/welcome/B;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
