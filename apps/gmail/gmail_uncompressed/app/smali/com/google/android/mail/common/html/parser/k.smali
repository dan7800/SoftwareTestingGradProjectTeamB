.class public abstract Lcom/google/android/mail/common/html/parser/k;
.super Lcom/google/android/mail/common/html/parser/i;
.source "SourceFile"


# instance fields
.field private final cue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/i;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    .line 347
    return-void
.end method


# virtual methods
.method public final Wl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/m;)V
    .locals 0

    .prologue
    .line 393
    invoke-interface {p1, p0}, Lcom/google/android/mail/common/html/parser/m;->a(Lcom/google/android/mail/common/html/parser/k;)V

    .line 394
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    if-ne p1, p0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    instance-of v2, p1, Lcom/google/android/mail/common/html/parser/k;

    if-eqz v2, :cond_3

    .line 372
    check-cast p1, Lcom/google/android/mail/common/html/parser/k;

    .line 374
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 377
    goto :goto_0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/k;->cue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/android/mail/common/html/parser/k;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
