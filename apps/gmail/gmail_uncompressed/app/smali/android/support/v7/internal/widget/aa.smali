.class public final Landroid/support/v7/internal/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/v;


# instance fields
.field private final AO:Landroid/support/v7/internal/widget/U;

.field private Bo:I

.field private Bp:Landroid/view/View;

.field private Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private Br:Landroid/graphics/drawable/Drawable;

.field private Bs:Landroid/graphics/drawable/Drawable;

.field private Bt:Z

.field private Bu:Ljava/lang/CharSequence;

.field private Bv:Z

.field private Bw:I

.field private Bx:I

.field private By:Landroid/graphics/drawable/Drawable;

.field private cZ:Ljava/lang/CharSequence;

.field private of:Landroid/support/v7/internal/a/i;

.field private uo:Landroid/support/v7/widget/Toolbar;

.field private vh:Landroid/graphics/drawable/Drawable;

.field private vl:Landroid/view/View;

.field private yT:Ljava/lang/CharSequence;

.field private yo:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 88
    sget v0, Landroid/support/v7/a/j;->qM:I

    sget v1, Landroid/support/v7/a/f;->pO:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v1, p0, Landroid/support/v7/internal/widget/aa;->Bw:I

    .line 84
    iput v1, p0, Landroid/support/v7/internal/widget/aa;->Bx:I

    .line 94
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->cZ:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->yT:Ljava/lang/CharSequence;

    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->cZ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->Bt:Z

    .line 99
    if-eqz p2, :cond_f

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/a/l;->qP:[I

    sget v4, Landroid/support/v7/a/b;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4}, Landroid/support/v7/internal/widget/Z;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/support/v7/internal/widget/Z;

    move-result-object v0

    .line 103
    sget v2, Landroid/support/v7/a/l;->rg:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    sget v2, Landroid/support/v7/a/l;->re:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    sget v2, Landroid/support/v7/a/l;->rc:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_2
    sget v2, Landroid/support/v7/a/l;->rb:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_3
    sget v2, Landroid/support/v7/a/l;->ra:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_4
    sget v2, Landroid/support/v7/a/l;->qW:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/Z;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setDisplayOptions(I)V

    .line 130
    sget v2, Landroid/support/v7/a/l;->qV:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/Z;->getResourceId(II)I

    move-result v2

    .line 132
    if-eqz v2, :cond_5

    .line 133
    iget-object v3, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setCustomView(Landroid/view/View;)V

    .line 135
    iget v2, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/aa;->setDisplayOptions(I)V

    .line 138
    :cond_5
    sget v2, Landroid/support/v7/a/l;->qY:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/Z;->getLayoutDimension(II)I

    move-result v2

    .line 139
    if-lez v2, :cond_6

    .line 140
    iget-object v3, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 141
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v2, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_6
    sget v2, Landroid/support/v7/a/l;->qU:I

    invoke-virtual {v0, v2, v5}, Landroid/support/v7/internal/widget/Z;->getDimensionPixelOffset(II)I

    move-result v2

    .line 147
    sget v3, Landroid/support/v7/a/l;->qT:I

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/internal/widget/Z;->getDimensionPixelOffset(II)I

    move-result v3

    .line 149
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 150
    :cond_7
    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_8
    sget v2, Landroid/support/v7/a/l;->rh:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/Z;->getResourceId(II)I

    move-result v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    iget-object v3, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_9
    sget v2, Landroid/support/v7/a/l;->rf:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/Z;->getResourceId(II)I

    move-result v2

    .line 161
    if-eqz v2, :cond_a

    .line 162
    iget-object v3, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_a
    sget v2, Landroid/support/v7/a/l;->rd:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/Z;->getResourceId(II)I

    move-result v1

    .line 166
    if-eqz v1, :cond_b

    .line 167
    iget-object v2, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 170
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->recycle()V

    .line 172
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->eU()Landroid/support/v7/internal/widget/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->AO:Landroid/support/v7/internal/widget/U;

    .line 179
    :goto_1
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bx:I

    if-eq p3, v0, :cond_c

    iput p3, p0, Landroid/support/v7/internal/widget/aa;->Bx:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bx:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aa;->setNavigationContentDescription(I)V

    .line 180
    :cond_c
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bu:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->AO:Landroid/support/v7/internal/widget/U;

    invoke-virtual {v0, p4}, Landroid/support/v7/internal/widget/U;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->By:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_d

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->By:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eY()V

    .line 184
    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/ab;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/support/v7/internal/widget/aa;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    :cond_e
    move v0, v1

    .line 97
    goto/16 :goto_0

    .line 174
    :cond_f
    const/16 v0, 0xb

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    const/16 v0, 0xf

    :cond_10
    iput v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    .line 176
    new-instance v0, Landroid/support/v7/internal/widget/U;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/U;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->AO:Landroid/support/v7/internal/widget/U;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/aa;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->cZ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/internal/a/i;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->of:Landroid/support/v7/internal/a/i;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/aa;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->Bv:Z

    return v0
.end method

