.class public Lcom/google/android/gm/welcome/SetupAddressesFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/welcome/x;


# instance fields
.field private bbm:Lcom/google/android/gms/common/api/n;

.field private bsd:Lcom/google/android/gm/welcome/a;

.field private bse:Landroid/widget/LinearLayout;

.field private bsf:Landroid/widget/TextView;

.field private final bsg:Lcom/google/android/gm/welcome/m;

.field private bsh:Lcom/google/android/gm/welcome/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 106
    new-instance v0, Lcom/google/android/gm/welcome/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/welcome/m;-><init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;B)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsg:Lcom/google/android/gm/welcome/m;

    .line 629
    return-void
.end method

.method private IR()V
    .locals 5

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x15

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/google/android/gm/welcome/v;->a(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/google/android/gm/welcome/x;)Lcom/android/mail/ui/Q;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 424
    return-void
.end method

.method private IS()V
    .locals 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Lcom/google/android/gms/people/g;

    invoke-direct {v0}, Lcom/google/android/gms/people/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/people/g;->UN()Lcom/google/android/gms/people/g;

    move-result-object v0

    .line 595
    sget-object v1, Lcom/google/android/gms/people/q;->cgI:Lcom/google/android/gms/people/f;

    iget-object v2, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/people/f;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/g;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    .line 597
    :cond_0
    return-void
.end method

.method private W(II)V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 394
    const-string v0, "error-dialog-tag"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    check-cast v0, Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 400
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gm/welcome/b;->V(II)Landroid/app/DialogFragment;

    move-result-object v0

    .line 402
    const-string v2, "error-dialog-tag"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->IS()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Lcom/google/android/gm/welcome/a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bse:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/welcome/SetupAddressesFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsf:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->IR()V

    return-void
.end method

