.class public final Lcom/android/mail/browse/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aqC:Lcom/android/mail/browse/W;

.field private aqD:Lcom/android/mail/ui/ac;

.field private aqE:Z

.field private aqF:Z

.field private final aqG:Landroid/database/DataSetObservable;

.field private aqt:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/cS;Lcom/android/mail/ui/ac;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/Z;->aqG:Landroid/database/DataSetObservable;

    .line 94
    invoke-interface {p1}, Lcom/android/mail/ui/cS;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/Z;->c:Landroid/app/FragmentManager;

    .line 95
    const v0, 0x7f0d0173

    invoke-interface {p1, v0}, Lcom/android/mail/ui/cS;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    .line 96
    iput-object p2, p0, Lcom/android/mail/browse/Z;->aqD:Lcom/android/mail/ui/ac;

    .line 97
    invoke-interface {p1}, Lcom/android/mail/ui/cS;->xg()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010214

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v3, Lcom/android/mail/e/a;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0097

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v3, v2, v1, v1, v0}, Lcom/android/mail/e/a;-><init>(Landroid/graphics/drawable/Drawable;III)V

    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->z(I)V

    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->c(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method private qD()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/W;->a(Lcom/android/mail/ui/ac;)V

    .line 236
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/W;->d(Landroid/support/v4/view/ViewPager;)V

    .line 237
    iput-object v1, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    .line 239
    :cond_0
    return-void
.end method

.method private y(I)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/W;->aA(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->y(I)V

    .line 220
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/W;->aA(Z)V

    .line 221
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 8

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    iput-boolean v7, p0, Lcom/android/mail/browse/Z;->aqF:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/mail/browse/Z;->aqE:Z

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "ConvPager"

    const-string v1, "IN CPC.show, but already shown"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0, p1, p2}, Lcom/android/mail/browse/W;->b(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0, p3}, Lcom/android/mail/browse/W;->c(Lcom/android/mail/providers/Conversation;)I

    move-result v0

    .line 122
    if-ltz v0, :cond_0

    .line 123
    invoke-direct {p0, v0}, Lcom/android/mail/browse/Z;->y(I)V

    .line 174
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/Z;->qD()V

    .line 131
    :cond_1
    if-eqz p4, :cond_2

    .line 133
    if-eqz p5, :cond_4

    .line 135
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAlpha(F)V

    .line 136
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 151
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/mail/browse/W;

    iget-object v1, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/Z;->c:Landroid/app/FragmentManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/W;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Conversation;)V

    iput-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    .line 153
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->qw()V

    .line 154
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    iget-object v1, p0, Lcom/android/mail/browse/Z;->aqD:Lcom/android/mail/ui/ac;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/W;->a(Lcom/android/mail/ui/ac;)V

    .line 155
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    iget-object v1, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/W;->d(Landroid/support/v4/view/ViewPager;)V

    .line 156
    const-string v0, "ConvPager"

    const-string v1, "IN CPC.show, adapter=%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    sget-object v0, Lcom/android/mail/utils/ag;->aQL:Lcom/android/mail/f/a;

    .line 159
    const-string v0, "ConvPager"

    const-string v1, "init pager adapter, count=%d initialConv=%s adapter=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v3}, Lcom/android/mail/browse/W;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/U;)V

    .line 165
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0, p3}, Lcom/android/mail/browse/W;->c(Lcom/android/mail/providers/Conversation;)I

    move-result v0

    .line 166
    if-ltz v0, :cond_3

    .line 167
    const-string v1, "ConvPager"

    const-string v2, "*** pager fragment init pos=%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    invoke-direct {p0, v0}, Lcom/android/mail/browse/Z;->y(I)V

    .line 171
    :cond_3
    sget-object v0, Lcom/android/mail/utils/ag;->aQL:Lcom/android/mail/f/a;

    .line 173
    iput-boolean v7, p0, Lcom/android/mail/browse/Z;->aqE:Z

    goto/16 :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAlpha(F)V

    .line 147
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public final aB(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/android/mail/browse/Z;->aqE:Z

    if-nez v0, :cond_0

    .line 182
    const-string v0, "ConvPager"

    const-string v1, "IN CPC.hide, but already hidden"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    iput-boolean v2, p0, Lcom/android/mail/browse/Z;->aqE:Z

    .line 188
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 190
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 194
    :cond_1
    const-string v0, "ConvPager"

    const-string v1, "IN CPC.hide, clearing adapter and unregistering list observer"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 195
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/U;)V

    .line 196
    invoke-direct {p0}, Lcom/android/mail/browse/Z;->qD()V

    goto :goto_0
.end method

.method public final c(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqG:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public final d(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqG:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/mail/browse/Z;->qD()V

    .line 230
    return-void
.end method

.method public final qB()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqt:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestFocus()Z

    .line 213
    return-void
.end method

.method public final qC()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/mail/browse/Z;->aqF:Z

    return v0
.end method

.method public final qE()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->qx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string v0, "ConvPager"

    const-string v1, "IN pager adapter, finished loading primary conversation, switching to cursor mode to load other conversations"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 251
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->qw()V

    .line 254
    :cond_2
    iget-boolean v0, p0, Lcom/android/mail/browse/Z;->aqF:Z

    if-eqz v0, :cond_0

    .line 255
    iput-boolean v3, p0, Lcom/android/mail/browse/Z;->aqF:Z

    .line 256
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqG:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    goto :goto_0
.end method

.method public final qz()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->qz()V

    .line 208
    return-void
.end method

.method public final stopListening()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/mail/browse/Z;->aqC:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->stopListening()V

    .line 276
    :cond_0
    return-void
.end method
