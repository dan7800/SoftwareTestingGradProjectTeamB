.class public Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private Av:Z

.field private Bw:I

.field private bbm:Lcom/google/android/gms/common/api/n;

.field private bqi:Lcom/google/android/gms/people/model/d;

.field private chJ:Lcom/google/android/gms/people/accountswitcherview/i;

.field private ciG:Lcom/google/android/gms/people/accountswitcherview/Q;

.field private ciH:Lcom/google/android/gms/people/accountswitcherview/T;

.field private ciI:Lcom/google/android/gms/people/accountswitcherview/l;

.field private ciJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private ciK:Lcom/google/android/gms/people/accountswitcherview/N;

.field private ciL:Lcom/google/android/gms/people/accountswitcherview/P;

.field private ciM:Lcom/google/android/gms/people/accountswitcherview/S;

.field private ciN:I

.field private ciO:Lcom/google/android/gms/people/accountswitcherview/R;

.field private ciP:F

.field private ciQ:F

.field private ciR:I

.field private ciS:Z

.field private ciT:F

.field private ciU:F

.field private ciV:Z

.field private ciW:F

.field private ciX:I

.field private ciY:I

.field private ciZ:I

.field private cja:I

.field private cjb:I

.field private cjc:Z

.field private cjd:I

.field private cje:Lcom/google/android/gms/people/model/d;

.field private cjf:F

.field private cjg:Landroid/view/animation/Interpolator;

.field private cjh:I

.field private cji:I

.field private cjj:Landroid/animation/AnimatorSet;

.field private cjk:Lcom/google/android/gms/people/model/d;

.field private cjl:Lcom/google/android/gms/people/model/d;

.field private cjm:Lcom/google/android/gms/people/model/d;

.field private hT:Landroid/view/VelocityTracker;

.field private iP:I

.field private iU:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Bw:I

    .line 147
    invoke-static {}, Lcom/google/android/gms/people/accountswitcherview/b;->cY()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    .line 149
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciN:I

    .line 150
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iP:I

    .line 152
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->hT:Landroid/view/VelocityTracker;

    .line 153
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciR:I

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 155
    sget v3, Lcom/google/android/gms/people/accountswitcherview/z;->cib:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    .line 156
    sget v3, Lcom/google/android/gms/people/accountswitcherview/z;->cia:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    .line 157
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Av:Z

    .line 161
    :cond_0
    sget v0, Lcom/google/android/gms/people/accountswitcherview/C;->cix:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 162
    sget v1, Lcom/google/android/gms/people/accountswitcherview/C;->ciw:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 163
    div-float v0, v1, v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjf:F

    .line 164
    invoke-static {}, Lcom/google/android/gms/people/accountswitcherview/b;->cY()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x10c000d

    .line 166
    :goto_1
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjg:Landroid/view/animation/Interpolator;

    .line 167
    sget v0, Lcom/google/android/gms/people/accountswitcherview/z;->cic:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cji:I

    .line 168
    sget v0, Lcom/google/android/gms/people/accountswitcherview/z;->chZ:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjh:I

    .line 170
    return-void

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    .line 164
    :cond_2
    const v0, 0x10c0001

    goto :goto_1
.end method

.method private Va()V
    .locals 3

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 734
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciN:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 735
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjc:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/gms/people/accountswitcherview/D;->ciB:I

    :goto_0
    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciN:I

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciH:Lcom/google/android/gms/people/accountswitcherview/T;

    if-nez v0, :cond_1

    .line 741
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/O;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/people/accountswitcherview/O;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;B)V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciH:Lcom/google/android/gms/people/accountswitcherview/T;

    .line 743
    :cond_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciN:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 744
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciH:Lcom/google/android/gms/people/accountswitcherview/T;

    invoke-interface {v0, p0}, Lcom/google/android/gms/people/accountswitcherview/T;->aL(Landroid/view/View;)Lcom/google/android/gms/people/accountswitcherview/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    .line 745
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/K;

    invoke-direct {v1, p0}, Lcom/google/android/gms/people/accountswitcherview/K;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/L;

    invoke-direct {v1, p0}, Lcom/google/android/gms/people/accountswitcherview/L;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjr:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    if-eqz v0, :cond_3

    .line 762
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjr:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/M;

    invoke-direct {v1, p0}, Lcom/google/android/gms/people/accountswitcherview/M;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    :cond_3
    return-void

    .line 735
    :cond_4
    invoke-static {}, Lcom/google/android/gms/people/accountswitcherview/b;->cY()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/google/android/gms/people/accountswitcherview/D;->ciB:I

    goto :goto_0

    :cond_5
    sget v0, Lcom/google/android/gms/people/accountswitcherview/D;->ciC:I

    goto :goto_0
