.class public Landroid/support/v7/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/A;


# instance fields
.field private mContext:Landroid/content/Context;

.field private wC:Landroid/view/LayoutInflater;

.field private wL:Landroid/widget/ImageView;

.field private wM:Landroid/widget/RadioButton;

.field private wN:Landroid/widget/TextView;

.field private wO:Landroid/widget/CheckBox;

.field private wP:Landroid/widget/TextView;

.field private wQ:Landroid/graphics/drawable/Drawable;

.field private wR:I

.field private wS:Landroid/content/Context;

.field private wT:Z

.field private wU:I

.field private wV:Z

.field private wq:Landroid/support/v7/internal/view/menu/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 66
    sget-object v0, Landroid/support/v7/a/l;->sL:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    sget v1, Landroid/support/v7/a/l;->sM:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wQ:Landroid/graphics/drawable/Drawable;

    .line 70
    sget v1, Landroid/support/v7/a/l;->sN:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wR:I

    .line 72
    sget v1, Landroid/support/v7/a/l;->sO:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wT:Z

    .line 74
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wS:Landroid/content/Context;

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private dH()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wC:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wC:Landroid/view/LayoutInflater;

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wC:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/m;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 99
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wq:Landroid/support/v7/internal/view/menu/m;

    .line 100
    iput v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wU:I

    .line 102
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 104
    invoke-virtual {p1, p0}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/support/v7/internal/view/menu/A;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wN:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wq:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->eh()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->dH()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/a/i;->qH:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    move-object v4, v3

    move-object v3, v0

    :goto_2
    if-eqz v5, :cond_12

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wq:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->isChecked()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz v5, :cond_11

    move v0, v1

    :goto_3
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v5

    if-eq v5, v0, :cond_3

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 106
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->eg()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->ee()C

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wq:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->eg()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_5
    if-nez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wP:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wq:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/m;->ef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wP:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_6

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wP:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wq:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->ei()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wV:Z

    if-eqz v0, :cond_15

    :cond_7
    const/4 v0, 0x1

    move v4, v0

    :goto_6
    if-nez v4, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wT:Z

    if-eqz v0, :cond_c

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wT:Z

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->dH()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Landroid/support/v7/a/i;->qF:I

    invoke-virtual {v0, v5, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    :cond_a
    if-nez v3, :cond_b

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wT:Z

    if-eqz v0, :cond_17

    :cond_b
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    if-eqz v4, :cond_16

    move-object v0, v3

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :cond_c
    :goto_8
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/m;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 109
    return-void

    :cond_d
    move v0, v2

    .line 102
    goto/16 :goto_0

    .line 104
    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wN:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 105
    :cond_f
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->dH()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/a/i;->qE:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    :cond_10
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_2

    :cond_11
    move v0, v2

    goto/16 :goto_3

    :cond_12
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wO:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wM:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_14
    move v0, v2

    .line 106
    goto/16 :goto_5

    :cond_15
    move v4, v1

    .line 107
    goto/16 :goto_6

    :cond_16
    const/4 v0, 0x0

    goto :goto_7

    :cond_17
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method

.method public final dG()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wV:Z

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wT:Z

    .line 113
    return-void
.end method

.method public final dv()Landroid/support/v7/internal/view/menu/m;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wq:Landroid/support/v7/internal/view/menu/m;

    return-object v0
.end method

.method public final dw()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    sget v0, Landroid/support/v7/a/g;->title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wN:Landroid/widget/TextView;

    .line 90
    iget v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wR:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wN:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wS:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wR:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    :cond_0
    sget v0, Landroid/support/v7/a/g;->qw:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wP:Landroid/widget/TextView;

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wT:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuItemView;->wL:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 238
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 241
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 242
    return-void
.end method
