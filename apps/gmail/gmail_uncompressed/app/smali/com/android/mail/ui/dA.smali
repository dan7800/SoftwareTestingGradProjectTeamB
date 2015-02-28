.class public final Lcom/android/mail/ui/dA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private fh:Ljava/util/concurrent/atomic/AtomicInteger;

.field private kr:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/dA;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/dA;->mHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/dA;->kr:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/mail/ui/dA;->fh:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final setEnabled(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/android/mail/ui/dA;->kr:Z

    .line 80
    iget-boolean v0, p0, Lcom/android/mail/ui/dA;->kr:Z

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/mail/ui/dA;->fh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 82
    if-lez v0, :cond_0

    .line 83
    sget-object v1, Lcom/android/mail/ui/dA;->mW:Ljava/lang/String;

    const-string v2, "Disable UiHandler. Dropping %d Runnables."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/dA;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    :cond_1
    return-void
.end method
