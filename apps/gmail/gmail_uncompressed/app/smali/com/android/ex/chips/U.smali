.class final Lcom/android/ex/chips/U;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/ex/chips/a/b;",
        ">;",
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
    .line 2861
    iput-object p1, p0, Lcom/android/ex/chips/U;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;B)V
    .locals 0

    .prologue
    .line 2861
    invoke-direct {p0, p1}, Lcom/android/ex/chips/U;-><init>(Lcom/android/ex/chips/RecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2861
    check-cast p1, [Ljava/util/ArrayList;

    aget-object v2, p1, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/a/b;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/ex/chips/U;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-interface {v0}, Lcom/android/ex/chips/a/b;->nf()Lcom/android/ex/chips/ae;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/ex/chips/RecipientEditTextView;->a(Lcom/android/ex/chips/ae;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/U;->aeX:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->mR()Lcom/android/ex/chips/a;

    move-result-object v0

    new-instance v1, Lcom/android/ex/chips/V;

    invoke-direct {v1, p0, v2}, Lcom/android/ex/chips/V;-><init>(Lcom/android/ex/chips/U;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3, v1}, Lcom/android/ex/chips/a;->a(Ljava/util/ArrayList;Lcom/android/ex/chips/H;)V

    const/4 v0, 0x0

    return-object v0
.end method
