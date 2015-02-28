.class public interface abstract Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/e;
.implements Lcom/google/android/gms/games/multiplayer/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/e",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/f;"
    }
.end annotation


# static fields
.field public static final bPy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->bPy:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method


# virtual methods
.method public abstract OJ()J
.end method

.method public abstract OR()Lcom/google/android/gms/games/Game;
.end method

.method public abstract PI()Ljava/lang/String;
.end method

.method public abstract PJ()Landroid/os/Bundle;
.end method

.method public abstract PM()Ljava/lang/String;
.end method

.method public abstract PN()I
.end method

.method public abstract PO()Ljava/lang/String;
.end method

.method public abstract PP()Ljava/lang/String;
.end method

.method public abstract PQ()Ljava/lang/String;
.end method

.method public abstract PR()[B
.end method

.method public abstract PS()I
.end method

.method public abstract PT()Z
.end method

.method public abstract PU()Ljava/lang/String;
.end method

.method public abstract Pj()J
.end method

.method public abstract Pl()I
.end method

.method public abstract Pm()I
.end method

.method public abstract getData()[B
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getVersion()I
.end method
