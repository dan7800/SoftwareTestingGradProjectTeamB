.class public final Lcom/android/mail/i/h;
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
    .line 142
    new-instance v0, Lcom/google/common/collect/z;

    invoke-direct {v0}, Lcom/google/common/collect/z;-><init>()V

    const-string v1, "default-reply-all"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "conversation-list-swipe"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "removal-action"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "display_images"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "display_sender_images_patterns_set"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "conversation-list-sender-image"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "long-press-to-select-tip-shown"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "auto-advance-mode"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "confirm-delete"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "confirm-archive"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "confirm-send"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "conversation-overview-mode"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    const-string v1, "snap-header-mode"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/z;->aH(Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/z;->Zy()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/mail/i/h;->axN:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method
