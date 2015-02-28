.class public final Lcom/google/android/gms/common/internal/ClientSettings;
.super Ljava/lang/Object;


# instance fields
.field private final bCq:Landroid/view/View;

.field private final bEK:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->bEK:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ClientSettings;->bCq:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final KT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->bEK:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->KT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final KU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->bEK:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->KU()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final KV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings;->bEK:Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings$ParcelableClientSettings;->KV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
