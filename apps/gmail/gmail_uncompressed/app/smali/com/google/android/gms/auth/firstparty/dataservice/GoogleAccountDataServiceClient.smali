.class public final Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/dataservice/b;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/auth/firstparty/dataservice/b",
            "<TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.auth.DATA_PROXY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/d;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/h;

    invoke-direct {v1}, Lcom/google/android/gms/common/h;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/h;->Kn()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/H;->f(Landroid/os/IBinder;)Lcom/google/android/gms/auth/firstparty/dataservice/G;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/b;->a(Lcom/google/android/gms/auth/firstparty/dataservice/G;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "GoogleAccountDataServiceClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[GoogleAccountDataServiceClient]  Interrupted when getting service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeInterruptedException;

    invoke-direct {v4, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeInterruptedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    const-string v4, "GoogleAccountDataServiceClient"

    const-string v5, "[GoogleAccountDataServiceClient]  RemoteException when executing call!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeRemoteException;

    invoke-direct {v4, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 1

    const-string v0, "TokenRequest cannot be null!"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/G;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/firstparty/dataservice/a;-><init>(Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;->a(Lcom/google/android/gms/auth/firstparty/dataservice/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    return-object v0
.end method
