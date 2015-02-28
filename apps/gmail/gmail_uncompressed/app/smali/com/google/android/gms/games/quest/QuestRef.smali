.class public final Lcom/google/android/gms/games/quest/QuestRef;
.super Lcom/google/android/gms/common/data/h;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quest;


# instance fields
.field private final bOt:I

.field private final bPi:Lcom/google/android/gms/games/Game;


# direct methods
.method private Qj()Lcom/google/android/gms/games/quest/Quest;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/quest/QuestEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/quest/QuestRef;->Qj()Lcom/google/android/gms/games/quest/Quest;

    move-result-object v0

    return-object v0
.end method

.method public final NR()Landroid/net/Uri;
    .locals 1

    const-string v0, "quest_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->fS(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final NS()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OJ()J
    .locals 2

    const-string v0, "quest_last_updated_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final OR()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->bPi:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final Qb()Ljava/lang/String;
    .locals 1

    const-string v0, "external_quest_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Qc()Landroid/net/Uri;
    .locals 1

    const-string v0, "quest_banner_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->fS(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final Qd()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_banner_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Qe()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/quest/Milestone;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/gms/games/quest/QuestRef;->bOt:I

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/games/quest/QuestRef;->bOt:I

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/games/quest/MilestoneRef;

    iget-object v3, p0, Lcom/google/android/gms/games/quest/QuestRef;->bDT:Lcom/google/android/gms/common/data/DataHolder;

    iget v4, p0, Lcom/google/android/gms/games/quest/QuestRef;->bEo:I

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/games/quest/MilestoneRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final Qf()J
    .locals 2

    const-string v0, "accepted_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Qg()J
    .locals 2

    const-string v0, "quest_end_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Qh()J
    .locals 2

    const-string v0, "notification_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Qi()J
    .locals 2

    const-string v0, "quest_start_ts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "quest_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    const-string v0, "quest_state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getType()I
    .locals 1

    const-string v0, "quest_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/QuestRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->a(Lcom/google/android/gms/games/quest/Quest;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/QuestEntity;->b(Lcom/google/android/gms/games/quest/Quest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/quest/QuestRef;->Qj()Lcom/google/android/gms/games/quest/Quest;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/QuestEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/QuestEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
