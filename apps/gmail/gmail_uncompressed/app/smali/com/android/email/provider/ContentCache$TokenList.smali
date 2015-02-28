.class Lcom/android/email/provider/ContentCache$TokenList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/email/provider/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLogTag:Ljava/lang/String;


# virtual methods
.method final invalidate()V
    .locals 2

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    .line 210
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/c;

    .line 211
    invoke-virtual {v0}, Lcom/android/email/provider/c;->invalidate()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$TokenList;->clear()V

    .line 214
    return-void
.end method
