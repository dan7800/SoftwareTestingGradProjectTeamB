.class final Lcom/android/ex/chips/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic afm:Lcom/android/ex/chips/aa;

.field final synthetic afn:Ljava/util/List;

.field final synthetic afo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/aa;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/android/ex/chips/ac;->afm:Lcom/android/ex/chips/aa;

    iput-object p2, p0, Lcom/android/ex/chips/ac;->afn:Ljava/util/List;

    iput-object p3, p0, Lcom/android/ex/chips/ac;->afo:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 2807
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/android/ex/chips/ac;->afm:Lcom/android/ex/chips/aa;

    iget-object v0, v0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2809
    iget-object v0, p0, Lcom/android/ex/chips/ac;->afn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    .line 2810
    iget-object v1, p0, Lcom/android/ex/chips/ac;->afo:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/a/b;

    .line 2811
    if-eqz v1, :cond_0

    .line 2812
    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v4

    .line 2813
    invoke-interface {v1}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v7

    .line 2814
    invoke-static {v4, v7}, Lcom/android/ex/chips/F;->a(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;

    move-result-object v4

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    .line 2818
    :goto_1
    if-eqz v4, :cond_0

    .line 2820
    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 2821
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 2824
    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2826
    invoke-interface {v5, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2829
    new-instance v0, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/ex/chips/ac;->afm:Lcom/android/ex/chips/aa;

    iget-object v9, v9, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-interface {v1}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2832
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x21

    invoke-virtual {v0, v1, v3, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2838
    invoke-interface {v5, v4, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2839
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/ex/chips/a/b;->aP(Ljava/lang/String;)V

    .line 2840
    iget-object v0, p0, Lcom/android/ex/chips/ac;->afo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2842
    iget-object v0, p0, Lcom/android/ex/chips/ac;->afn:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2846
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 2847
    goto/16 :goto_0

    :cond_1
    move v4, v3

    .line 2814
    goto :goto_1

    .line 2848
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/ac;->afm:Lcom/android/ex/chips/aa;

    iget-object v0, v0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0, v5}, Lcom/android/ex/chips/RecipientEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2849
    return-void
.end method
