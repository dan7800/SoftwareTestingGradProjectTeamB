.class public final Lcom/google/android/gms/internal/bD;
.super Lcom/google/android/gms/common/data/h;

# interfaces
.implements Lcom/google/android/gms/people/model/b;


# instance fields
.field private final bDX:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/h;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/bD;->bDX:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final Kh()Lcom/google/android/gms/people/model/AvatarReference;
    .locals 3

    const-string v0, "avatar_location"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bD;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "avatar_source"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bD;->getInteger(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Lcom/google/android/gms/people/model/AvatarReference;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/people/model/AvatarReference;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final Ki()Ljava/lang/String;
    .locals 1

    const-string v0, "person_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bD;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final RS()J
    .locals 2

    const-string v0, "cp2_contact_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bD;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final RT()J
    .locals 2

    const-string v0, "cp2_data_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bD;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final RU()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bD;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final RV()Ljava/lang/String;
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bD;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
