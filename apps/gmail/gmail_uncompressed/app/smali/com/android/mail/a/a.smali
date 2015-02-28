.class public final Lcom/android/mail/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ake:Lcom/android/mail/a/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static a(Lcom/android/mail/a/d;)V
    .locals 2

    .prologue
    .line 99
    const-class v1, Lcom/android/mail/a/a;

    monitor-enter v1

    .line 100
    :try_start_0
    sput-object p0, Lcom/android/mail/a/a;->ake:Lcom/android/mail/a/d;

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static oq()Lcom/android/mail/a/d;
    .locals 3

    .prologue
    .line 90
    const-class v1, Lcom/android/mail/a/a;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/android/mail/a/a;->ake:Lcom/android/mail/a/d;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/mail/a/b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/mail/a/b;-><init>(B)V

    sput-object v0, Lcom/android/mail/a/a;->ake:Lcom/android/mail/a/d;

    .line 94
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget-object v0, Lcom/android/mail/a/a;->ake:Lcom/android/mail/a/d;

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static or()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
