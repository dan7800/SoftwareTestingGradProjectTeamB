.class public Lcom/android/mail/ui/ActionableToastBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private Fx:I

.field private final aFl:Ljava/lang/Runnable;

.field private final aFm:Landroid/os/Handler;

.field private aFn:Landroid/view/View;

.field private aFo:Landroid/animation/TimeInterpolator;

.field private aFp:I

.field private aFq:J

.field private aFr:J

.field private aFs:J

.field private aFt:Landroid/widget/TextView;

.field private aFu:Landroid/widget/TextView;

.field private aFv:Landroid/widget/TextView;

.field private aFw:Landroid/widget/TextView;

.field private aFx:Lcom/android/mail/ui/ToastBarOperation;

.field private aL:Z

.field private kq:Z

.field private ww:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aL:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->kq:Z

    .line 110
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_0
    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFo:Landroid/animation/TimeInterpolator;

    .line 111
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFp:I

    .line 112
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFr:J

    .line 113
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFs:J

    .line 114
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ActionableToastBar;->ww:I

    .line 115
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ActionableToastBar;->Fx:I

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFm:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/android/mail/ui/W;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/W;-><init>(Lcom/android/mail/ui/ActionableToastBar;)V

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFl:Ljava/lang/Runnable;

    .line 125
    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/ActionableToastBar;J)J
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFq:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/mail/ui/ActionableToastBar;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aL:Z

    return v0
.end method

.method static synthetic a(Lcom/android/mail/ui/ActionableToastBar;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/mail/ui/ActionableToastBar;->kq:Z

    return p1
.end method

.method static synthetic b(Lcom/android/mail/ui/ActionableToastBar;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    :cond_0
    return-void
.end method

.method private g(ZZ)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 329
    iget-object v3, p0, Lcom/android/mail/ui/ActionableToastBar;->aFt:Landroid/widget/TextView;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v3, p0, Lcom/android/mail/ui/ActionableToastBar;->aFu:Landroid/widget/TextView;

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/mail/ui/ActionableToastBar;->aFv:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 329
    goto :goto_0

    :cond_3
    move v0, v2

    .line 330
    goto :goto_1

    :cond_4
    move v0, v2

    .line 332
    goto :goto_2

    :cond_5
    move v1, v2

    .line 335
    goto :goto_3
.end method

.method private xp()I
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 452
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/ab;Ljava/lang/CharSequence;IZZLcom/android/mail/ui/ToastBarOperation;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aL:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iput-object p6, p0, Lcom/android/mail/ui/ActionableToastBar;->aFx:Lcom/android/mail/ui/ToastBarOperation;

    .line 216
    new-instance v0, Lcom/android/mail/ui/X;

    invoke-direct {v0, p0, p6, p1}, Lcom/android/mail/ui/X;-><init>(Lcom/android/mail/ui/ActionableToastBar;Lcom/android/mail/ui/ToastBarOperation;Lcom/android/mail/ui/ab;)V

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->b(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFt:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFv:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFv:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_2
    invoke-static {p0, p2}, Lcom/android/mail/utils/al;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 230
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFu:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aL:Z

    if-eqz v0, :cond_4

    .line 235
    iput-boolean v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aL:Z

    .line 236
    invoke-direct {p0}, Lcom/android/mail/ui/ActionableToastBar;->xp()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ActionableToastBar;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFp:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFo:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/mail/ui/Y;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/Y;-><init>(Lcom/android/mail/ui/ActionableToastBar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFp:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFo:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 239
    :cond_4
    if-eqz p5, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFl:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFu:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final aw(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    .line 318
    return-void
.end method

.method public final f(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aL:Z

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFq:J

    .line 255
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->b(Landroid/view/View$OnClickListener;)V

    .line 259
    if-eqz p1, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/android/mail/ui/ActionableToastBar;->xp()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v4}, Lcom/android/mail/ui/ActionableToastBar;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFp:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFo:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/mail/ui/Z;

    invoke-direct {v2, p0}, Lcom/android/mail/ui/Z;-><init>(Lcom/android/mail/ui/ActionableToastBar;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFp:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFo:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/aa;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/aa;-><init>(Lcom/android/mail/ui/ActionableToastBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 269
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFx:Lcom/android/mail/ui/ToastBarOperation;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFx:Lcom/android/mail/ui/ToastBarOperation;

    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ToastBarOperation;->av(Landroid/content/Context;)V

    .line 273
    :cond_1
    return-void

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 266
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final j(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 304
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/ActionableToastBar;->getLocationOnScreen([I)V

    .line 305
    aget v5, v2, v0

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    aget v5, v2, v0

    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    aget v3, v2, v1

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    aget v2, v2, v1

    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar;->aFl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 295
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 146
    const v0, 0x7f0d0179

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFt:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0d017a

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFu:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0d01ab

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFv:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/ActionableToastBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFw:Landroid/widget/TextView;

    .line 150
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 157
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/mail/ui/ActionableToastBar;->g(ZZ)V

    .line 160
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 163
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFv:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 167
    invoke-direct {p0, v1, v0}, Lcom/android/mail/ui/ActionableToastBar;->g(ZZ)V

    .line 169
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 184
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 154
    goto :goto_0

    .line 172
    :cond_2
    iget v0, p0, Lcom/android/mail/ui/ActionableToastBar;->ww:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/ActionableToastBar;->Fx:I

    if-ltz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/ActionableToastBar;->ww:I

    if-ge v0, v1, :cond_3

    .line 177
    iget v0, p0, Lcom/android/mail/ui/ActionableToastBar;->ww:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 178
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/ActionableToastBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/ActionableToastBar;->Fx:I

    if-le v0, v1, :cond_0

    .line 180
    iget v0, p0, Lcom/android/mail/ui/ActionableToastBar;->Fx:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 181
    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public final wo()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/mail/ui/ActionableToastBar;->kq:Z

    return v0
.end method

.method public final xn()Lcom/android/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar;->aFx:Lcom/android/mail/ui/ToastBarOperation;

    return-object v0
.end method

.method public final xo()Z
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFq:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/mail/ui/ActionableToastBar;->aFr:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
