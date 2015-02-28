.class final Lcom/android/ex/chips/aa;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aeX:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 2683
    iput-object p1, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;B)V
    .locals 0

    .prologue
    .line 2683
    invoke-direct {p0, p1}, Lcom/android/ex/chips/aa;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ex/chips/aa;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;
    .locals 1

    .prologue
    .line 2683
    invoke-direct {p0, p1}, Lcom/android/ex/chips/aa;->d(Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/ex/chips/aa;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2683
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/aa;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/a/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2803
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2804
    new-instance v0, Lcom/android/ex/chips/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ex/chips/ac;-><init>(Lcom/android/ex/chips/aa;Ljava/util/List;Ljava/util/List;)V

    .line 2852
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2853
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2858
    :cond_0
    :goto_0
    return-void

    .line 2855
    :cond_1
    iget-object v1, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->e(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d(Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2686
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->u(Lcom/android/ex/chips/RecipientEditTextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2692
    :goto_0
    return-object v0

    .line 2689
    :cond_0
    iget-object v1, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1, p1}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2690
    :catch_0
    move-exception v1

    .line 2691
    const-string v2, "RecipientEditTextView"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2683
    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->w(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/U;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->w(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/U;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/ex/chips/U;->cancel(Z)Z

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->v(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->v(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mR()Lcom/android/ex/chips/a;

    move-result-object v0

    new-instance v1, Lcom/android/ex/chips/ab;

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/ab;-><init>(Lcom/android/ex/chips/aa;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3, v1}, Lcom/android/ex/chips/a;->a(Ljava/util/ArrayList;Lcom/android/ex/chips/H;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onPreExecute()V
    .locals 6

    .prologue
    .line 2700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mO()[Lcom/android/ex/chips/a/b;

    move-result-object v2

    .line 2703
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2704
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->v(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2707
    iget-object v0, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->v(Lcom/android/ex/chips/RecipientEditTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2710
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2713
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    .line 2714
    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/ae;->mX()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/ex/chips/ae;->H(J)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/ex/chips/aa;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->mL()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2716
    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/aa;->d(Lcom/android/ex/chips/ae;)Lcom/android/ex/chips/a/b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2718
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2722
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/android/ex/chips/aa;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2723
    return-void
.end method
