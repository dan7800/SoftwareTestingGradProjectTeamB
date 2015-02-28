.class final Lcom/android/mail/compose/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;

.field private awv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aww:Lcom/android/ex/chips/RecipientEditTextView;

.field private awx:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lcom/android/mail/compose/g;Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 3841
    iput-object p1, p0, Lcom/android/mail/compose/t;->awi:Lcom/android/mail/compose/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    .line 3842
    iput-object p2, p0, Lcom/android/mail/compose/t;->aww:Lcom/android/ex/chips/RecipientEditTextView;

    .line 3843
    iput-object p3, p0, Lcom/android/mail/compose/t;->awx:Landroid/text/TextWatcher;

    .line 3844
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3848
    iget-object v0, p0, Lcom/android/mail/compose/t;->awi:Lcom/android/mail/compose/g;

    iget-object v0, p0, Lcom/android/mail/compose/t;->aww:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/mail/compose/g;->A(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->l([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v0, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-eq v5, v1, :cond_3

    move v2, v3

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 3849
    iget-object v0, p0, Lcom/android/mail/compose/t;->awx:Landroid/text/TextWatcher;

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 3851
    :cond_2
    return-void

    .line 3848
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/android/mail/compose/t;->awi:Lcom/android/mail/compose/g;

    iget-object v0, p0, Lcom/android/mail/compose/t;->aww:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/mail/compose/g;->A(Lcom/android/ex/chips/RecipientEditTextView;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/compose/g;->l([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3882
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3883
    iget-object v1, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3884
    iget-object v1, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3886
    :cond_0
    iget-object v3, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/mail/compose/t;->awv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3889
    :cond_1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 3894
    return-void
.end method
