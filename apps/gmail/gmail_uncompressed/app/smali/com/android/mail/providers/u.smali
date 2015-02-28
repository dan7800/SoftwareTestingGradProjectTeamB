.class final Lcom/android/mail/providers/u;
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
        "Lcom/android/mail/providers/v;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aBa:Lcom/android/mail/providers/t;


# direct methods
.method constructor <init>(Lcom/android/mail/providers/t;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/mail/providers/u;->aBa:Lcom/android/mail/providers/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    check-cast p1, Lcom/android/mail/providers/v;

    invoke-virtual {p0, p1}, Lcom/android/mail/providers/u;->apply(Lcom/android/mail/providers/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lcom/android/mail/providers/v;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/mail/providers/v;->aBb:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
