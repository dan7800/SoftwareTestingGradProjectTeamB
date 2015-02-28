.class public Lcom/android/mail/ui/AccountItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private aFa:Landroid/widget/TextView;

.field private aFb:Landroid/widget/TextView;

.field private aFc:Landroid/widget/ImageView;

.field private aFd:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/android/mail/providers/Account;ZLcom/android/a/a;Lcom/android/mail/b/j;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_0
    if-eqz p3, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFd:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/mail/ui/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFc:Landroid/widget/ImageView;

    const v1, 0x7f0d0091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    new-instance v1, Lcom/android/mail/b/b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p4, p5}, Lcom/android/mail/b/b;-><init>(Landroid/content/res/Resources;Lcom/android/a/a;Lcom/android/mail/b/j;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 105
    invoke-virtual {v1, v2, v2}, Lcom/android/mail/b/b;->L(II)V

    .line 106
    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mail/b/b;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/mail/ui/AccountItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v1, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFa:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFb:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFc:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/AccountItemView;->aFd:Landroid/widget/ImageView;

    .line 61
    return-void
.end method
