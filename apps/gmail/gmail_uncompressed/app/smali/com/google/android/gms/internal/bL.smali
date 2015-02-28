.class public final Lcom/google/android/gms/internal/bL;
.super Lcom/google/android/gms/common/data/h;

# interfaces
.implements Lcom/google/android/gms/people/model/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/h;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final FP()Ljava/lang/String;
    .locals 1

    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bL;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Iu()Ljava/lang/String;
    .locals 1

    const-string v0, "page_gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bL;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Iv()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "page_gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bL;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Iw()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/bN;->bVZ:Lcom/google/android/gms/internal/bN;

    const-string v1, "avatar"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bL;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bN;->gt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Ix()I
    .locals 1

    const-string v0, "last_sync_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bL;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final Iy()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/bN;->bVZ:Lcom/google/android/gms/internal/bN;

    const-string v1, "cover_photo_url"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bL;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bN;->gt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bL;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bL;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
