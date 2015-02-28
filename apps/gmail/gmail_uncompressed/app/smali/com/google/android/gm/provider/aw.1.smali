.class final Lcom/google/android/gm/provider/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/mail/common/base/C;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/mail/common/base/C",
        "<",
        "Lcom/google/android/gm/provider/MailEngine;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 910
    check-cast p1, Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/aw;->apply(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->FP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
