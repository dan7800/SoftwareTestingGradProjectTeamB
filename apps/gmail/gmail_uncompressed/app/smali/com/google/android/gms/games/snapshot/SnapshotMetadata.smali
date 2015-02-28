.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
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
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract OR()Lcom/google/android/gms/games/Game;
.end method

.method public abstract Qp()Lcom/google/android/gms/games/Player;
.end method

.method public abstract Qq()Ljava/lang/String;
.end method

.method public abstract Qr()Landroid/net/Uri;
.end method

.method public abstract Qs()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract Qt()F
.end method

.method public abstract Qu()Ljava/lang/String;
.end method

.method public abstract Qv()J
.end method

.method public abstract Qw()J
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
