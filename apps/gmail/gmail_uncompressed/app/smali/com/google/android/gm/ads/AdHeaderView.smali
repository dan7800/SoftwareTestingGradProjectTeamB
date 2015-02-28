.class public Lcom/google/android/gm/ads/AdHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/browse/j;


# instance fields
.field private final aZm:I

.field private final aZn:I

.field private aZo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ads/AdHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f0c0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ads/AdHeaderView;->aZm:I

    .line 38
    const v1, 0x7f0c0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ads/AdHeaderView;->aZn:I

    .line 39
    return-void
.end method


# virtual methods
.method public final dD(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ads/AdHeaderView;->aZo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gm/ads/AdHeaderView;->aZo:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final oL()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/gm/ads/AdHeaderView;->aZm:I

    return v0
.end method

.method public final oM()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/gm/ads/AdHeaderView;->aZn:I

    int-to-float v0, v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 70
    const v1, 0x7f0d00dc

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/ay;->aZ(Landroid/content/Context;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gm/ads/AdHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 49
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0801eb

    invoke-direct {v4, v3, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v4, v6, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 51
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00c3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v1, v4, v6, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 54
    new-instance v3, Lcom/android/mail/browse/i;

    invoke-direct {v3, v1, p0}, Lcom/android/mail/browse/i;-><init>(Landroid/text/Spanned;Lcom/android/mail/browse/j;)V

    invoke-interface {v1, v3, v6, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ads/AdHeaderView;->aZo:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ads/AdHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
