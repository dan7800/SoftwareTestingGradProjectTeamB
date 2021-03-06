.class public final Lcom/google/android/gms/games/multiplayer/InvitationRef;
.super Lcom/google/android/gms/common/data/h;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitation;


# instance fields
.field private final bPf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final bPi:Lcom/google/android/gms/games/Game;

.field private final bPj:Lcom/google/android/gms/games/multiplayer/ParticipantRef;


# direct methods
.method private PA()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;-><init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->PA()Lcom/google/android/gms/games/multiplayer/Invitation;

    move-result-object v0

    return-object v0
.end method

.method public final OR()Lcom/google/android/gms/games/Game;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->bPi:Lcom/google/android/gms/games/Game;

    return-object v0
.end method

.method public final Ph()Ljava/lang/String;
    .locals 1

    const-string v0, "external_invitation_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Pi()Lcom/google/android/gms/games/multiplayer/Participant;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->bPj:Lcom/google/android/gms/games/multiplayer/ParticipantRef;

    return-object v0
.end method

.method public final Pj()J
    .locals 4

    const-string v0, "creation_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "last_modified_timestamp"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Pk()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final Pl()I
    .locals 1

    const-string v0, "variant"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final Pm()I
    .locals 1

    const-string v0, "has_automatch_criteria"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "automatch_max_players"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final Pn()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Participant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/InvitationRef;->bPf:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->a(Lcom/google/android/gms/games/multiplayer/Invitation;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->b(Lcom/google/android/gms/games/multiplayer/Invitation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/InvitationRef;->PA()Lcom/google/android/gms/games/multiplayer/Invitation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/InvitationEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/multiplayer/InvitationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
