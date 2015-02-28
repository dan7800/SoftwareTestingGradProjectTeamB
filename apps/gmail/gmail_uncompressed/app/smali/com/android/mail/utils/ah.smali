.class final Lcom/android/mail/utils/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/mail/utils/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/android/mail/utils/ag;->Bj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 261
    :try_start_0
    invoke-static {}, Lcom/android/mail/utils/ag;->Bk()I

    .line 262
    invoke-static {}, Lcom/android/mail/utils/ag;->Bl()Ljava/lang/String;

    .line 263
    invoke-static {}, Lcom/android/mail/utils/ag;->Bm()Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/android/mail/utils/ag;->Bn()Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/android/mail/utils/ag;->Bo()I

    .line 266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onLowMemory()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method
