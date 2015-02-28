.class final Lcom/android/mail/utils/ae;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic aQH:Lcom/android/mail/utils/ad;

.field private yt:Z


# direct methods
.method private constructor <init>(Lcom/android/mail/utils/ad;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mail/utils/ae;->aQH:Lcom/android/mail/utils/ad;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/utils/ad;B)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/mail/utils/ae;-><init>(Lcom/android/mail/utils/ad;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/utils/ae;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/mail/utils/ae;->yt:Z

    return v0
.end method


# virtual methods
.method public final cancel()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/utils/ae;->yt:Z

    .line 161
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/mail/utils/ae;->aQH:Lcom/android/mail/utils/ad;

    invoke-static {v0}, Lcom/android/mail/utils/ad;->a(Lcom/android/mail/utils/ad;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/utils/af;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mail/utils/af;-><init>(Lcom/android/mail/utils/ae;B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method
