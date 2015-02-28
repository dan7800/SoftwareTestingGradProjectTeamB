.class public final Lcom/android/mail/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final axN:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0}, Lcom/google/common/collect/z;-><init>()V

    const-string v1, "notifications-enabled"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "notification-ringtone"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "notification-vibrate"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "notification-notify-every-message"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/mail/i/f;->axN:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method
