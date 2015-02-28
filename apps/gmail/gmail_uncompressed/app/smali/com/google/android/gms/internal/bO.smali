.class public final Lcom/google/android/gms/internal/bO;
.super Lcom/google/android/gms/common/internal/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/f",
        "<",
        "Lcom/google/android/gms/internal/bI;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile bWe:Landroid/os/Bundle;

.field private static volatile bWf:Landroid/os/Bundle;


# instance fields
.field public final bCr:Ljava/lang/String;

.field public final bWc:Ljava/lang/String;

.field private final bWd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/people/y;",
            "Lcom/google/android/gms/internal/bU;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/p;Lcom/google/android/gms/common/api/q;[Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/google/android/gms/internal/bO;->bWc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bO;->bCr:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized C(Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "use_contactables_api"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ch;->ci(Z)V

    sget-object v0, Lcom/google/android/gms/internal/bN;->bVZ:Lcom/google/android/gms/internal/bN;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bN;->B(Landroid/os/Bundle;)V

    const-string v0, "config.email_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bO;->bWe:Landroid/os/Bundle;

    const-string v0, "config.phone_type_map"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bO;->bWf:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/gms/people/y;)Lcom/google/android/gms/internal/bU;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bU;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bU;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/bU;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/people/y;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bO;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(ILandroid/os/Bundle;)Lcom/google/android/gms/common/api/Status;
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object v2

    :cond_0
    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0
.end method


# virtual methods
.method protected final La()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.service.START"

    return-object v0
.end method

.method protected final Lb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.people.internal.IPeopleService"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/m;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/internal/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;",
            "Lcom/google/android/gms/people/model/AvatarReference;",
            "Lcom/google/android/gms/people/k;",
            ")",
            "Lcom/google/android/gms/common/internal/v;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    new-instance v2, Lcom/google/android/gms/internal/bY;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/bY;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;)V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    invoke-static {p3}, Lcom/google/android/gms/internal/pi;->a(Lcom/google/android/gms/people/k;)Lcom/google/android/gms/internal/pi;

    move-result-object v3

    invoke-interface {v0, v2, p2, v3}, Lcom/google/android/gms/internal/bI;->a(Lcom/google/android/gms/internal/bF;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/internal/pi;)Lcom/google/android/gms/common/internal/v;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/android/gms/internal/bY;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/internal/v;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/bY;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/bY;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;)V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    invoke-interface {v0, v2, p2, p3, p4}, Lcom/google/android/gms/internal/bI;->c(Lcom/google/android/gms/internal/bF;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/v;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/android/gms/internal/bY;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/m;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/common/internal/v;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Lcom/google/android/gms/internal/bY;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bY;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;)V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bI;->b(Lcom/google/android/gms/internal/bF;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/v;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v6, v6}, Lcom/google/android/gms/internal/bY;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    goto :goto_0
.end method

.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "post_init_configuration"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bO;->C(Landroid/os/Bundle;)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/f;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "post_init_resolution"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/common/api/t;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    new-instance v1, Lcom/google/android/gms/internal/bV;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bV;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;)V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/bI;->a(Lcom/google/android/gms/internal/bF;Ljava/lang/String;I)Lcom/google/android/gms/common/internal/v;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/bV;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/m;Ljava/lang/String;Lcom/google/android/gms/people/b;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/d;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/b;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    new-instance v1, Lcom/google/android/gms/internal/bT;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bT;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;)V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    iget-object v2, p3, Lcom/google/android/gms/people/b;->blK:Ljava/lang/String;

    iget-object v3, p3, Lcom/google/android/gms/people/b;->cgm:Ljava/lang/String;

    iget-boolean v4, p3, Lcom/google/android/gms/people/b;->cgk:Z

    iget-object v5, p3, Lcom/google/android/gms/people/b;->cgl:Ljava/lang/String;

    iget v7, p3, Lcom/google/android/gms/people/b;->cgn:I

    iget v8, p3, Lcom/google/android/gms/people/b;->cgo:I

    iget v9, p3, Lcom/google/android/gms/people/b;->cgp:I

    iget-boolean v10, p3, Lcom/google/android/gms/people/b;->cgq:Z

    move-object v6, p2

    invoke-interface/range {v0 .. v10}, Lcom/google/android/gms/internal/bI;->a(Lcom/google/android/gms/internal/bF;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/internal/v;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v11, v11}, Lcom/google/android/gms/internal/bT;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/m;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<",
            "Lcom/google/android/gms/people/h;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    new-instance v1, Lcom/google/android/gms/internal/bX;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/bX;-><init>(Lcom/google/android/gms/internal/bO;Lcom/google/android/gms/common/api/m;)V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/bI;->a(Lcom/google/android/gms/internal/bF;ZZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/internal/bX;->a(ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/common/internal/B;Lcom/google/android/gms/common/internal/j;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "social_client_application_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/bO;->bWc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "real_client_package_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/bO;->bCr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x5e3530

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bO;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/B;->b(Lcom/google/android/gms/common/internal/y;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/people/y;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    iget-object v7, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bO;->a(Lcom/google/android/gms/people/y;)Lcom/google/android/gms/internal/bU;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    const/4 v2, 0x1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bI;->a(Lcom/google/android/gms/internal/bF;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    move v0, v6

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PeopleClient"

    const-string v2, "Failed to register listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/bZ;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/internal/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/f",
            "<",
            "Lcom/google/android/gms/internal/bI;",
            ">.com/google/android/gms/common/internal/h<*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/h;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/people/y;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bU;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bI;->a(Lcom/google/android/gms/internal/bF;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/bZ;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;JZZ)Z
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Ld()V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bI;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/bI;->a(Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PeopleClient"

    const-string v2, "Service call failed."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/bZ;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bO;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bU;

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->Le()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bI;->a(Lcom/google/android/gms/internal/bF;ZLjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PeopleClient"

    const-string v2, "Failed to unregister listener"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/bZ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bO;->bWd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/f;->disconnect()V

    return-void

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "PeopleClient"

    const-string v2, "PeopleService is in unexpected state"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/bZ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected final synthetic g(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/bJ;->G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bI;

    move-result-object v0

    return-object v0
.end method
