.class public final Lcom/android/email/activity/setup/av;
.super Lcom/android/email/activity/setup/ab;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private OS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/email/activity/setup/ab;-><init>()V

    .line 35
    return-void
.end method

.method public static iu()Lcom/android/email/activity/setup/av;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/android/email/activity/setup/av;

    invoke-direct {v0}, Lcom/android/email/activity/setup/av;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    iget v1, p0, Lcom/android/email/activity/setup/av;->OS:I

    if-gt v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/android/email/activity/setup/av;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/aw;

    .line 93
    invoke-interface {v1, v0}, Lcom/android/email/activity/setup/aw;->s(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/ab;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    .line 50
    const v0, 0x7f04002c

    const v1, 0x7f090233

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/setup/av;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 55
    const v0, 0x7f0d00d1

    invoke-static {v6, v0}, Lcom/android/email/activity/a;->m(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 57
    const/4 v4, 0x1

    .line 59
    invoke-static {v7}, Lcom/android/email/service/n;->P(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/o;

    .line 60
    iget-object v2, v1, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/android/email/service/n;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-boolean v2, v1, Lcom/android/email/service/o;->Vc:Z

    if-nez v2, :cond_0

    .line 63
    const v2, 0x7f04002f

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 67
    instance-of v3, v0, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    const/4 v9, 0x3

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setId(I)V

    .line 73
    iget-object v3, v1, Lcom/android/email/service/o;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v1, v1, Lcom/android/email/service/o;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    add-int/lit8 v1, v4, 0x1

    :goto_1
    move v4, v1

    move-object v5, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Lcom/android/email/activity/setup/av;->OS:I

    .line 82
    invoke-virtual {p0}, Lcom/android/email/activity/setup/av;->ie()V

    .line 84
    return-object v6

    :cond_3
    move v1, v4

    move-object v2, v5

    goto :goto_1
.end method
