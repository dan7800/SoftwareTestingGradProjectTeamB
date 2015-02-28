.class final Lcom/android/ex/chips/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 2420
    iput-object p1, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;B)V
    .locals 0

    .prologue
    .line 2420
    invoke-direct {p0, p1}, Lcom/android/ex/chips/ad;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2428
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mL()Landroid/text/Spannable;

    move-result-object v2

    .line 2429
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v3, Lcom/android/ex/chips/a/b;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    .line 2431
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 2432
    invoke-interface {v2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->p(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2435
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->p(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/d;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2437
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->q(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2485
    :cond_2
    :goto_1
    return-void

    .line 2442
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->r(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2446
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2447
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->g(Lcom/android/ex/chips/a/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2448
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, v3}, Lcom/android/ex/chips/RecipientEditTextView;->setCursorVisible(Z)V

    .line 2449
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v2, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/RecipientEditTextView;->setSelection(I)V

    .line 2450
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->q(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 2455
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 2458
    if-le v0, v3, :cond_2

    .line 2459
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2460
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->s(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto :goto_1

    .line 2464
    :cond_5
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 2465
    :goto_2
    iget-object v1, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2466
    if-eq v0, v1, :cond_7

    .line 2467
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 2471
    :goto_3
    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 2472
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mQ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2475
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2476
    iget-object v1, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->t(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2477
    iget-object v2, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v2}, Lcom/android/ex/chips/RecipientEditTextView;->t(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2479
    iget-object v1, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1, v0}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2480
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->s(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto/16 :goto_1

    .line 2464
    :cond_6
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionEnd()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2469
    :cond_7
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    goto :goto_3
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 2525
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    .line 2492
    sub-int v0, p3, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2495
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getSelectionStart()I

    move-result v1

    .line 2496
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mL()Landroid/text/Spannable;

    move-result-object v0

    const-class v2, Lcom/android/ex/chips/a/b;

    invoke-interface {v0, v1, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/a/b;

    .line 2498
    array-length v2, v0

    if-lez v2, :cond_1

    .line 2500
    iget-object v2, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2502
    iget-object v3, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->t(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 2503
    iget-object v1, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->t(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2504
    add-int/lit8 v1, v1, 0x1

    .line 2505
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v1, v4, :cond_0

    .line 2506
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 2508
    :cond_0
    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2509
    iget-object v1, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->mL()Landroid/text/Spannable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2520
    :cond_1
    :goto_0
    return-void

    .line 2511
    :cond_2
    if-le p4, p3, :cond_1

    .line 2512
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->d(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->g(Lcom/android/ex/chips/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2514
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEditTextView;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2515
    iget-object v0, p0, Lcom/android/ex/chips/ad;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->s(Lcom/android/ex/chips/RecipientEditTextView;)V

    goto :goto_0
.end method
