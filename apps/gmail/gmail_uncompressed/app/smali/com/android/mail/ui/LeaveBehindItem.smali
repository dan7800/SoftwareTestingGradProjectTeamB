.class public Lcom/android/mail/ui/LeaveBehindItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/dh;


# static fields
.field private static aKW:I

.field private static aKX:F

.field private static ant:I


# instance fields
.field private GN:I

.field private Nc:Lcom/android/mail/providers/Account;

.field private aGH:Landroid/widget/TextView;

.field private aHx:I

.field private aHy:Landroid/view/View;

.field private aKR:Lcom/android/mail/ui/ToastBarOperation;

.field private aKS:Lcom/android/mail/providers/Conversation;

.field private aKT:Z

.field private aKU:Z

.field private aKV:Landroid/animation/ObjectAnimator;

.field private anZ:Lcom/android/mail/ui/ae;

.field private kq:Z

.field public position:I

.field private yS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 62
    sput v0, Lcom/android/mail/ui/LeaveBehindItem;->ant:I

    .line 63
    sput v0, Lcom/android/mail/ui/LeaveBehindItem;->aKW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/LeaveBehindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/LeaveBehindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHx:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKU:Z

    .line 78
    invoke-static {p1}, Lcom/android/mail/ui/LeaveBehindItem;->at(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private static at(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/android/mail/ui/LeaveBehindItem;->ant:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/LeaveBehindItem;->ant:I

    .line 85
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/LeaveBehindItem;->aKW:I

    .line 86
    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/mail/ui/LeaveBehindItem;->aKX:F

    .line 88
    :cond_0
    return-void
.end method

.method public static p(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/ui/LeaveBehindItem;->at(Landroid/content/Context;)V

    .line 208
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 212
    if-eqz p1, :cond_0

    .line 213
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 215
    :cond_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 216
    sget v1, Lcom/android/mail/ui/LeaveBehindItem;->aKW:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 219
    return-object v0

    .line 208
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(ILcom/android/mail/providers/Account;Lcom/android/mail/ui/ae;Lcom/android/mail/ui/ToastBarOperation;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Folder;I)V
    .locals 3

    .prologue
    .line 111
    iput p1, p0, Lcom/android/mail/ui/LeaveBehindItem;->position:I

    .line 112
    iput-object p4, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKR:Lcom/android/mail/ui/ToastBarOperation;

    .line 113
    iput-object p2, p0, Lcom/android/mail/ui/LeaveBehindItem;->Nc:Lcom/android/mail/providers/Account;

    .line 114
    iput-object p3, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    .line 115
    iput p7, p0, Lcom/android/mail/ui/LeaveBehindItem;->yS:I

    .line 116
    iput-object p5, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKS:Lcom/android/mail/providers/Conversation;

    .line 117
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/LeaveBehindItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 122
    const v0, 0x7f0d021c

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/LeaveBehindItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aGH:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aGH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKR:Lcom/android/mail/ui/ToastBarOperation;

    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p6}, Lcom/android/mail/ui/ToastBarOperation;->a(Landroid/content/Context;Lcom/android/mail/providers/Folder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->cG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aGH:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public final a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->kq:Z

    if-nez v0, :cond_0

    .line 168
    iput-boolean v4, p0, Lcom/android/mail/ui/LeaveBehindItem;->kq:Z

    .line 169
    const-string v0, "animatedHeight"

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->yS:I

    aput v2, v1, v3

    aput v3, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 170
    iget v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->yS:I

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->setMinimumHeight(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->GN:I

    .line 172
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fe00000    # 1.75f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    sget v1, Lcom/android/mail/ui/LeaveBehindItem;->ant:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 177
    :cond_0
    return-void
.end method

.method public final commit()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xE()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKS:Lcom/android/mail/providers/Conversation;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->aE(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/u;->f(Ljava/util/Collection;)I

    .line 133
    :cond_0
    return-void
.end method

.method public final dc(I)V
    .locals 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKT:Z

    .line 196
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/mail/ui/LeaveBehindItem;->p(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    .line 198
    :cond_0
    return-void
.end method

.method public final dd(I)V
    .locals 6

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKT:Z

    .line 230
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v0

    .line 231
    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 235
    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    int-to-long v4, p1

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 236
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public final dismiss()V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "list_swipe"

    const-string v2, "leave_behind"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 139
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKS:Lcom/android/mail/providers/Conversation;

    iget-wide v2, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/ui/ae;->T(J)V

    .line 140
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 142
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 93
    const v1, 0x7f0d00e3

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKU:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xw()V

    .line 100
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKS:Lcom/android/mail/providers/Conversation;

    iget-wide v2, v1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/ui/ae;->W(J)V

    .line 101
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->anZ:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->xE()Lcom/android/mail/browse/u;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->ayn:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/u;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 275
    iget v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->GN:I

    iget v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHx:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/LeaveBehindItem;->setMeasuredDimension(II)V

    .line 281
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->yS:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public final pE()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKU:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pK()Lcom/android/mail/ui/di;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    invoke-static {v0}, Lcom/android/mail/ui/di;->aE(Landroid/view/View;)Lcom/android/mail/ui/di;

    move-result-object v0

    return-object v0
.end method

.method public final pL()F
    .locals 1

    .prologue
    .line 292
    sget v0, Lcom/android/mail/ui/LeaveBehindItem;->aKX:F

    return v0
.end method

.method public setAnimatedHeight(I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHx:I

    .line 287
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->requestLayout()V

    .line 288
    return-void
.end method

.method public final wo()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKT:Z

    return v0
.end method

.method public final z(F)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 186
    :cond_0
    return-void
.end method

.method public final zC()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKS:Lcom/android/mail/providers/Conversation;

    iget-wide v0, v0, Lcom/android/mail/providers/Conversation;->id:J

    return-wide v0
.end method

.method public final zD()Lcom/android/mail/ui/LeaveBehindData;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lcom/android/mail/ui/LeaveBehindData;

    iget-object v1, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKS:Lcom/android/mail/providers/Conversation;

    iget-object v2, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKR:Lcom/android/mail/ui/ToastBarOperation;

    iget v3, p0, Lcom/android/mail/ui/LeaveBehindItem;->yS:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mail/ui/LeaveBehindData;-><init>(Lcom/android/mail/providers/Conversation;Lcom/android/mail/ui/ToastBarOperation;I)V

    return-object v0
.end method

.method public final zE()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKT:Z

    .line 246
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 248
    :cond_0
    return-void
.end method

.method public final zF()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/mail/ui/LeaveBehindItem;->zE()V

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zG()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKS:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method public final zH()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKV:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aKU:Z

    .line 301
    return-void
.end method

.method public final zI()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/mail/ui/LeaveBehindItem;->aHy:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 305
    return-void
.end method
