.class public Lcom/google/android/gm/provider/MailSyncAdapterService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final bmr:Ljava/lang/Object;

.field private static bms:Lcom/google/android/gm/provider/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->bmr:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 39
    sget-object v1, Lcom/google/android/gm/provider/MailSyncAdapterService;->bmr:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->bms:Lcom/google/android/gm/provider/bp;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bp;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    sget-object v1, Lcom/google/android/gm/provider/MailSyncAdapterService;->bmr:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->bms:Lcom/google/android/gm/provider/bp;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/google/android/gm/provider/bp;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/bp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gm/provider/MailSyncAdapterService;->bms:Lcom/google/android/gm/provider/bp;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
