.class public Lcom/android/emailcommon/mail/FetchProfile;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/mail/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public final lm()Lcom/android/emailcommon/mail/j;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/FetchProfile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/e;

    .line 79
    instance-of v2, v0, Lcom/android/emailcommon/mail/j;

    if-eqz v2, :cond_0

    .line 80
    check-cast v0, Lcom/android/emailcommon/mail/j;

    .line 83
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
