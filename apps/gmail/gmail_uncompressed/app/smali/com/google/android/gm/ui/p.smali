.class final Lcom/google/android/gm/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/google/android/gm/ui/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/people/accountswitcherview/u;Lcom/google/android/gms/people/model/d;ZI)V
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 697
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/ui/q;

    move-object v1, p2

    .line 698
    check-cast v1, Lcom/google/android/gm/ui/C;

    .line 699
    iget-object v5, v0, Lcom/google/android/gm/ui/q;->bqn:Landroid/widget/TextView;

    .line 700
    invoke-virtual {v1}, Lcom/google/android/gm/ui/C;->It()I

    move-result v6

    .line 703
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chV:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 704
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chV:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 707
    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chV:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    .line 713
    :goto_0
    iget-object v7, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chV:Landroid/widget/TextView;

    const/4 v8, 0x0

    if-eqz p3, :cond_4

    :goto_1
    invoke-virtual {v7, v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 719
    :goto_2
    iget-object v3, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 723
    if-eqz v1, :cond_6

    .line 724
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :cond_0
    :goto_3
    if-nez p3, :cond_1

    if-gtz v6, :cond_7

    .line 734
    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    :goto_4
    iget-object v1, v0, Lcom/google/android/gm/ui/q;->bqm:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 741
    iget-object v0, v0, Lcom/google/android/gm/ui/q;->bqm:Landroid/widget/ImageView;

    if-eqz p3, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    :cond_2
    return-void

    .line 711
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chV:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    goto :goto_0

    :cond_4
    move v3, v2

    .line 713
    goto :goto_1

    :cond_5
    move v1, v3

    .line 717
    goto :goto_2

    .line 727
    :cond_6
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/u;->chU:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 736
    :cond_7
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/mail/utils/ag;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_8
    move v2, v4

    .line 741
    goto :goto_5
.end method
