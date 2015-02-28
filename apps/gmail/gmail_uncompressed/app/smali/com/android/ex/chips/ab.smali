.class final Lcom/android/ex/chips/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/H;


# instance fields
.field final synthetic afl:Ljava/util/ArrayList;

.field final synthetic afm:Lcom/android/ex/chips/aa;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/aa;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2751
    iput-object p1, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    iput-object p2, p0, Lcom/android/ex/chips/ab;->afl:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/ae;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2754
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2756
    iget-object v0, p0, Lcom/android/ex/chips/ab;->afl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    .line 2758
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/ex/chips/ae;->H(J)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    iget-object v4, v4, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->mL()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2762
    iget-object v4, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    iget-object v4, v4, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->aN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/ae;

    invoke-static {v4, v0}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;

    move-result-object v0

    .line 2766
    :goto_1
    if-eqz v0, :cond_0

    .line 2767
    iget-object v4, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    invoke-static {v4, v0}, Lcom/android/ex/chips/aa;->a(Lcom/android/ex/chips/aa;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2769
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2772
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    iget-object v1, p0, Lcom/android/ex/chips/ab;->afl:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/aa;->a(Lcom/android/ex/chips/aa;Ljava/util/List;Ljava/util/List;)V

    .line 2773
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final c(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2777
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2780
    iget-object v0, p0, Lcom/android/ex/chips/ab;->afl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    .line 2781
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/ex/chips/ae;->H(J)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    iget-object v3, v3, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->mL()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2784
    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2786
    iget-object v3, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/ex/chips/aa;->a(Lcom/android/ex/chips/aa;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2788
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2791
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2795
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/ab;->afm:Lcom/android/ex/chips/aa;

    iget-object v2, p0, Lcom/android/ex/chips/ab;->afl:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Lcom/android/ex/chips/aa;->a(Lcom/android/ex/chips/aa;Ljava/util/List;Ljava/util/List;)V

    .line 2796
    return-void
.end method
