.class final Lcom/google/android/mail/common/base/B;
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
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cpl:Lcom/google/android/mail/common/base/A;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/A;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/mail/common/base/B;->cpl:Lcom/google/android/mail/common/base/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/B;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/mail/common/base/B;->cpl:Lcom/google/android/mail/common/base/A;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/base/A;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
