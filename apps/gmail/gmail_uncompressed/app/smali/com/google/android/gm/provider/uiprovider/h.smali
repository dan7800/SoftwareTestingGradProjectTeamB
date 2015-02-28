.class final Lcom/google/android/gm/provider/uiprovider/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/utils/W;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mail/utils/W",
        "<",
        "Lcom/google/android/gm/provider/SenderInstructions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic Q(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/google/android/gm/provider/SenderInstructions;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/SenderInstructions;->reset()V

    return-void
.end method

.method public final synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions;

    invoke-direct {v0}, Lcom/google/android/gm/provider/SenderInstructions;-><init>()V

    return-object v0
.end method
