.class public Lcom/android/mail/ui/bR;
.super Landroid/support/v7/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/as;
.implements Lcom/android/mail/ui/bV;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private Mf:I

.field private Nc:Lcom/android/mail/providers/Account;

.field private final aDt:Landroid/database/DataSetObservable;

.field private final aJt:Lcom/android/mail/ui/O;

.field private aKi:Lcom/android/mail/providers/Folder;

.field private aKj:Z

.field protected aKk:Z

.field private aKl:I

.field private aKm:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/bR;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/g;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/ui/bR;->aKl:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/ui/bR;->Mf:I

    .line 71
    new-instance v0, Lcom/android/mail/utils/F;

    const-string v1, "FolderOrAccount"

    invoke-direct {v0, v1}, Lcom/android/mail/utils/F;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mail/ui/bR;->aDt:Landroid/database/DataSetObservable;

    .line 74
    new-instance v0, Lcom/android/mail/ui/bS;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bS;-><init>(Lcom/android/mail/ui/bR;)V

    iput-object v0, p0, Lcom/android/mail/ui/bR;->aJt:Lcom/android/mail/ui/O;

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/bR;)Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mail/ui/bR;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/ui/bR;)Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mail/ui/bR;->aDt:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method private c(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/mail/ui/bR;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 197
    const v1, 0x7f0d01bb

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 198
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 199
    return-void
.end method

.method static synthetic kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/mail/ui/bR;->mW:Ljava/lang/String;

    return-object v0
.end method

.method private zx()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bR;->setResult(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/mail/ui/bR;->finish()V

    .line 234
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;Lcom/android/a/a;)Lcom/android/mail/b/j;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(ILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 8

    .prologue
    .line 240
    iget v3, p3, Lcom/android/mail/providers/Folder;->type:I

    iget v4, p3, Lcom/android/mail/providers/Folder;->ayg:I

    iget-object v0, p3, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v5, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    iget-object v7, p3, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/mail/widget/f;->a(Landroid/content/Context;ILcom/android/mail/providers/Account;IILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mail/ui/bR;->setResult(ILandroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/mail/ui/bR;->finish()V

    .line 247
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Account;I)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public final a(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public final a(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public final b(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public final e(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public final h(Lcom/android/mail/providers/Folder;)V
    .locals 4

    .prologue
    .line 330
    iget-boolean v0, p1, Lcom/android/mail/providers/Folder;->aAa:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/bR;->aKm:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iput-object p1, p0, Lcom/android/mail/ui/bR;->aKm:Lcom/android/mail/providers/Folder;

    .line 335
    invoke-static {p1}, Lcom/android/mail/ui/bB;->m(Lcom/android/mail/providers/Folder;)Lcom/android/mail/ui/bB;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/bR;->c(Landroid/app/Fragment;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bR;->aKi:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/mail/ui/bR;->aKi:Lcom/android/mail/providers/Folder;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/android/mail/ui/bR;->aKj:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/bR;->aKi:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/ui/bR;->Nc:Lcom/android/mail/providers/Account;

    invoke-static {p0, v1, v2}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f030002

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mail/ui/bR;->aKi:Lcom/android/mail/providers/Folder;

    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mail/ui/ShortcutNameActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "extra_folder_click_intent"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "extra_shortcut_name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/bR;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mail/ui/bR;->finish()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/mail/ui/bR;->aKk:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mail/ui/bR;->aKl:I

    iget-object v1, p0, Lcom/android/mail/ui/bR;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, p0, Lcom/android/mail/ui/bR;->aKi:Lcom/android/mail/providers/Folder;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mail/ui/bR;->a(ILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 251
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 253
    iget v0, p0, Lcom/android/mail/ui/bR;->aKl:I

    iget-object v1, p0, Lcom/android/mail/ui/bR;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, p0, Lcom/android/mail/ui/bR;->aKi:Lcom/android/mail/providers/Folder;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mail/ui/bR;->a(ILcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/mail/ui/bR;->zx()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 222
    const v1, 0x7f0d019c

    if-ne v0, v1, :cond_0

    .line 223
    iget v0, p0, Lcom/android/mail/ui/bR;->Mf:I

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/mail/ui/bR;->zx()V

    .line 229
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f04007e

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bR;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/mail/ui/bR;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mail/ui/bR;->aKj:Z

    .line 162
    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mail/ui/bR;->aKk:Z

    .line 163
    iget-boolean v1, p0, Lcom/android/mail/ui/bR;->aKj:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mail/ui/bR;->aKk:Z

    if-nez v1, :cond_0

    .line 164
    sget-object v1, Lcom/android/mail/ui/bR;->mW:Ljava/lang/String;

    const-string v2, "unexpected intent: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 166
    :cond_0
    iget-boolean v1, p0, Lcom/android/mail/ui/bR;->aKj:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mail/ui/bR;->aKk:Z

    if-eqz v1, :cond_4

    .line 167
    :cond_1
    iput v4, p0, Lcom/android/mail/ui/bR;->Mf:I

    .line 172
    :goto_0
    iget-boolean v1, p0, Lcom/android/mail/ui/bR;->aKk:Z

    if-eqz v1, :cond_2

    .line 173
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/bR;->aKl:I

    .line 175
    iget v1, p0, Lcom/android/mail/ui/bR;->aKl:I

    if-nez v1, :cond_2

    .line 176
    sget-object v1, Lcom/android/mail/ui/bR;->mW:Ljava/lang/String;

    const-string v2, "invalid widgetId"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    :cond_2
    const-string v1, "account-shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/ui/bR;->Nc:Lcom/android/mail/providers/Account;

    .line 181
    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/bR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 182
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget v1, p0, Lcom/android/mail/ui/bR;->Mf:I

    if-ne v1, v5, :cond_3

    .line 185
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    :cond_3
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/mail/ui/bR;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayh:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mail/ui/bR;->zw()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/ui/bB;->a(Landroid/net/Uri;Ljava/util/ArrayList;)Lcom/android/mail/ui/bB;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/bR;->c(Landroid/app/Fragment;)V

    .line 190
    return-void

    .line 169
    :cond_4
    iput v5, p0, Lcom/android/mail/ui/bR;->Mf:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v7/app/g;->onResume()V

    .line 217
    return-void
.end method

.method public final vU()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public final wC()Lcom/android/mail/ui/bs;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public final wq()Lcom/android/mail/ui/ConversationCheckedSet;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public final xX()Lcom/android/mail/ui/dD;
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public final xY()Lcom/android/mail/ui/av;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public final xZ()Lcom/android/mail/ui/bV;
    .locals 0

    .prologue
    .line 343
    return-object p0
.end method

.method public final xg()Landroid/content/Context;
    .locals 0

    .prologue
    .line 309
    return-object p0
.end method

.method public final ya()Lcom/android/mail/ui/aP;
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yb()Lcom/android/mail/ui/bx;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yc()Lcom/android/mail/ui/by;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yd()Lcom/android/mail/ui/O;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/mail/ui/bR;->aJt:Lcom/android/mail/ui/O;

    return-object v0
.end method

.method public final ye()Lcom/android/mail/ui/cM;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yf()Lcom/android/mail/ui/ck;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yg()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public final yh()Lcom/android/mail/ui/aF;
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yi()Lcom/android/mail/ui/bZ;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yj()Lcom/android/mail/ui/ar;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yk()Lcom/android/a/a;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public final yl()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method protected zw()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final zy()Lcom/android/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method
