.class public final Lcom/android/mail/ui/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/dE;
.implements Lcom/android/mail/ui/dy;


# instance fields
.field private aCT:Lcom/android/mail/ui/MailActivity;

.field private aLK:Lcom/android/mail/providers/z;

.field private aLT:Lcom/android/mail/ui/MaterialSearchActionView;

.field private aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

.field private aLV:I

.field private aLW:I

.field private aLX:I

.field private aLY:Z

.field private aLZ:Z

.field private aqm:Lcom/android/mail/ui/ac;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ac;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    .line 76
    iput-object p2, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v1}, Lcom/android/mail/ui/MailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->zJ()Lcom/android/mail/providers/z;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/cx;->aLK:Lcom/android/mail/providers/z;

    .line 83
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    const v2, 0x7f0d01f5

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    iput-object v0, p0, Lcom/android/mail/ui/cx;->aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    .line 85
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    iget-object v2, p0, Lcom/android/mail/ui/cx;->aLK:Lcom/android/mail/providers/z;

    invoke-virtual {v0, p0, v2}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->a(Lcom/android/mail/ui/cx;Lcom/android/mail/providers/z;)V

    .line 86
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    const v2, 0x7f0d01c6

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/MailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/MaterialSearchActionView;

    iput-object v0, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    .line 88
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    const-string v2, "query"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/mail/ui/MaterialSearchActionView;->a(Lcom/android/mail/ui/cx;Ljava/lang/String;Z)V

    .line 91
    if-eqz p4, :cond_0

    const-string v0, "extraSearchViewControllerViewState"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "extraSearchViewControllerViewState"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/cx;->aLW:I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->xX()Lcom/android/mail/ui/dD;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dD;->a(Lcom/android/mail/ui/dE;)V

    .line 96
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/cx;)Lcom/android/mail/providers/z;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLK:Lcom/android/mail/providers/z;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/cx;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/mail/ui/cx;->aLY:Z

    return p1
.end method

