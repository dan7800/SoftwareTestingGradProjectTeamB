.class public abstract Lcom/android/mail/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final axO:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/mail/i/d;->axO:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    sget-object v1, Lcom/android/mail/i/d;->axO:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/i/d;->j(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x1

    .line 39
    :cond_0
    return v0
.end method

.method protected abstract j(Landroid/content/Context;I)V
.end method