.method private eV()V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    iget v1, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 368
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Br:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Br:Landroid/graphics/drawable/Drawable;

    .line 374
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->vh:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->vh:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private eW()V
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/a/b;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 551
    new-instance v0, Landroid/support/v7/widget/Z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Z;-><init>(B)V

    .line 553
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :cond_0
    return-void
.end method

.method private eX()V
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bu:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/aa;->Bx:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bu:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private eY()V
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bs:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bs:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->By:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private n(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->cZ:Ljava/lang/CharSequence;

    .line 284
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public final D(Z)V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->D(Z)V

    .line 495
    return-void
.end method

.method public final a(Landroid/support/v7/internal/a/i;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->of:Landroid/support/v7/internal/a/i;

    .line 261
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->yo:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->yo:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 411
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->yo:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Landroid/support/v7/a/g;->qs:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setId(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->yo:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 414
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->yo:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 415
    return-void
.end method

.method public final a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/internal/widget/q;)V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eW()V

    .line 561
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 562
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/q;)V

    .line 563
    return-void
.end method

.method public final ag(I)V
    .locals 2

    .prologue
    .line 602
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 603
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aV;->b(F)Landroid/support/v4/view/aV;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ac;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ac;-><init>(Landroid/support/v7/internal/widget/aa;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aV;->a(Landroid/support/v4/view/bk;)Landroid/support/v4/view/aV;

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    if-nez p1, :cond_0

    .line 619
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ad;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aV;->b(F)Landroid/support/v4/view/aV;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ad;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/support/v7/internal/widget/aa;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aV;->a(Landroid/support/v4/view/bk;)Landroid/support/v4/view/aV;

    goto :goto_0
.end method

.method public final am(I)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 572
    return-void
.end method

.method public final b(Landroid/support/v7/internal/widget/D;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 468
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 471
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    .line 472
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bw:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 474
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Z;

    .line 475
    iput v3, v0, Landroid/support/v7/widget/Z;->width:I

    .line 476
    iput v3, v0, Landroid/support/v7/widget/Z;->height:I

    .line 477
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Z;->gravity:I

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/D;->F(Z)V

    .line 480
    :cond_1
    return-void
.end method

.method public final collapseActionView()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->collapseActionView()V

    .line 256
    return-void
.end method

.method public final dismissPopupMenus()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->dismissPopupMenus()V

    .line 420
    return-void
.end method

.method public final eD()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->eD()Z

    move-result v0

    return v0
.end method

.method public final eE()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->eE()Z

    move-result v0

    return v0
.end method

.method public final eF()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->Bv:Z

    .line 405
    return-void
.end method

.method public final eL()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final eM()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public final eN()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public final eO()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayOptions()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    return v0
.end method

.method public final getNavigationMode()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bw:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public final hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public final isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->Bt:Z

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aa;->n(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->vl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->vl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 589
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->vl:Landroid/view/View;

    .line 590
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->vl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 593
    :cond_1
    return-void
.end method

.method public final setDisplayOptions(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    .line 430
    xor-int/2addr v0, p1

    .line 431
    iput p1, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    .line 432
    if-eqz v0, :cond_3

    .line 433
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 434
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 435
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eY()V

    .line 436
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eX()V

    .line 442
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 443
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eV()V

    .line 446
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 447
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 448
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/aa;->cZ:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/aa;->yT:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 456
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->vl:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 457
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->vl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 464
    :cond_3
    :goto_2
    return-void

    .line 438
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 451
    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 460
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->vl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final setIcon(I)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->AO:Landroid/support/v7/internal/widget/U;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/U;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aa;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->vh:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eV()V

    .line 352
    return-void
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->Br:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eV()V

    .line 363
    return-void
.end method

.method public final setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 650
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bu:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eX()V

    .line 651
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final setNavigationIcon(I)V
    .locals 1

    .prologue
    .line 637
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->AO:Landroid/support/v7/internal/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/U;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aa;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void

    .line 637
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->Bs:Landroid/graphics/drawable/Drawable;

    .line 632
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eY()V

    .line 633
    return-void
.end method

.method public final setNavigationMode(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 509
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bw:I

    .line 510
    if-eq p1, v0, :cond_1

    .line 511
    packed-switch v0, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    iput p1, p0, Landroid/support/v7/internal/widget/aa;->Bw:I

    .line 526
    packed-switch p1, :pswitch_data_1

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid navigation mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 518
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 530
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/internal/widget/aa;->eW()V

    .line 531
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bq:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 546
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 534
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 536
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->Bp:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Z;

    .line 537
    iput v2, v0, Landroid/support/v7/widget/Z;->width:I

    .line 538
    iput v2, v0, Landroid/support/v7/widget/Z;->height:I

    .line 539
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Z;->gravity:I

    goto :goto_1

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 526
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->yT:Ljava/lang/CharSequence;

    .line 297
    iget v0, p0, Landroid/support/v7/internal/widget/aa;->Bo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aa;->Bt:Z

    .line 279
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aa;->n(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public final showOverflowMenu()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->uo:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