.method private fx(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "account_name=? AND account_type=\'com.google\' AND data_set IS NULL AND dirty!= 0"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 272
    if-eqz v1, :cond_0

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v6

    .line 281
    :goto_0
    return v0

    .line 277
    :cond_1
    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v7

    .line 281
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    :try_start_1
    sget-object v2, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 277
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/welcome/WelcomeTourState;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 428
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-nez v0, :cond_2

    .line 429
    new-instance v0, Lcom/google/android/gm/welcome/a;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-virtual {p1}, Lcom/google/android/gm/welcome/WelcomeTourState;->IY()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/gm/welcome/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    .line 435
    new-instance v0, Lcom/google/android/gm/welcome/l;

    invoke-direct {v0, p0, v8}, Lcom/google/android/gm/welcome/l;-><init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;B)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsh:Lcom/google/android/gm/welcome/l;

    .line 436
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    iget-object v1, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsh:Lcom/google/android/gm/welcome/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/welcome/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 442
    :cond_0
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gm/welcome/WelcomeTourState;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Lcom/android/mail/a/d;->f(ILjava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lcom/google/android/gm/welcome/WelcomeTourState;->IY()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->IO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    if-nez v1, :cond_6

    const-string v1, "WelcomeTour"

    const-string v4, "Updated state not found for account: id:%s %s"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->IZ()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "WelcomeTour"

    const-string v4, "Existing state is not pending for account id:%s %s. Removing it from the list."

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->IO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gm/welcome/WelcomeTourState;->IY()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :cond_3
    return-void

    .line 445
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string v1, "WelcomeTour"

    const-string v4, "Found new account %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v5, v8

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->IZ()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v11}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->el(I)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const-string v4, "WelcomeTour"

    const-string v5, "Rename completed for id: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    const-string v4, "WelcomeTour"

    const-string v5, "Email address changed for id:%s from %s to %s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v6, v9

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-interface {v3, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const-string v4, "WelcomeTour"

    const-string v5, "Address changed but it was not pending for id: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->fy(Ljava/lang/String;)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const-string v4, "WelcomeTour"

    const-string v5, "Display name changed to %s for account id: %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_9
    const-string v4, "WelcomeTour"

    const-string v5, "Account %s is not changed"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->IO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->IS()V

    .line 447
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/c/c;->ft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses-account_added"

    invoke-static {v2}, Lcom/google/android/gm/c/c;->fu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    const v2, 0x7f090144

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    .line 317
    if-ne p1, v8, :cond_0

    .line 318
    packed-switch p2, :pswitch_data_0

    .line 349
    :cond_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 350
    :goto_0
    return-void

    .line 320
    :pswitch_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "address_changed"

    const-string v3, "cancelled"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 325
    :pswitch_2
    const-string v0, "account-address"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    const-string v0, "changed-address"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->IO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->mr()Landroid/accounts/Account;

    move-result-object v6

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "WelcomeTour"

    const-string v7, "Set account %s as pending"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->el(I)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/google/android/gm/persistence/b;->M(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->notifyDataSetChanged()V

    .line 333
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/welcome/a;->ai(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_3
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "address_changed"

    const-string v3, "ok"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 332
    :cond_4
    const-string v0, "WelcomeTour"

    const-string v3, "Failed to mark unknown account as change pending."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v3, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 341
    :pswitch_3
    const-string v0, "error"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 343
    sparse-switch v3, :sswitch_data_0

    const v0, 0x7f0903c5

    const v1, 0x7f0903c8

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->W(II)V

    .line 344
    :goto_2
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "address_changed"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 343
    :sswitch_0
    const v0, 0x7f0903c6

    invoke-direct {p0, v2, v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->W(II)V

    goto :goto_2

    :sswitch_1
    const v0, 0x7f0903c7

    invoke-direct {p0, v2, v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->W(II)V

    goto :goto_2

    .line 318
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 343
    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_1
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 239
    const v2, 0x7f0d0212

    if-ne v0, v2, :cond_1

    .line 240
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "learn_more"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 241
    invoke-static {v7}, Lcom/google/android/gm/ay;->aY(Landroid/content/Context;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const v2, 0x7f0d020e

    if-ne v0, v2, :cond_4

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->fx(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0903d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/gm/welcome/j;

    invoke-direct {v2, p0}, Lcom/google/android/gm/welcome/j;-><init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/mail/utils/ag;->aN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gm/welcome/ChangeAddressActivity;

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "account-address"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "change_address"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    const v0, 0x7f090144

    const v1, 0x7f0903c6

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->W(II)V

    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "change_address"

    const-string v3, "no_network"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 245
    :cond_4
    const v2, 0x7f0d0214

    if-ne v0, v2, :cond_5

    .line 246
    invoke-static {v7}, Lcom/google/android/gm/a;->h(Landroid/app/Activity;)V

    .line 247
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "add_account"

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 248
    :cond_5
    const v2, 0x7f0d0215

    if-ne v0, v2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->getCount()I

    move-result v0

    move v6, v0

    .line 250
    :goto_1
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "setup_addresses"

    const-string v2, "take_me_to_gmail"

    const-string v3, "nb_addresses"

    int-to-long v4, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 252
    if-nez v6, :cond_8

    .line 253
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v0, "NoAccountsDialog"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/google/android/gm/welcome/h;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/h;->dismiss()V

    :cond_6
    new-instance v0, Lcom/google/android/gm/welcome/h;

    invoke-direct {v0}, Lcom/google/android/gm/welcome/h;-><init>()V

    const-string v2, "NoAccountsDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/welcome/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v6, v1

    .line 249
    goto :goto_1

    .line 255
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/app/Activity;->setResult(I)V

    .line 256
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz p1, :cond_1

    const-string v2, "pending-changes"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string v0, "pending-changes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v0

    .line 131
    :goto_0
    new-instance v0, Lcom/google/android/gm/welcome/k;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "state-resolving-people-error"

    const-class v1, Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/welcome/k;-><init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gm/c/h;->ID()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    .line 133
    if-eqz v6, :cond_0

    .line 134
    new-instance v0, Lcom/google/android/gm/welcome/a;

    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-direct {v0, v1, v2, v6, p0}, Lcom/google/android/gm/welcome/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    .line 137
    :cond_0
    return-void

    .line 117
    :cond_1
    const-string v2, "pending-changes"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const-string v1, "pending-changes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tour-state"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/welcome/WelcomeTourState;

    .line 124
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gm/welcome/WelcomeTourState;->IY()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->IR()V

    move-object v6, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    const v0, 0x7f0400b2

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 144
    const v0, 0x7f0d0211

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    const v0, 0x7f0d0212

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "tour-state"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/welcome/WelcomeTourState;

    .line 151
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/WelcomeTourState;->IX()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v3

    .line 152
    :goto_0
    const v4, 0x7f09039e

    invoke-virtual {p0, v4}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    if-eqz v1, :cond_4

    const v1, 0x7f0903d1

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0801f9

    invoke-static {v2, v1, v4, v3}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "welcome_tour"

    const-string v2, "page"

    const-string v3, "setup_addresses"

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 166
    const v0, 0x7f0d0215

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f0d0214

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsf:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsf:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f0d0213

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bse:Landroid/widget/LinearLayout;

    .line 174
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v0}, Lcom/google/android/gm/welcome/a;->notifyDataSetChanged()V

    .line 180
    :cond_2
    return-object v6

    :cond_3
    move v1, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_4
    const v1, 0x7f0903d2

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsg:Lcom/google/android/gm/welcome/m;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 213
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsg:Lcom/google/android/gm/welcome/m;

    iget-object v2, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsg:Lcom/google/android/gm/welcome/m;

    invoke-static {v2}, Lcom/google/android/gm/welcome/m;->a(Lcom/google/android/gm/welcome/m;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    invoke-direct {p0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->IR()V

    .line 202
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "pending-changes"

    iget-object v1, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    invoke-virtual {v1}, Lcom/google/android/gm/welcome/a;->IO()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 186
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Lcom/google/android/gm/welcome/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/welcome/l;-><init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;B)V

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsh:Lcom/google/android/gm/welcome/l;

    .line 192
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    iget-object v1, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsh:Lcom/google/android/gm/welcome/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/welcome/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->disconnect()V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsh:Lcom/google/android/gm/welcome/l;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsd:Lcom/google/android/gm/welcome/a;

    iget-object v1, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsh:Lcom/google/android/gm/welcome/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/welcome/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/welcome/SetupAddressesFragment;->bsh:Lcom/google/android/gm/welcome/l;

    .line 224
    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 225
    return-void
.end method
