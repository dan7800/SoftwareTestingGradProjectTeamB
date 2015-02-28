.class public final Lcom/google/android/gms/games/achievement/AchievementRef;
.super Lcom/google/android/gms/common/data/h;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# direct methods
.method private OL()Lcom/google/android/gms/games/achievement/Achievement;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;-><init>(Lcom/google/android/gms/games/achievement/Achievement;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->OL()Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v0

    return-object v0
.end method

.method public final OA()Landroid/net/Uri;
    .locals 1

    const-string v0, "unlocked_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->fS(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final OB()Ljava/lang/String;
    .locals 1

    const-string v0, "unlocked_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OC()Landroid/net/Uri;
    .locals 1

    const-string v0, "revealed_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->fS(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final OD()Ljava/lang/String;
    .locals 1

    const-string v0, "revealed_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OE()I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->cc(Z)V

    const-string v0, "total_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final OF()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->cc(Z)V

    const-string v0, "formatted_total_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final OG()Lcom/google/android/gms/games/Player;
    .locals 3

    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->bEo:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public final OH()I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->cc(Z)V

    const-string v0, "current_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final OI()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->cc(Z)V

    const-string v0, "formatted_current_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final OJ()J
    .locals 2

    const-string v0, "last_updated_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final OK()J
    .locals 2

    const-string v0, "instance_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->fR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "instance_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->fT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "definition_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    const-string v0, "instance_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final Oz()Ljava/lang/String;
    .locals 1

    const-string v0, "external_achievement_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    const-string v0, "state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->a(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->OL()Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/achievement/AchievementEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