.end method

.method private Vb()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const v9, 0x3f4ccccd    # 0.8f

    const/16 v8, 0x8

    .line 869
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    if-nez v0, :cond_0

    .line 870
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Va()V

    .line 872
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->aM(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->aM(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->aM(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->aM(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->aM(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->aM(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->aM(Landroid/view/View;)V

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    iget-object v2, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjp:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjp:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/gms/people/accountswitcherview/E;->ciB:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-interface {v7}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjy:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjy:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v11}, Lcom/google/android/gms/people/accountswitcherview/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {v1}, Lcom/google/android/gms/people/model/d;->Iw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    iget-object v3, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjy:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;)V

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    iget-object v3, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjy:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v11}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjt:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cju:Landroid/widget/TextView;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/gms/people/model/d;)V

    iget-object v2, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/accountswitcherview/S;Landroid/widget/ImageView;Lcom/google/android/gms/people/model/d;)V

    .line 874
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Vc()V

    .line 875
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciO:Lcom/google/android/gms/people/accountswitcherview/R;

    if-eqz v0, :cond_4

    .line 876
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciO:Lcom/google/android/gms/people/accountswitcherview/R;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/people/accountswitcherview/R;->a(Lcom/google/android/gms/people/accountswitcherview/S;Ljava/util/List;)V

    .line 879
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    if-eqz v0, :cond_9

    .line 880
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 881
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 883
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 884
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 886
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 887
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 889
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 890
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 891
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    .line 892
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 893
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 895
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 896
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 897
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    .line 898
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 899
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 902
    :cond_9
    return-void

    .line 873
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    iget-object v3, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjy:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;)V

    goto/16 :goto_0
.end method

.method private Vc()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1006
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    if-nez v0, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    if-nez v0, :cond_1

    .line 1011
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Va()V

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->forceLayout()V

    goto :goto_0

    .line 1021
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    .line 1023
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    .line 1024
    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v2, v2, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v2, v2, Lcom/google/android/gms/people/accountswitcherview/S;->cjz:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Landroid/widget/ImageView;Lcom/google/android/gms/people/model/d;)V

    .line 1026
    iget-object v2, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/accountswitcherview/S;Landroid/widget/ImageView;Lcom/google/android/gms/people/model/d;)V

    .line 1030
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 1031
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjA:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Landroid/widget/ImageView;Lcom/google/android/gms/people/model/d;)V

    .line 1036
    :goto_2
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    goto :goto_0

    .line 1028
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1034
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private Vd()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1075
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Bw:I

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->setNavigationMode(I)V

    .line 1078
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciG:Lcom/google/android/gms/people/accountswitcherview/Q;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciG:Lcom/google/android/gms/people/accountswitcherview/Q;

    invoke-interface {v0, p0}, Lcom/google/android/gms/people/accountswitcherview/Q;->a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjr:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    iget v3, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Bw:I

    if-ne v3, v2, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;->aC(Z)V

    .line 1083
    return-void

    :cond_1
    move v0, v2

    .line 1075
    goto :goto_0

    :cond_2
    move v2, v1

    .line 1081
    goto :goto_1
.end method

