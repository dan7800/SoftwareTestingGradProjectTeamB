.class public final Lcom/google/android/gms/drive/n;
.super Ljava/lang/Object;


# instance fields
.field private bGC:Ljava/lang/String;

.field private bGD:[Ljava/lang/String;

.field private bGE:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/api/n;)Landroid/content/IntentSender;
    .locals 5

    invoke-interface {p1}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/G;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/n;->bGD:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/n;->bGD:[Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/google/android/gms/drive/a;->bBI:Lcom/google/android/gms/common/api/h;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/W;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/W;->Mb()Lcom/google/android/gms/drive/internal/c;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/n;->bGC:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/n;->bGD:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/drive/n;->bGE:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/c;->a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect Drive Play Service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
