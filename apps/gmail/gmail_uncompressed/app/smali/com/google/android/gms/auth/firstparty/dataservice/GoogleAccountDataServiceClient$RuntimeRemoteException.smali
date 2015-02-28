.class public Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeRemoteException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final GE:Landroid/os/RemoteException;


# direct methods
.method public constructor <init>(Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient$RuntimeRemoteException;->GE:Landroid/os/RemoteException;

    return-void
.end method