.method private a(Landroid/widget/ImageView;Lcom/google/android/gms/people/model/d;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1056
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/people/accountswitcherview/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1061
    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->Iw()Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;)V

    .line 1064
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1069
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/gms/people/accountswitcherview/E;->ciD:I

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1072
    :cond_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/gms/people/model/d;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 955
    .line 956
    if-eqz p0, :cond_3

    .line 959
    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 966
    :goto_0
    if-eqz p1, :cond_0

    .line 970
    if-eqz v0, :cond_2

    .line 971
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :cond_0
    :goto_1
    return-void

    .line 962
    :cond_1
    const/4 v0, 0x1

    .line 963
    invoke-interface {p2}, Lcom/google/android/gms/people/model/d;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 974
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/people/accountswitcherview/S;Landroid/widget/ImageView;Lcom/google/android/gms/people/model/d;)V
    .locals 4

    .prologue
    .line 1040
    if-nez p2, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/people/model/d;->Iy()Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciI:Lcom/google/android/gms/people/accountswitcherview/l;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/people/accountswitcherview/l;->a(Landroid/widget/ImageView;)V

    .line 1046
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciI:Lcom/google/android/gms/people/accountswitcherview/l;

    invoke-interface {p3}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/google/android/gms/people/model/d;->Iu()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/google/android/gms/people/accountswitcherview/l;->b(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciI:Lcom/google/android/gms/people/accountswitcherview/l;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/people/accountswitcherview/l;->a(Landroid/widget/ImageView;)V

    .line 1051
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/l;->cl(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;I)V
    .locals 11

    .prologue
    .line 42
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v2, v2, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    iget v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v6, v6, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    iget v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const-string v2, "translationX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    invoke-static {v1, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x1c2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v6, "translationY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v5, v8, v9

    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x1c2

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v6, "scaleY"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v8, "scaleX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v4, v9, v10

    invoke-static {v1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    move-object v2, v1

    :goto_1
    if-nez p1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjJ:Landroid/widget/ImageView;

    :goto_2
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v4, v4, Lcom/google/android/gms/people/accountswitcherview/S;->cjy:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x1c2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v4, "scaleY"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0x1c2

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v5, "scaleX"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v8

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x1c2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    const/16 v1, 0x96

    invoke-direct {p0, v0, v7, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/model/d;Landroid/animation/AnimatorSet$Builder;I)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    const-string v2, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v2, v2, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/accountswitcherview/S;Landroid/widget/ImageView;Lcom/google/android/gms/people/model/d;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/H;

    invoke-direct {v0, p0}, Lcom/google/android/gms/people/accountswitcherview/H;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->eT(I)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjg:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    move-object v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    move-object v2, v1

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjK:Landroid/widget/ImageView;

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Lcom/google/android/gms/people/model/d;Landroid/animation/AnimatorSet$Builder;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 713
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjD:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/gms/people/model/d;)V

    .line 715
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v4, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 718
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 719
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 720
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 722
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 723
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 724
    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 725
    return-void
.end method

.method private static aM(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 917
    if-eqz p0, :cond_0

    .line 918
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 919
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 920
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 921
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 922
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 924
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Lcom/google/android/gms/people/accountswitcherview/S;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjk:Lcom/google/android/gms/people/model/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjk:Lcom/google/android/gms/people/model/d;

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    iput-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjk:Lcom/google/android/gms/people/model/d;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjl:Lcom/google/android/gms/people/model/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjm:Lcom/google/android/gms/people/model/d;

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjl:Lcom/google/android/gms/people/model/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjl:Lcom/google/android/gms/people/model/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjm:Lcom/google/android/gms/people/model/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjm:Lcom/google/android/gms/people/model/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjl:Lcom/google/android/gms/people/model/d;

    iput-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjm:Lcom/google/android/gms/people/model/d;

    :cond_4
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 258
    iget v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    if-ne v1, v2, :cond_0

    .line 261
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 262
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    .line 264
    :cond_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Vb()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private eT(I)V
    .locals 4

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciL:Lcom/google/android/gms/people/accountswitcherview/P;

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/I;

    invoke-direct {v1, p0}, Lcom/google/android/gms/people/accountswitcherview/I;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciK:Lcom/google/android/gms/people/accountswitcherview/N;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciK:Lcom/google/android/gms/people/accountswitcherview/N;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/N;->a(Lcom/google/android/gms/people/model/d;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Lcom/google/android/gms/people/accountswitcherview/P;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciL:Lcom/google/android/gms/people/accountswitcherview/P;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Vd()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    return v0
.end method

.method private u(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 250
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjh:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public final UY()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final UZ()V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjc:Z

    .line 729
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    .line 730
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/accountswitcherview/N;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciK:Lcom/google/android/gms/people/accountswitcherview/N;

    .line 178
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/accountswitcherview/Q;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciG:Lcom/google/android/gms/people/accountswitcherview/Q;

    .line 174
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/accountswitcherview/T;Lcom/google/android/gms/people/accountswitcherview/R;)V
    .locals 1

    .prologue
    .line 1136
    const v0, 0x7f0400ae

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciN:I

    .line 1137
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciH:Lcom/google/android/gms/people/accountswitcherview/T;

    .line 1138
    iput-object p2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciO:Lcom/google/android/gms/people/accountswitcherview/R;

    .line 1139
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/accountswitcherview/i;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->chJ:Lcom/google/android/gms/people/accountswitcherview/i;

    .line 1103
    return-void
.end method

.method public final a(Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/model/d;)V
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjl:Lcom/google/android/gms/people/model/d;

    .line 988
    iput-object p2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjm:Lcom/google/android/gms/people/model/d;

    .line 1003
    :goto_0
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    .line 996
    :goto_1
    if-eqz p1, :cond_1

    .line 997
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_1
    if-eqz p2, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Vc()V

    goto :goto_0

    .line 994
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public final d(Lcom/google/android/gms/common/api/n;)V
    .locals 3

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bbm:Lcom/google/android/gms/common/api/n;

    .line 1092
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    .line 1093
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/l;

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/people/accountswitcherview/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;)V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciI:Lcom/google/android/gms/people/accountswitcherview/l;

    .line 1095
    :cond_0
    return-void
.end method

.method public final d(Lcom/google/android/gms/people/model/d;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 819
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    if-nez v0, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Va()V

    .line 822
    :cond_0
    if-nez p1, :cond_1

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    .line 866
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjk:Lcom/google/android/gms/people/model/d;

    goto :goto_0

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_3

    .line 832
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cje:Lcom/google/android/gms/people/model/d;

    .line 833
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->forceLayout()V

    goto :goto_0

    .line 836
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 838
    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    .line 839
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    .line 840
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v5

    .line 842
    const/4 v3, -0x1

    move v1, v2

    .line 843
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 844
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 849
    :goto_2
    if-ltz v1, :cond_5

    .line 850
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 852
    :cond_5
    if-eqz v4, :cond_7

    .line 856
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 857
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_7

    .line 858
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 843
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 861
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Vb()V

    goto/16 :goto_0

    .line 863
    :cond_8
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    .line 864
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Vb()V

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto :goto_2
.end method

.method public final eS(I)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Va()V

    .line 227
    :cond_0
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cji:I

    add-int v1, v0, p1

    .line 228
    invoke-virtual {p0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->setMinimumHeight(I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjL:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 232
    if-nez v0, :cond_1

    .line 233
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjL:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->u(Landroid/view/View;I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->u(Landroid/view/View;I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->u(Landroid/view/View;I)V

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->u(Landroid/view/View;I)V

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjG:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->u(Landroid/view/View;I)V

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjH:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->u(Landroid/view/View;I)V

    .line 244
    return-void

    .line 235
    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public final getNavigationMode()I
    .locals 1

    .prologue
    .line 791
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Bw:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 198
    sparse-switch v0, :sswitch_data_0

    .line 212
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    return v0

    .line 200
    :sswitch_0
    iput-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    .line 201
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    .line 202
    iput-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    goto :goto_0

    .line 206
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Landroid/view/MotionEvent;)V

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    .line 208
    iput-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    goto :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    if-nez v0, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Va()V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjo:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjo:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cje:Lcom/google/android/gms/people/model/d;

    if-eqz v0, :cond_3

    .line 807
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cje:Lcom/google/android/gms/people/model/d;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Lcom/google/android/gms/people/model/d;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cje:Lcom/google/android/gms/people/model/d;

    .line 810
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 811
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 271
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v3, v2

    .line 347
    :cond_1
    :goto_1
    return v3

    .line 273
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciP:F

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciQ:F

    goto :goto_0

    .line 277
    :pswitch_2
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 278
    if-gez v0, :cond_2

    .line 279
    const-string v0, "SelectedAccountNavigationView"

    const-string v1, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 284
    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciP:F

    sub-float v5, v1, v5

    .line 285
    iget v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciQ:F

    sub-float/2addr v0, v6

    .line 286
    mul-float v6, v5, v5

    mul-float v7, v0, v0

    add-float/2addr v6, v7

    .line 287
    iget-boolean v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-boolean v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    if-nez v7, :cond_3

    iget v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iP:I

    iget v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iP:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 289
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_3

    .line 290
    iput-boolean v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    .line 291
    if-eqz v4, :cond_3

    .line 292
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 296
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    if-eqz v0, :cond_0

    .line 298
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciP:F

    sub-float v0, v1, v0

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciX:I

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v4, v4, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cja:I

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjb:I

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v4, v4, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciZ:I

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Av:Z

    if-eqz v1, :cond_b

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_2
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    iget v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    div-float v4, v1, v4

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    sub-float/2addr v1, v5

    mul-float v5, v1, v9

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_c

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciX:I

    int-to-float v1, v1

    :goto_3
    iget v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cja:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    iget v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    iget v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    add-float/2addr v1, v6

    div-float/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v5, v13, v6

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v7, v7, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    mul-float/2addr v1, v6

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v7

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    mul-float v0, v6, v4

    sub-float v0, v13, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Av:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cja:I

    sub-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjd:I

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjd:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjI:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjz:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_6

    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    sub-float v1, v13, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Av:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    add-float/2addr v1, v4

    sub-float/2addr v0, v1

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjd:I

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciY:I

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    iget v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciY:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjC:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v4, v4, Lcom/google/android/gms/people/accountswitcherview/S;->cjD:Landroid/widget/TextView;

    invoke-static {v1, v4, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/gms/people/model/d;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, v6

    sub-float v0, v13, v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 299
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 298
    :cond_b
    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_2

    :cond_c
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    goto/16 :goto_3

    :cond_d
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjb:I

    neg-int v0, v0

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cja:I

    sub-int/2addr v0, v1

    goto/16 :goto_4

    :cond_e
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjd:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    iget v4, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjd:I

    int-to-float v4, v4

    mul-float/2addr v0, v6

    add-float/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_6

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    sub-float/2addr v0, v1

    goto/16 :goto_7

    :cond_11
    const v0, 0x3eaaaaab

    cmpl-float v0, v6, v0

    if-lez v0, :cond_12

    const v0, 0x3eaaaaab

    sub-float v0, v6, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciY:I

    int-to-float v1, v1

    iget v3, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciY:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_8

    .line 303
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    if-gez v0, :cond_13

    .line 304
    const-string v0, "SelectedAccountNavigationView"

    const-string v1, "Got ACTION_UP event but have an invalid active pointer id."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 308
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    if-eqz v0, :cond_21

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1a

    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciX:I

    int-to-float v0, v0

    .line 310
    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 311
    iget-boolean v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Av:Z

    if-eqz v5, :cond_14

    .line 312
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 314
    :cond_14
    mul-float/2addr v0, v9

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1b

    move v0, v2

    .line 315
    :goto_a
    if-nez v0, :cond_15

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciP:F

    sub-float/2addr v1, v5

    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iP:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_15

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->hT:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciR:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    move v0, v2

    .line 319
    :cond_15
    :goto_b
    if-eqz v0, :cond_1e

    .line 321
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    iget v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    div-float v5, v0, v5

    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    iget v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    sub-float/2addr v0, v6

    mul-float v6, v0, v9

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_c
    iget-object v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v7, v7, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    iget v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciU:F

    iget v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciT:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v9

    add-float/2addr v7, v0

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v8, "translationX"

    new-array v9, v2, [F

    aput v7, v9, v3

    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v8, v8, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v9, "translationY"

    new-array v10, v2, [F

    aput v6, v10, v3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v8, v8, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v9, "scaleY"

    new-array v10, v2, [F

    aput v5, v10, v3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v9, v9, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v10, "scaleX"

    new-array v11, v2, [F

    aput v5, v11, v3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciV:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v6, v6, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget-object v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v6, v6, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    const-string v8, "translationX"

    new-array v9, v2, [F

    aput v0, v9, v3

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    const-string v6, "translationX"

    new-array v8, v2, [F

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v10, v10, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aput v9, v8, v3

    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v6, v6, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    const-string v8, "alpha"

    new-array v9, v2, [F

    aput v12, v9, v3

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    const-string v6, "translationX"

    new-array v2, v2, [F

    aput v12, v2, v3

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    invoke-direct {p0, v0, v5, v3}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lcom/google/android/gms/people/model/d;Landroid/animation/AnimatorSet$Builder;I)V

    :cond_18
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/J;

    invoke-direct {v0, p0}, Lcom/google/android/gms/people/accountswitcherview/J;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->bqi:Lcom/google/android/gms/people/model/d;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->eT(I)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    div-float/2addr v0, v7

    const/high16 v2, 0x43e10000    # 450.0f

    sub-float v0, v13, v0

    mul-float/2addr v0, v2

    float-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjg:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 328
    :goto_d
    iput-boolean v3, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciS:Z

    .line 329
    if-eqz v4, :cond_19

    .line 330
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 332
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->hT:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 309
    :cond_1a
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciW:F

    goto/16 :goto_9

    :cond_1b
    move v0, v3

    .line 314
    goto/16 :goto_a

    :cond_1c
    move v0, v3

    .line 317
    goto/16 :goto_b

    .line 321
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto/16 :goto_c

    .line 323
    :cond_1e
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v5, "alpha"

    new-array v6, v2, [F

    aput v13, v6, v3

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v2, [F

    aput v12, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v6, v6, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v7, "translationY"

    new-array v8, v2, [F

    aput v12, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v7, v7, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v8, "scaleX"

    new-array v9, v2, [F

    aput v13, v9, v3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v8, v8, Lcom/google/android/gms/people/accountswitcherview/S;->cjs:Landroid/view/View;

    const-string v9, "scaleY"

    new-array v10, v2, [F

    aput v13, v10, v3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjE:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v2, [F

    iget v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjd:I

    int-to-float v8, v8

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjF:Landroid/widget/ImageView;

    const-string v6, "alpha"

    new-array v7, v2, [F

    aput v12, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1f
    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjx:Landroid/widget/ImageView;

    const-string v6, "alpha"

    new-array v7, v2, [F

    aput v13, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_20
    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjw:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v2, [F

    aput v12, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v2, [F

    aput v12, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v6, v6, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    const-string v7, "translationX"

    new-array v8, v2, [F

    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v7, v7, Lcom/google/android/gms/people/accountswitcherview/S;->cjv:Landroid/view/View;

    const-string v8, "alpha"

    new-array v9, v2, [F

    aput v13, v9, v3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v8, v8, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    const-string v9, "translationX"

    new-array v10, v2, [F

    aput v12, v10, v3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v5, v5, Lcom/google/android/gms/people/accountswitcherview/S;->cjB:Landroid/view/View;

    const-string v7, "alpha"

    new-array v9, v2, [F

    aput v12, v9, v3

    invoke-static {v5, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v7, v7, Lcom/google/android/gms/people/accountswitcherview/S;->cjq:Landroid/view/View;

    const-string v9, "alpha"

    new-array v2, v2, [F

    aput v13, v2, v3

    invoke-static {v7, v9, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/gms/people/accountswitcherview/G;

    invoke-direct {v1, p0}, Lcom/google/android/gms/people/accountswitcherview/G;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjg:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->cjj:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_d

    .line 326
    :cond_21
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Vd()V

    goto/16 :goto_d

    .line 335
    :pswitch_4
    if-eqz v4, :cond_1

    .line 336
    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 340
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->iU:I

    goto/16 :goto_0

    .line 344
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final setNavigationMode(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 776
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Bw:I

    if-eq v1, p1, :cond_1

    .line 777
    iput p1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Bw:I

    .line 779
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    if-nez v1, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Va()V

    .line 782
    :cond_0
    iget v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->Bw:I

    if-ne v1, v0, :cond_2

    .line 783
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->ciM:Lcom/google/android/gms/people/accountswitcherview/S;

    iget-object v1, v1, Lcom/google/android/gms/people/accountswitcherview/S;->cjr:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;->aC(Z)V

    .line 785
    :cond_1
    return-void

    .line 782
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
