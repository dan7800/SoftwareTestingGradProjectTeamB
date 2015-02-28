.class public Lcom/android/mail/ui/MailboxSelectionActivity;
.super Landroid/support/v7/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/app/g;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final aLh:[Ljava/lang/String;

.field protected static final mW:Ljava/lang/String;


# instance fields
.field private aA:Z

.field private aHz:Landroid/view/View;

.field private aKk:Z

.field private aKl:I

.field private final aLi:[I

.field private aLj:Z

.field private aLk:Landroid/widget/SimpleCursorAdapter;

.field aLl:Z

.field private aLm:Landroid/widget/ListView;

.field private aLn:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLh:[Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/MailboxSelectionActivity;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/g;-><init>()V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0d01cf

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLi:[I

    .line 68
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    .line 71
    iput v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKl:I

    .line 76
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLl:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aA:Z

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mail/ui/cr;

    invoke-direct {v1, p0, p1}, Lcom/android/mail/ui/cr;-><init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity;->l(Landroid/database/Cursor;)V

    return-void
.end method

.method private g(Lcom/android/mail/providers/Account;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->sF()Lcom/android/mail/ui/dF;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/dF;->p(Lcom/android/mail/providers/Account;)V

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aHz:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-static {p1, v1}, Lcom/android/mail/ui/dF;->a(Lcom/android/mail/providers/Account;Z)Lcom/android/mail/ui/dF;

    move-result-object v0

    const-string v1, "wait-fragment"

    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const v3, 0x7f0d0242

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private l(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    .line 219
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    if-eqz v0, :cond_6

    .line 220
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 225
    :cond_1
    invoke-static {p0}, Lcom/android/mail/providers/t;->aq(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_2

    .line 227
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/mail/ui/MailboxSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    :cond_2
    iput-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLl:Z

    move v0, v2

    .line 246
    :goto_0
    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aHz:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aA:Z

    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->setVisible(Z)V

    .line 254
    :cond_3
    new-instance v0, Lcom/android/mail/ui/cs;

    sget-object v4, Lcom/android/mail/ui/MailboxSelectionActivity;->aLh:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLi:[I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/cs;-><init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLk:Landroid/widget/SimpleCursorAdapter;

    .line 265
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLm:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLk:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    :cond_4
    return-void

    .line 235
    :cond_5
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    if-eqz v0, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 236
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLn:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 240
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {p1}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->u(Lcom/android/mail/providers/Account;)V

    move v0, v2

    .line 242
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private sF()Lcom/android/mail/ui/dF;
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "wait-fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/dF;

    return-object v0
.end method

.method private u(Lcom/android/mail/providers/Account;)V
    .locals 3

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    if-eqz v0, :cond_2

    .line 277
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->zK()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    if-eqz v0, :cond_1

    .line 283
    const-string v0, "appWidgetId"

    iget v2, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKl:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    :cond_1
    const-string v0, "account-shortcut"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailboxSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 292
    return-void

    .line 280
    :cond_3
    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    goto :goto_0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 314
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 320
    invoke-direct {p0, v2}, Lcom/android/mail/ui/MailboxSelectionActivity;->g(Lcom/android/mail/providers/Account;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLl:Z

    .line 395
    invoke-direct {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->sF()Lcom/android/mail/ui/dF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/g;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 304
    const v1, 0x7f0d019c

    if-ne v0, v1, :cond_0

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->setResult(I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->finish()V

    .line 308
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->setContentView(I)V

    .line 89
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLm:Landroid/widget/ListView;

    .line 90
    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLm:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    const v0, 0x7f0d0110

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aHz:Landroid/view/View;

    .line 92
    const v0, 0x7f0d0242

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLn:Landroid/view/View;

    .line 93
    if-eqz p1, :cond_6

    .line 94
    const-string v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    :cond_0
    const-string v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    :cond_1
    const-string v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKl:I

    :cond_2
    const-string v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLl:Z

    .line 108
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    if-eqz v0, :cond_5

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_5
    const v0, 0x7f0d019c

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/MailboxSelectionActivity;->setVisible(Z)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/MailboxSelectionActivity;->setResult(I)V

    .line 117
    return-void

    .line 96
    :cond_6
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    iput-boolean v3, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKl:I

    .line 101
    iget v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKl:I

    if-eqz v0, :cond_3

    .line 102
    iput-boolean v3, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 339
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 344
    :goto_0
    return-object v0

    .line 341
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLk:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->u(Lcom/android/mail/providers/Account;)V

    .line 272
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {p2}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->uj()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aHz:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/android/mail/ui/MailboxSelectionActivity;->l(Landroid/database/Cursor;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailboxSelectionActivity;->g(Lcom/android/mail/providers/Account;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onNewIntent(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/MailboxSelectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v7/app/g;->onPause()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aA:Z

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v7/app/g;->onResume()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aA:Z

    .line 151
    iget-boolean v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLl:Z

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/mail/ui/MailboxSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/cq;

    invoke-direct {v1, p0, v0}, Lcom/android/mail/ui/cq;-><init>(Lcom/android/mail/ui/MailboxSelectionActivity;Landroid/content/ContentResolver;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/cq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "createShortcut"

    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLj:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-string v0, "createWidget"

    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKk:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget v0, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKl:I

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "widgetId"

    iget v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aKl:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    :cond_0
    const-string v0, "waitingForAddAccountResult"

    iget-boolean v1, p0, Lcom/android/mail/ui/MailboxSelectionActivity;->aLl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v7/app/g;->onStart()V

    .line 135
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 136
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v7/app/g;->onStop()V

    .line 142
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 143
    return-void
.end method

.method protected zK()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 298
    const-class v0, Lcom/android/mail/ui/bR;

    return-object v0
.end method
