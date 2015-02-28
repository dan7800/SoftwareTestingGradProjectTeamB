.class public final Lcom/android/mail/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private axh:J

.field private axi:Ljava/lang/String;

.field private final kr:Z

.field private ky:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/f/a;-><init>(B)V

    .line 41
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/f/a;->kr:Z

    .line 45
    return-void
.end method


# virtual methods
.method public final bA(Ljava/lang/String;)Lcom/android/mail/f/a;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/mail/f/a;->axi:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/f/a;->axh:J

    iput-wide v0, p0, Lcom/android/mail/f/a;->ky:J

    .line 59
    iget-object v0, p0, Lcom/android/mail/f/a;->axi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimpleTimer"

    :goto_0
    const-string v1, "timer START"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/mail/f/a;->axi:Ljava/lang/String;

    goto :goto_0
.end method
