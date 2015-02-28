.class final Lcom/android/ex/chips/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/ex/chips/H;


# instance fields
.field final synthetic afg:Ljava/util/ArrayList;

.field final synthetic afh:Lcom/android/ex/chips/U;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/U;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2878
    iput-object p1, p0, Lcom/android/ex/chips/V;->afh:Lcom/android/ex/chips/U;

    iput-object p2, p0, Lcom/android/ex/chips/V;->afg:Ljava/util/ArrayList;

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
    .line 2882
    iget-object v0, p0, Lcom/android/ex/chips/V;->afg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    .line 2883
    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/ex/chips/ae;->H(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/chips/V;->afh:Lcom/android/ex/chips/U;

    iget-object v1, v1, Lcom/android/ex/chips/U;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->mL()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2887
    iget-object v1, p0, Lcom/android/ex/chips/V;->afh:Lcom/android/ex/chips/U;

    iget-object v3, v1, Lcom/android/ex/chips/U;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/chips/ae;->mU()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->aN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/ae;

    invoke-static {v3, v1}, Lcom/android/ex/chips/RecipientEditTextView;->b(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/ae;

    move-result-object v1

    .line 2890
    if-eqz v1, :cond_0

    .line 2891
    iget-object v3, p0, Lcom/android/ex/chips/V;->afh:Lcom/android/ex/chips/U;

    iget-object v3, v3, Lcom/android/ex/chips/U;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->e(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/ex/chips/W;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/ex/chips/W;-><init>(Lcom/android/ex/chips/V;Lcom/android/ex/chips/a/b;Lcom/android/ex/chips/ae;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2900
    :cond_1
    return-void
.end method

.method public final c(Ljava/util/Set;)V
    .locals 0
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
    .line 2905
    return-void
.end method
