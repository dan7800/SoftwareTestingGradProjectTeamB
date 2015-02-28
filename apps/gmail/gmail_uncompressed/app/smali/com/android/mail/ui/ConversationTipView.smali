.class public abstract Lcom/android/mail/ui/ConversationTipView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/aL;
.implements Lcom/android/mail/ui/dh;


# static fields
.field protected static final mW:Ljava/lang/String;


# instance fields
.field private aGH:Landroid/widget/TextView;

.field private aHv:I

.field private aHw:I

.field private aHx:I

.field protected aHy:Landroid/view/View;

.field private aHz:Landroid/view/View;

.field protected anZ:Lcom/android/mail/ui/ae;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/ConversationTipView;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ConversationTipView;-><init>(Landroid/content/Context;B)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHx:I

    .line 65
    iput-object p1, p0, Lcom/android/mail/ui/ConversationTipView;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/ConversationTipView;->aHv:I

    .line 69
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHw:I

    .line 73
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationTipView;->yO()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHz:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHz:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ConversationTipView;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationTipView;->yP()V

    .line 76
    return-void
.end method


# virtual methods
.method public a(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public a(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public final bm(Z)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationTipView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHx:I

    const-string v1, "animatedHeight"

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/android/mail/ui/ConversationTipView;->aHw:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    :cond_0
    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/mail/ui/ConversationTipView;->anZ:Lcom/android/mail/ui/ae;

    .line 171
    return-void
.end method

.method public final m(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationTipView;->dismiss()V

    .line 150
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 128
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/ConversationTipView;->aHx:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/ConversationTipView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final pE()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public final pK()Lcom/android/mail/ui/di;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHy:Landroid/view/View;

    invoke-static {v0}, Lcom/android/mail/ui/di;->aE(Landroid/view/View;)Lcom/android/mail/ui/di;

    move-result-object v0

    return-object v0
.end method

.method public final pL()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHv:I

    int-to-float v0, v0

    return v0
.end method

.method public final qD()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public setAnimatedHeight(I)V
    .locals 0

    .prologue
    .line 266
    iput p1, p0, Lcom/android/mail/ui/ConversationTipView;->aHx:I

    .line 267
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationTipView;->requestLayout()V

    .line 268
    return-void
.end method

.method protected final setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aGH:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public wk()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public final wl()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public final xK()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method protected yG()Lcom/android/mail/ui/aO;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yK()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final yL()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public final yM()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method protected yN()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method protected yO()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f040061

    return v0
.end method

.method protected yP()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHz:Landroid/view/View;

    const v1, 0x7f0d0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHy:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHz:Landroid/view/View;

    const v1, 0x7f0d0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aGH:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aHz:Landroid/view/View;

    const v1, 0x7f0d0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/android/mail/ui/ConversationTipView;->aHz:Landroid/view/View;

    const v2, 0x7f0d0177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationTipView;->yG()Lcom/android/mail/ui/aO;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/mail/ui/aO;->aHB:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v3, v2, Lcom/android/mail/ui/aO;->aHA:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v3, v2, Lcom/android/mail/ui/aO;->background:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v2, v2, Lcom/android/mail/ui/aO;->background:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/mail/ui/ConversationTipView;->aGH:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationTipView;->yN()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void

    .line 101
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
