.class public Lcom/google/android/gms/internal/ag;
.super Lcom/google/android/gms/drive/metadata/internal/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/k",
        "<",
        "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 5

    const-string v0, "customProperties"

    const-string v1, "customProperties"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "customPropertiesExtra"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x4c4b40

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/metadata/internal/k;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method