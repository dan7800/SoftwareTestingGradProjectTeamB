.class public final Lcom/android/mail/ui/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/dE;


# static fields
.field public static final mW:Ljava/lang/String;


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private aCW:Lcom/android/mail/providers/Conversation;

.field private aFf:Lcom/android/mail/ui/dD;

.field private aFg:Landroid/view/MenuItem;

.field private aFh:Landroid/view/MenuItem;

.field protected final aFi:Z

.field protected aob:Lcom/android/mail/ui/as;

.field private aql:Lcom/android/mail/providers/o;

.field protected aqm:Lcom/android/mail/ui/ac;

.field private aqp:Lcom/android/mail/providers/Folder;

.field private final atL:Lcom/android/mail/providers/d;

.field private final mContext:Landroid/content/Context;

.field protected nY:Landroid/support/v7/app/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/S;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/android/mail/ui/T;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/T;-><init>(Lcom/android/mail/ui/S;)V

    iput-object v0, p0, Lcom/android/mail/ui/S;->atL:Lcom/android/mail/providers/d;

    .line 104
    iput-object p1, p0, Lcom/android/mail/ui/S;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/S;->aFi:Z

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/S;Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/mail/ui/S;->p(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method private cL(I)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    const/16 v1, 0x18

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/a;->setDisplayOptions(II)V

    .line 382
    return-void
.end method

.method private getMode()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/mail/ui/S;->aFf:Lcom/android/mail/ui/dD;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/mail/ui/S;->aFf:Lcom/android/mail/ui/dD;

    invoke-virtual {v0}, Lcom/android/mail/ui/dD;->getMode()I

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p(Lcom/android/mail/providers/Account;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 154
    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 155
    :goto_0
    iput-object p1, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    .line 156
    iget-object v3, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/mail/ui/S;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->xg()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 159
    const-string v4, "account"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    new-instance v4, Lcom/android/mail/ui/V;

    iget-object v5, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    iget-object v5, v5, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-direct {v4, p0, v5, v0}, Lcom/android/mail/ui/V;-><init>(Lcom/android/mail/ui/S;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 161
    new-array v0, v2, [Landroid/os/Bundle;

    aput-object v3, v0, v1

    invoke-virtual {v4, v0}, Lcom/android/mail/ui/V;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xm()V

    .line 164
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    return-void
.end method

.method private xj()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    iget-object v3, p0, Lcom/android/mail/ui/S;->aFg:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v4, 0x200000

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAg:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->vM()Lcom/android/mail/browse/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/MenuItem;Z)V

    .line 238
    iget-object v0, p0, Lcom/android/mail/ui/S;->aFh:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v4, 0x400000

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    iget v3, v3, Lcom/android/mail/providers/Folder;->aAg:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v3}, Lcom/android/mail/ui/ac;->vM()Lcom/android/mail/browse/u;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v3}, Lcom/android/mail/ui/ac;->vM()Lcom/android/mail/browse/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mail/browse/u;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    :cond_1
    :goto_1
    invoke-static {v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/view/MenuItem;Z)V

    .line 243
    return-void

    :cond_2
    move v0, v2

    .line 233
    goto :goto_0

    :cond_3
    move v1, v2

    .line 238
    goto :goto_1
.end method

.method private xk()V
    .locals 1

    .prologue
    .line 286
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/mail/ui/S;->cL(I)V

    .line 287
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xm()V

    .line 288
    return-void
.end method

.method private xm()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/S;->aob:Lcom/android/mail/ui/as;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-direct {p0}, Lcom/android/mail/ui/S;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dn(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/mail/ui/S;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    iget-boolean v0, p0, Lcom/android/mail/ui/S;->aFi:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/mail/ui/S;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/mail/ui/dD;->dk(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 344
    :goto_1
    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-nez v0, :cond_5

    .line 352
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/mail/ui/S;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 355
    :cond_5
    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mail/ui/S;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/as;Lcom/android/mail/ui/ac;Landroid/support/v7/app/a;)V
    .locals 2

    .prologue
    .line 137
    iput-object p3, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    .line 138
    iput-object p2, p0, Lcom/android/mail/ui/S;->aqm:Lcom/android/mail/ui/ac;

    .line 139
    iput-object p1, p0, Lcom/android/mail/ui/S;->aob:Lcom/android/mail/ui/as;

    .line 141
    new-instance v0, Lcom/android/mail/ui/U;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/U;-><init>(Lcom/android/mail/ui/S;)V

    iput-object v0, p0, Lcom/android/mail/ui/S;->aql:Lcom/android/mail/providers/o;

    .line 149
    iget-object v0, p0, Lcom/android/mail/ui/S;->aql:Lcom/android/mail/providers/o;

    iget-object v1, p0, Lcom/android/mail/ui/S;->aqm:Lcom/android/mail/ui/ac;

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/o;->a(Lcom/android/mail/ui/by;)Lcom/android/mail/providers/Folder;

    .line 150
    iget-object v0, p0, Lcom/android/mail/ui/S;->atL:Lcom/android/mail/providers/d;

    invoke-interface {p1}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/S;->p(Lcom/android/mail/providers/Account;)V

    .line 151
    return-void
.end method

.method public final a(Lcom/android/mail/ui/dD;)V
    .locals 1

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/mail/ui/S;->aFf:Lcom/android/mail/ui/dD;

    .line 450
    iget-object v0, p0, Lcom/android/mail/ui/S;->aFf:Lcom/android/mail/ui/dD;

    invoke-virtual {v0, p0}, Lcom/android/mail/ui/dD;->a(Lcom/android/mail/ui/dE;)V

    .line 451
    return-void
.end method

.method public final c(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    iput-object p1, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    .line 368
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xm()V

    .line 370
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xj()V

    goto :goto_0
.end method

.method public final cI(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 184
    iget-object v0, p0, Lcom/android/mail/ui/S;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/mail/ui/S;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v1}, Lcom/android/mail/ui/as;->D()V

    .line 190
    invoke-direct {p0}, Lcom/android/mail/ui/S;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    :goto_0
    :pswitch_0
    return-void

    .line 194
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xk()V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 198
    invoke-direct {p0, v3}, Lcom/android/mail/ui/S;->cL(I)V

    goto :goto_0

    .line 202
    :pswitch_3
    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 215
    :pswitch_4
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xk()V

    goto :goto_0

    .line 209
    :cond_0
    :pswitch_5
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    .line 210
    invoke-direct {p0, v3}, Lcom/android/mail/ui/S;->cL(I)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final d(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    .line 171
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xm()V

    .line 172
    return-void
.end method

.method public final k(Lcom/android/mail/providers/Conversation;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/mail/ui/S;->aCW:Lcom/android/mail/providers/Conversation;

    .line 386
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f0d0289

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/S;->aFg:Landroid/view/MenuItem;

    .line 110
    const v0, 0x7f0d028a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/S;->aFh:Landroid/view/MenuItem;

    .line 113
    invoke-direct {p0}, Lcom/android/mail/ui/S;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mail/ui/S;->aql:Lcom/android/mail/providers/o;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/mail/ui/S;->aql:Lcom/android/mail/providers/o;

    invoke-virtual {v0}, Lcom/android/mail/providers/o;->um()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/S;->aql:Lcom/android/mail/providers/o;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/S;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 180
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 246
    invoke-interface {p1, v1}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 249
    sget-object v0, Lcom/android/mail/ui/S;->mW:Ljava/lang/String;

    const-string v3, "ActionBarView.onPrepareOptionsMenu()."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 251
    iget-object v0, p0, Lcom/android/mail/ui/S;->aqm:Lcom/android/mail/ui/ac;

    invoke-interface {v0}, Lcom/android/mail/ui/ac;->wE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    move v0, v2

    .line 255
    :goto_0
    if-ge v0, v1, :cond_1

    .line 256
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 257
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/S;->xj()V

    .line 263
    invoke-direct {p0}, Lcom/android/mail/ui/S;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_1
    :goto_1
    return-void

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/ui/S;->aCW:Lcom/android/mail/providers/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/S;->aCW:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uE()Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    const v4, 0x7f0d027f

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v5, 0x20000

    invoke-virtual {v0, v5}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {p1, v4, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v4, 0x7f0d0280

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v3, 0x20000

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {p1, v4, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v6}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v3

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    move v0, v1

    :goto_5
    const v4, 0x7f0d027a

    invoke-static {p1, v4, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    const v3, 0x7f0d0278

    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uV()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    const v3, 0x7f0d0279

    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v6}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v8}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uU()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    const v3, 0x7f0d0276

    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v3, 0x7f0d0277

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v6}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v6}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_9
    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v3, 0x7f0d027c

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x4000

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_a
    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v3, 0x7f0d027e

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/high16 v4, 0x10000

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_b
    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f0d027d

    iget-object v3, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v3

    invoke-static {p1, v0, v3}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f0d0277

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/mail/ui/S;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v3}, Lcom/android/mail/ui/as;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900a2

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v6, v6, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    const v3, 0x7f0d0284

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v7}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mail/ui/S;->aCW:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azg:Z

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v3, 0x7f0d0285

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v7}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mail/ui/S;->aCW:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azg:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_d
    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v3, 0x7f0d0286

    iget-object v0, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mail/ui/S;->aCW:Lcom/android/mail/providers/Conversation;

    iget-boolean v0, v0, Lcom/android/mail/providers/Conversation;->azi:Z

    if-nez v0, :cond_f

    move v0, v1

    :goto_e
    invoke-static {p1, v3, v0}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    const v0, 0x7f0d0281

    iget-object v3, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v3, v8}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/mail/ui/S;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/mail/ui/S;->aCW:Lcom/android/mail/providers/Conversation;

    iget-boolean v3, v3, Lcom/android/mail/providers/Conversation;->azh:Z

    if-nez v3, :cond_10

    :goto_f
    invoke-static {p1, v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    goto/16 :goto_1

    :cond_3
    move v3, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_6

    :cond_8
    move v0, v2

    goto/16 :goto_7

    :cond_9
    move v0, v2

    goto/16 :goto_8

    :cond_a
    move v0, v2

    goto/16 :goto_9

    :cond_b
    move v0, v2

    goto/16 :goto_a

    :cond_c
    move v0, v2

    goto/16 :goto_b

    :cond_d
    move v0, v2

    goto/16 :goto_c

    :cond_e
    move v0, v2

    goto :goto_d

    :cond_f
    move v0, v2

    goto :goto_e

    :cond_10
    move v1, v2

    goto :goto_f

    .line 275
    :pswitch_1
    const v0, 0x7f0d028d

    iget-object v3, p0, Lcom/android/mail/ui/S;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->ug()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/mail/ui/S;->aFi:Z

    if-nez v3, :cond_11

    :goto_10
    invoke-static {p1, v0, v1}, Lcom/android/mail/utils/ag;->a(Landroid/view/Menu;IZ)V

    goto/16 :goto_1

    :cond_11
    move v1, v2

    goto :goto_10

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final xi()I
    .locals 4

    .prologue
    const v1, 0x7f100004

    const v0, 0x7f100005

    .line 117
    invoke-direct {p0}, Lcom/android/mail/ui/S;->getMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 131
    sget-object v1, Lcom/android/mail/ui/S;->mW:Ljava/lang/String;

    const-string v2, "Menu requested for unknown view mode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 121
    goto :goto_0

    .line 125
    :pswitch_2
    const v0, 0x7f100006

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :pswitch_4
    const v0, 0x7f100015

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final xl()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 318
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/a;->setDisplayOptions(II)V

    .line 324
    iget-object v0, p0, Lcom/android/mail/ui/S;->nY:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->cD()V

    goto :goto_0
.end method
