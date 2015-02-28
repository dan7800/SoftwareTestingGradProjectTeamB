.class public interface abstract Lcom/google/android/gms/games/multiplayer/Participant;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/e",
        "<",
        "Lcom/google/android/gms/games/multiplayer/Participant;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract NR()Landroid/net/Uri;
.end method

.method public abstract NS()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract NT()Landroid/net/Uri;
.end method

.method public abstract NU()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract OG()Lcom/google/android/gms/games/Player;
.end method

.method public abstract OP()Ljava/lang/String;
.end method

.method public abstract PB()Z
.end method

.method public abstract PC()Ljava/lang/String;
.end method

.method public abstract PD()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.end method

.method public abstract getCapabilities()I
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method