.method static synthetic b(Lcom/android/mail/ui/cx;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/mail/ui/cx;->aLZ:Z

    return v0
.end method

.method static synthetic c(Lcom/android/mail/ui/cx;)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/cx;->aLZ:Z

    return v0
.end method

.method private k(IZ)V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    iput p1, p0, Lcom/android/mail/ui/cx;->aLW:I

    .line 178
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    iget v4, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-interface {v3, v4}, Lcom/android/mail/ui/ac;->cM(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v6, v0

    .line 180
    :goto_0
    if-ne p1, v0, :cond_5

    move v5, v0

    .line 182
    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_6

    :cond_0
    move v4, v0

    .line 184
    :goto_2
    if-eqz v4, :cond_7

    move v3, v1

    .line 185
    :goto_3
    if-eqz v5, :cond_1

    move v2, v1

    .line 186
    :cond_1
    if-eqz p2, :cond_8

    .line 187
    iget-object v7, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-direct {p0, v7, v3}, Lcom/android/mail/ui/cx;->q(Landroid/view/View;I)V

    .line 188
    iget-object v3, p0, Lcom/android/mail/ui/cx;->aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-direct {p0, v3, v2}, Lcom/android/mail/ui/cx;->q(Landroid/view/View;I)V

    .line 193
    :goto_4
    iget-object v2, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-virtual {v2, v5}, Lcom/android/mail/ui/MaterialSearchActionView;->by(Z)V

    .line 195
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/mail/ui/cx;->zM()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 196
    :cond_2
    :goto_5
    if-eqz v0, :cond_a

    const v0, 0x7f0a00ca

    .line 198
    :goto_6
    iget-object v2, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-static {v2, v0}, Lcom/android/mail/utils/al;->a(Landroid/app/Activity;I)V

    .line 201
    if-eqz v6, :cond_b

    .line 202
    invoke-direct {p0}, Lcom/android/mail/ui/cx;->zN()V

    .line 212
    :cond_3
    :goto_7
    return-void

    :cond_4
    move v6, v1

    .line 178
    goto :goto_0

    :cond_5
    move v5, v1

    .line 180
    goto :goto_1

    :cond_6
    move v4, v1

    .line 182
    goto :goto_2

    :cond_7
    move v3, v2

    .line 184
    goto :goto_3

    .line 190
    :cond_8
    iget-object v7, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-static {v7, v3}, Lcom/android/mail/ui/cx;->r(Landroid/view/View;I)V

    .line 191
    iget-object v3, p0, Lcom/android/mail/ui/cx;->aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-static {v3, v2}, Lcom/android/mail/ui/cx;->r(Landroid/view/View;I)V

    goto :goto_4

    :cond_9
    move v0, v1

    .line 195
    goto :goto_5

    .line 196
    :cond_a
    const v0, 0x7f0a00ae

    goto :goto_6

    .line 203
    :cond_b
    if-eqz v5, :cond_c

    .line 205
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-virtual {v0, v1, v1}, Lcom/android/mail/ui/MaterialSearchActionView;->a(ZI)V

    goto :goto_7

    .line 208
    :cond_c
    iget v0, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-virtual {v0}, Lcom/android/mail/ui/MaterialSearchActionView;->zL()V

    goto :goto_7
.end method

.method private q(Landroid/view/View;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x96

    .line 218
    if-nez p2, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/cy;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mail/ui/cy;-><init>(Lcom/android/mail/ui/cx;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private static r(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    if-nez p1, :cond_0

    .line 244
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private zM()Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->zB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/cx;->aLW:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zN()V
    .locals 3

    .prologue
    .line 258
    iget v0, p0, Lcom/android/mail/ui/cx;->aLX:I

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-direct {p0}, Lcom/android/mail/ui/cx;->zM()Z

    move-result v1

    iget v2, p0, Lcom/android/mail/ui/cx;->aLX:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/MaterialSearchActionView;->a(ZI)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public final cI(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget v0, p0, Lcom/android/mail/ui/cx;->aLV:I

    .line 120
    iput p1, p0, Lcom/android/mail/ui/cx;->aLV:I

    .line 122
    iget-object v1, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    iget v2, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-interface {v1, v2}, Lcom/android/mail/ui/ac;->cM(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/mail/ui/cx;->k(IZ)V

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    if-nez v0, :cond_1

    .line 125
    iget v0, p0, Lcom/android/mail/ui/cx;->aLW:I

    invoke-direct {p0, v0, v3}, Lcom/android/mail/ui/cx;->k(IZ)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0, v3, v3}, Lcom/android/mail/ui/cx;->k(IZ)V

    goto :goto_0
.end method

.method public final cs(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->cr(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public final ct(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-virtual {v1}, Lcom/android/mail/ui/MaterialSearchActionView;->zL()V

    .line 283
    iget-object v1, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v1, v0}, Lcom/android/mail/ui/ac;->ch(Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method public final de(I)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/cx;->k(IZ)V

    .line 169
    return-void
.end method

.method public final j(IZ)V
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/mail/ui/cx;->aLX:I

    if-eq v0, p1, :cond_2

    .line 136
    iput p1, p0, Lcom/android/mail/ui/cx;->aLX:I

    .line 137
    iget v0, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    iget v1, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-interface {v0, v1}, Lcom/android/mail/ui/ac;->cM(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-static {v1, v0}, Lcom/android/mail/ui/cx;->r(Landroid/view/View;I)V

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/ui/cx;->zN()V

    .line 145
    :cond_2
    return-void

    .line 138
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    const-string v0, "extraSearchViewControllerViewState"

    iget v1, p0, Lcom/android/mail/ui/cx;->aLW:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lcom/android/mail/ui/cx;->aLY:Z

    iput-boolean v0, p0, Lcom/android/mail/ui/cx;->aLZ:Z

    .line 103
    iget-boolean v0, p0, Lcom/android/mail/ui/cx;->aLY:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLK:Lcom/android/mail/providers/z;

    invoke-virtual {v0}, Lcom/android/mail/providers/z;->qD()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->xX()Lcom/android/mail/ui/dD;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dD;->b(Lcom/android/mail/ui/dE;)V

    .line 107
    iput-object v1, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    .line 108
    iput-object v1, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    .line 109
    iput-object v1, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    .line 110
    iput-object v1, p0, Lcom/android/mail/ui/cx;->aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    .line 111
    return-void
.end method

.method public final wb()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 148
    iget-object v2, p0, Lcom/android/mail/ui/cx;->aqm:Lcom/android/mail/ui/ac;

    iget v3, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-interface {v2, v3}, Lcom/android/mail/ui/ac;->cM(I)Z

    move-result v2

    .line 149
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/mail/ui/cx;->aLU:Lcom/android/mail/ui/MaterialSearchSuggestionsList;

    invoke-virtual {v3}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/mail/ui/cx;->k(IZ)V

    .line 156
    :goto_0
    return v0

    .line 152
    :cond_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-virtual {v2}, Lcom/android/mail/ui/MaterialSearchActionView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-direct {p0, v1, v0}, Lcom/android/mail/ui/cx;->k(IZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public final zO()V
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/android/mail/ui/cx;->aLV:I

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActivity;->setResult(I)V

    .line 272
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->finish()V

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cx;->aLT:Lcom/android/mail/ui/MaterialSearchActionView;

    invoke-virtual {v0}, Lcom/android/mail/ui/MaterialSearchActionView;->zL()V

    .line 275
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/cx;->k(IZ)V

    goto :goto_0
.end method

.method public final zP()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/mail/ui/MailActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    invoke-virtual {v0}, Lcom/android/mail/ui/MailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/android/mail/ui/cx;->aCT:Lcom/android/mail/ui/MailActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
