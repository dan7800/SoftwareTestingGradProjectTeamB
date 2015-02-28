.class final Lcom/google/android/gm/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/R;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/google/android/gm/ui/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/people/accountswitcherview/S;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/people/accountswitcherview/S;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 833
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/ui/z;

    .line 835
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/S;->cjp:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 837
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 840
    packed-switch v1, :pswitch_data_0

    .line 853
    invoke-static {}, Lcom/google/android/gm/ui/GmailDrawerFragment;->Is()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Unexpected number of recents received: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v3, v5, v6}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    move v3, v2

    .line 858
    :goto_0
    if-lez v3, :cond_0

    .line 859
    invoke-static {v4, v3}, Lcom/android/mail/utils/ag;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 860
    iget-object v5, v0, Lcom/google/android/gm/ui/z;->bqt:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v3, v0, Lcom/google/android/gm/ui/z;->bqt:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    :goto_1
    if-lez v1, :cond_1

    .line 867
    invoke-static {v4, v1}, Lcom/android/mail/utils/ag;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 868
    iget-object v3, v0, Lcom/google/android/gm/ui/z;->bqu:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, v0, Lcom/google/android/gm/ui/z;->bqu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    :goto_2
    return-void

    :pswitch_0
    move v1, v2

    move v3, v2

    .line 843
    goto :goto_0

    .line 845
    :pswitch_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ui/C;

    invoke-virtual {v1}, Lcom/google/android/gm/ui/C;->It()I

    move-result v1

    move v3, v1

    move v1, v2

    .line 847
    goto :goto_0

    .line 849
    :pswitch_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ui/C;

    invoke-virtual {v1}, Lcom/google/android/gm/ui/C;->It()I

    move-result v3

    .line 850
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ui/C;

    invoke-virtual {v1}, Lcom/google/android/gm/ui/C;->It()I

    move-result v1

    goto :goto_0

    .line 863
    :cond_0
    iget-object v3, v0, Lcom/google/android/gm/ui/z;->bqt:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 871
    :cond_1
    iget-object v0, v0, Lcom/google/android/gm/ui/z;->bqu:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
