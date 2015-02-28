.class public interface abstract Lcom/google/android/gms/games/event/Event;
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
        "Lcom/google/android/gms/games/event/Event;",
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

.method public abstract OG()Lcom/google/android/gms/games/Player;
.end method

.method public abstract OM()Ljava/lang/String;
.end method

.method public abstract ON()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValue()J
.end method

.method public abstract isVisible()Z
.end method
