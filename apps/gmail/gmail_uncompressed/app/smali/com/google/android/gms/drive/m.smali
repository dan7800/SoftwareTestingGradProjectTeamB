.class public abstract Lcom/google/android/gms/drive/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/e",
        "<",
        "Lcom/google/android/gms/drive/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final LX()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/V;->bTx:Lcom/google/android/gms/drive/metadata/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/m;->a(Lcom/google/android/gms/drive/metadata/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Lcom/google/android/gms/drive/metadata/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/a",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/V;->bTN:Lcom/google/android/gms/internal/Z;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/m;->a(Lcom/google/android/gms/drive/metadata/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/V;->bTW:Lcom/google/android/gms/internal/ae;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/m;->a(Lcom/google/android/gms/drive/metadata/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
