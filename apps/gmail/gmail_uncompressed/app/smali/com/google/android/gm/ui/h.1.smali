.class public final Lcom/google/android/gm/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private bpP:Lcom/google/android/gm/ui/g;

.field private bpQ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    if-eqz v0, :cond_0

    .line 421
    iget-boolean v0, p0, Lcom/google/android/gm/ui/h;->bpQ:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 428
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    .line 397
    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    check-cast p1, Landroid/text/Spanned;

    .line 402
    add-int v0, p2, p3

    const-class v2, Lcom/google/android/gm/ui/g;

    invoke-interface {p1, p2, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/ui/g;

    .line 403
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 407
    if-lez p3, :cond_0

    .line 408
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/gm/ui/h;->bpP:Lcom/google/android/gm/ui/g;

    .line 409
    if-nez p4, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gm/ui/h;->bpQ:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method
