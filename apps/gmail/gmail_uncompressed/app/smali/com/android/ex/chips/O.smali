.class final Lcom/android/ex/chips/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/h;


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mD()V

    .line 510
    iget-object v0, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->f(Lcom/android/ex/chips/RecipientEditTextView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/ex/chips/D;->adD:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->h(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->g(Lcom/android/ex/chips/RecipientEditTextView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 519
    iget-object v0, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->i(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 520
    iget-object v0, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->i(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->g(Lcom/android/ex/chips/RecipientEditTextView;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->h(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->setDropDownHeight(I)V

    .line 522
    iget-object v1, p0, Lcom/android/ex/chips/O;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;I)I

    .line 523
    return-void

    .line 522
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
