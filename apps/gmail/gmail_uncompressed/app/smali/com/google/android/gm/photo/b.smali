.class public final Lcom/google/android/gm/photo/b;
.super Lcom/android/mail/g/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/api/p;
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/g/c;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/gms/common/api/p;",
        "Lcom/google/android/gms/common/api/q;",
        "Lcom/google/android/gms/common/api/u",
        "<",
        "Lcom/google/android/gms/e/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private bbm:Lcom/google/android/gms/common/api/n;

.field private bbn:Lcom/android/mail/providers/Attachment;

.field private bbo:Lcom/android/mail/providers/Attachment;

.field private bbp:Landroid/content/Intent;

.field private bbq:Landroid/widget/ImageView;

.field private bbr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/g/e;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mail/g/c;-><init>(Lcom/android/mail/g/e;)V

    .line 58
    return-void
.end method

.method private static j(Lcom/android/mail/providers/Attachment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-static {v0}, Lcom/android/mail/utils/ag;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method private k(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 116
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 125
    :goto_1
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gm/photo/b;->nP()Lcom/android/ex/photo/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_2

    const v0, 0x7f050008

    :goto_2
    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 121
    :cond_2
    const v0, 0x7f050009

    goto :goto_2
.end method

.method private k(Lcom/android/mail/providers/Attachment;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 251
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    .line 252
    iput-object v5, p0, Lcom/google/android/gm/photo/b;->bbn:Lcom/android/mail/providers/Attachment;

    .line 253
    invoke-static {p1}, Lcom/google/android/gm/photo/b;->j(Lcom/android/mail/providers/Attachment;)Landroid/net/Uri;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->uq()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v2, "Panorama loading info for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    iput-object p1, p0, Lcom/google/android/gm/photo/b;->bbo:Lcom/android/mail/providers/Attachment;

    .line 257
    iput-object v5, p0, Lcom/google/android/gm/photo/b;->bbp:Landroid/content/Intent;

    .line 259
    :try_start_0
    sget-object v1, Lcom/google/android/gms/e/a;->cgj:Lcom/google/android/gms/e/c;

    iget-object v2, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/e/c;->a(Lcom/google/android/gms/common/api/n;Landroid/net/Uri;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    .line 261
    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 268
    sget-object v1, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v2, "Caught SecurityException when loading panorama information"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbq:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v4}, Lcom/google/android/gm/photo/b;->k(Landroid/view/View;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final DE()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    .line 204
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x2328

    if-ne p1, v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    .line 106
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 113
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 170
    sget-object v0, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v1, "Panorama connection failed: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 172
    iget-boolean v0, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->Kj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gm/photo/b;->nP()Lcom/android/ex/photo/t;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x2328

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/a;->b(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->getErrorCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gm/photo/c;

    invoke-direct {v1}, Lcom/google/android/gm/photo/c;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "dialog-error"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gm/photo/c;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gm/photo/b;->tk()Lcom/android/mail/g/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/g/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "errordialog"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/photo/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 186
    iput-boolean v4, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/t;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    check-cast p1, Lcom/google/android/gms/e/d;

    invoke-interface {p1}, Lcom/google/android/gms/e/d;->RQ()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/e/d;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v3, "Panorama found viewerIntent: %s, status: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gm/photo/b;->bbo:Lcom/android/mail/providers/Attachment;

    invoke-static {v3}, Lcom/google/android/gm/photo/b;->j(Lcom/android/mail/providers/Attachment;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/photo/b;->bbq:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v6}, Lcom/google/android/gm/photo/b;->k(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/gm/photo/b;->bbp:Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v2, "Panorama error: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbq:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v5}, Lcom/google/android/gm/photo/b;->k(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final bF(I)V
    .locals 5

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/mail/g/c;->bF(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gm/photo/b;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0, v0}, Lcom/google/android/gm/photo/b;->k(Lcom/android/mail/providers/Attachment;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    sget-object v1, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v2, "Panorama saving attachment %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    iput-object v0, p0, Lcom/google/android/gm/photo/b;->bbn:Lcom/android/mail/providers/Attachment;

    goto :goto_0
.end method

.method public final bG(I)V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/mail/g/c;->bG(I)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/gm/photo/b;->bF(I)V

    .line 131
    return-void
.end method

.method public final dz(I)V
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v1, "Panorama connection suspended:"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 166
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 281
    const v1, 0x7f0d01de

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbp:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 283
    iget-object v1, p0, Lcom/google/android/gm/photo/b;->bbp:Landroid/content/Intent;

    .line 285
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/photo/b;->nP()Lcom/android/ex/photo/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ex/photo/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    sget-object v2, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v3, "Cannot view attachment: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 290
    :cond_1
    sget-object v0, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v1, "Viewer intent is null for attachment: %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gm/photo/b;->bbo:Lcom/android/mail/providers/Attachment;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/mail/g/c;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-virtual {p0}, Lcom/google/android/gm/photo/b;->nP()Lcom/android/ex/photo/t;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/ex/photo/t;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/e/a;->bBK:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    .line 69
    const v0, 0x7f0d01de

    invoke-virtual {p0, v0}, Lcom/google/android/gm/photo/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/gm/photo/b;->bbq:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbq:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    if-eqz p1, :cond_0

    const-string v0, "resolving-error"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    .line 74
    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/mail/g/c;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbq:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/photo/b;->k(Landroid/view/View;Z)V

    .line 94
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/mail/g/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "resolving-error"

    iget-boolean v1, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/mail/g/c;->onStart()V

    .line 85
    iget-boolean v0, p0, Lcom/google/android/gm/photo/b;->bbr:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 88
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->disconnect()V

    .line 99
    invoke-super {p0}, Lcom/android/mail/g/c;->onStop()V

    .line 100
    return-void
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 159
    sget-object v0, Lcom/google/android/gm/photo/b;->mW:Ljava/lang/String;

    const-string v1, "Panorama onConnected loading info for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/photo/b;->bbn:Lcom/android/mail/providers/Attachment;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    iget-object v0, p0, Lcom/google/android/gm/photo/b;->bbn:Lcom/android/mail/providers/Attachment;

    invoke-direct {p0, v0}, Lcom/google/android/gm/photo/b;->k(Lcom/android/mail/providers/Attachment;)V

    .line 161
    return-void
.end method
