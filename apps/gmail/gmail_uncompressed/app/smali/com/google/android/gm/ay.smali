.class public final Lcom/google/android/gm/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aQK:Ljava/lang/String;

.field private static aZc:Lcom/google/android/gm/aB;

.field private static final aZd:Landroid/content/ComponentName;

.field private static final aZe:Landroid/content/ComponentName;

.field private static final aZf:Landroid/content/ComponentName;

.field private static final aZg:Landroid/content/ComponentName;

.field private static final aZh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final aZi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field

.field private static aZj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.CreateShortcutActivityGmail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/ay;->aZd:Landroid/content/ComponentName;

    .line 98
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.CreateShortcutActivityGoogleMail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/ay;->aZe:Landroid/content/ComponentName;

    .line 101
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/ay;->aZf:Landroid/content/ComponentName;

    .line 105
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ComposeActivityGmail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/ay;->aZg:Landroid/content/ComponentName;

    .line 111
    const/16 v0, 0x106

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->aG(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ay;->aZh:Ljava/util/Set;

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/ay;->aQK:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ay;->aZi:Ljava/util/Map;

    .line 847
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/ay;->aZj:Ljava/util/Map;

    return-void
.end method

.method static synthetic Dd()Lcom/google/android/gm/aB;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/ay;->aZc:Lcom/google/android/gm/aB;

    return-object v0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 796
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    :goto_0
    return-object p0

    .line 799
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "label:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 802
    :cond_1
    const-string p0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/mail/providers/Folder;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 967
    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    .line 970
    if-eqz v2, :cond_0

    .line 976
    :goto_0
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/MailEngine;->B([Ljava/lang/String;)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/aa;->F(Ljava/util/List;)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gm/provider/aa;->bU(Z)Lcom/google/android/gm/provider/aa;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lcom/google/android/gm/provider/aa;->Fl()Landroid/database/Cursor;

    move-result-object v1

    .line 980
    new-instance v0, Lcom/google/android/gm/provider/uiprovider/j;

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->bai:[Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/uiprovider/j;-><init>(Landroid/database/Cursor;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    new-instance v5, Lcom/android/mail/providers/Folder;

    invoke-direct {v5, v0}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v5

    .line 973
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    goto :goto_0

    .line 987
    :cond_1
    if-nez p3, :cond_2

    .line 988
    :try_start_1
    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "Unable to create folder "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v6, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 991
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 988
    :cond_3
    :try_start_2
    const-string p2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 991
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static a(Landroid/app/Activity;Lcom/android/mail/providers/Account;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_context_sensitive_help_url"

    const-string v2, "http://support.google.com/mail"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "topic"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f0902fa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 589
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "hl"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 593
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->h(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 594
    const v2, 0x7f0901be

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gmail_privacy_policy_url"

    const-string v5, "https://www.google.com/policies/privacy/"

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 599
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/gm/ay;->h(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 600
    const v4, 0x7f090326

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 603
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gm/LicenseActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    const v6, 0x7f090325

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 605
    invoke-static {p0, p1}, Lcom/google/android/gm/ay;->g(Landroid/content/Context;Lcom/android/mail/providers/Account;)Landroid/os/Bundle;

    move-result-object v7

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gmail_terms_of_service_url"

    const-string v10, "https://www.google.com/policies/terms/"

    invoke-static {v8, v9, v10}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 610
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/google/android/gm/ay;->h(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    .line 612
    const v9, 0x7f090327

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 615
    invoke-static {p2}, Lcom/google/android/gms/googlehelp/GoogleHelp;->gi(Ljava/lang/String;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->L(Landroid/net/Uri;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->j(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/android/gms/googlehelp/GoogleHelp;->h(Landroid/graphics/Bitmap;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/googlehelp/GoogleHelp;->z(Landroid/os/Bundle;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    const v7, 0x7f0d0011

    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/googlehelp/GoogleHelp;->a(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/gms/googlehelp/GoogleHelp;->a(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/android/gms/googlehelp/GoogleHelp;->a(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/gms/googlehelp/GoogleHelp;->a(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    move-result-object v0

    .line 628
    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/googlehelp/GoogleHelp;->d(Landroid/accounts/Account;)Lcom/google/android/gms/googlehelp/GoogleHelp;

    .line 631
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/googlehelp/GoogleHelp;->QA()Landroid/content/Intent;

    move-result-object v0

    .line 632
    new-instance v1, Lcom/google/android/gms/googlehelp/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/googlehelp/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/googlehelp/a;->e(Landroid/content/Intent;)V

    .line 633
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gm/provider/Advertisement;)V
    .locals 2

    .prologue
    .line 1006
    iget-boolean v0, p1, Lcom/google/android/gm/provider/Advertisement;->azc:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0903a0

    .line 1007
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1008
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1009
    return-void

    .line 1006
    :cond_0
    const v0, 0x7f0903a1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 382
    invoke-interface {p1}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-interface {p1}, Lcom/google/android/gms/common/api/n;->connect()V

    .line 386
    :cond_0
    new-instance v0, Lcom/google/android/gms/feedback/f;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/f;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/feedback/f;->g(Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/f;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/gm/ay;->g(Landroid/content/Context;Lcom/android/mail/providers/Account;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/f;->y(Landroid/os/Bundle;)Lcom/google/android/gms/feedback/f;

    .line 388
    invoke-virtual {v0}, Lcom/google/android/gms/feedback/f;->Mn()Lcom/google/android/gms/feedback/e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/feedback/a;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/feedback/e;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    .line 391
    new-instance v1, Lcom/google/android/gm/az;

    invoke-direct {v1, p1}, Lcom/google/android/gm/az;-><init>(Lcom/google/android/gms/common/api/n;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    .line 401
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 855
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 856
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 858
    new-instance v3, Landroid/support/v4/app/ab;

    invoke-direct {v3, p0}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    .line 859
    if-le v0, v1, :cond_3

    .line 864
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09038e

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 865
    new-instance v4, Landroid/text/SpannableString;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 868
    invoke-virtual {v4}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 869
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f0801ea

    invoke-direct {v5, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 871
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v4, v5, v2, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 873
    invoke-virtual {v3, v4}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 874
    invoke-virtual {v3, v4}, Landroid/support/v4/app/ab;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 879
    :goto_1
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v8

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    .line 880
    const-string v0, "^^out"

    invoke-static {p0, p1}, Lcom/google/android/gm/ay;->x(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v4

    invoke-static {p0, p1, v0}, Lcom/google/android/gm/ay;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_4

    :cond_0
    sget-object v5, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v6, "Null account or folder.  account: %s folder: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v0, v7, v1

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    move-object v1, v0

    .line 881
    :goto_2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 883
    const v4, 0x1080078

    invoke-virtual {v3, v4}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    .line 884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/ab;->a(J)Landroid/support/v4/app/ab;

    .line 885
    invoke-virtual {v3, p2}, Landroid/support/v4/app/ab;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 886
    const/4 v4, -0x1

    invoke-static {p0, v4, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/ab;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    .line 887
    sget-object v1, Lcom/google/android/gm/ay;->aZj:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/google/android/gm/ay;->aZj:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    invoke-virtual {v3}, Landroid/support/v4/app/ab;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 889
    return-void

    :cond_2
    move v0, v1

    .line 855
    goto/16 :goto_0

    .line 876
    :cond_3
    invoke-virtual {v3, v2}, Landroid/support/v4/app/ab;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    .line 877
    invoke-virtual {v3, v2}, Landroid/support/v4/app/ab;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;

    goto :goto_1

    .line 880
    :cond_4
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-static {p0, v0, v4}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 812
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 813
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 814
    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_0
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;ZLjava/lang/Iterable;)V

    .line 818
    return-void
.end method

.method private static a(Landroid/accounts/Account;[Landroid/accounts/Account;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 259
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 260
    invoke-virtual {p0, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    const/4 v0, 0x1

    .line 264
    :cond_0
    return v0

    .line 259
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 939
    if-eqz p1, :cond_0

    .line 940
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 943
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 945
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 946
    aget-object v4, v2, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 947
    const/4 v1, 0x1

    .line 951
    :cond_0
    return v1

    .line 945
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static aG(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 824
    sget-object v0, Lcom/google/android/gm/ay;->aQK:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 826
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/ay;->aQK:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gm/ay;->aQK:Ljava/lang/String;

    return-object v0

    .line 830
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "Error finding package %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static aX(Landroid/content/Context;)Lcom/google/android/gms/f/a;
    .locals 3

    .prologue
    .line 468
    invoke-static {p0}, Lcom/google/android/gms/common/f;->cf(Landroid/content/Context;)I

    move-result v0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    .line 477
    :cond_0
    new-instance v0, Lcom/google/android/gms/f/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gm/aA;

    invoke-direct {v2}, Lcom/google/android/gm/aA;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/f/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/f/b;)V

    .line 495
    invoke-virtual {v0}, Lcom/google/android/gms/f/a;->start()V

    goto :goto_0
.end method

.method public static aY(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 501
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_warm_welcome_learn_more"

    const-string v2, "https://support.google.com/mail/answer/6078445"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Landroid/net/Uri;)V

    .line 505
    return-void
.end method

.method public static aZ(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail-ad-preference-manager-url"

    const-string v2, "https://www.google.com/settings/ads/preferences"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Landroid/net/Uri;)V

    .line 513
    return-void
.end method

.method public static b(Lcom/google/android/gm/provider/T;)I
    .locals 2

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/google/android/gm/provider/T;->EX()Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/google/android/gm/provider/T;->EW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {p0}, Lcom/google/android/gm/provider/T;->EY()I

    move-result v0

    .line 917
    :cond_0
    :goto_0
    return v0

    .line 914
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/T;->EZ()I

    move-result v0

    goto :goto_0
.end method

.method public static ba(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail-section-inbox-help-url"

    const-string v2, "https://support.google.com/mail/?hl=%locale%&p=android_inboxcategories"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->y(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 640
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Landroid/net/Uri;)V

    .line 641
    return-void
.end method

.method public static bb(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail-manage-accounts-help-url"

    const-string v2, "https://support.google.com/mail/topic/4390706?hl=%locale%"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->y(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 663
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Landroid/net/Uri;)V

    .line 664
    return-void
.end method

.method public static bc(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail-always-show-images-help-url"

    const-string v2, "https://support.google.com/mail/answer/145919?hl=%locale%"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->y(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 671
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Landroid/net/Uri;)V

    .line 672
    return-void
.end method

.method public static bd(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail-acl-fixer-help-url"

    const-string v2, "https://support.google.com/mail/?p=androiddrive&hl=%locale%"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->y(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 679
    invoke-static {p0, v0}, Lcom/google/android/gm/ay;->f(Landroid/content/Context;Landroid/net/Uri;)V

    .line 680
    return-void
.end method

.method public static be(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 688
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/preference/GmailPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 690
    return-void
.end method

.method public static bf(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 703
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v2

    .line 704
    invoke-virtual {v2, p0}, Lcom/google/android/gm/persistence/b;->bs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v4, "com.google"

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 710
    array-length v0, v4

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gm/ay;->bi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    aget-object v0, v4, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/google/android/gm/ao;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v6, "account-name"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 714
    :cond_0
    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 715
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 722
    :cond_1
    :goto_1
    return-void

    .line 714
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_3
    array-length v0, v4

    if-lez v0, :cond_1

    .line 720
    aget-object v0, v4, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, Lcom/google/android/gm/persistence/b;->z(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static bg(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 743
    invoke-static {p0}, Lcom/google/android/gm/ay;->bj(Landroid/content/Context;)Z

    move-result v2

    .line 744
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gm/ay;->aZe:Landroid/content/ComponentName;

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gm/ay;->aZd:Landroid/content/ComponentName;

    :goto_1
    const/4 v2, 0x2

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {v3, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 745
    return-void

    .line 744
    :cond_0
    sget-object v0, Lcom/google/android/gm/ay;->aZd:Landroid/content/ComponentName;

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gm/ay;->aZe:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public static bh(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 764
    sget-object v1, Lcom/google/android/gm/ay;->aZg:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 766
    return-void
.end method

.method public static bi(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 775
    sget-object v2, Lcom/google/android/gm/ay;->aZe:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v0, :cond_0

    sget-object v2, Lcom/google/android/gm/ay;->aZd:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bj(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 787
    sget-object v2, Lcom/google/android/gm/ay;->aZf:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bk(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1018
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1020
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1021
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1022
    return-void
.end method

.method public static dA(I)Z
    .locals 2

    .prologue
    .line 544
    const/16 v0, 0x52

    if-ne p0, v0, :cond_0

    const-string v0, "LGE"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dC(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v0, Lcom/google/android/gm/ay;->aZc:Lcom/google/android/gm/aB;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/google/android/gm/ay;->aZc:Lcom/google/android/gm/aB;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/aB;->cancel(Z)Z

    .line 156
    :cond_0
    new-instance v0, Lcom/google/android/gm/aB;

    invoke-direct {v0, p0}, Lcom/google/android/gm/aB;-><init>(Ljava/lang/String;)V

    .line 157
    sput-object v0, Lcom/google/android/gm/ay;->aZc:Lcom/google/android/gm/aB;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/aB;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-static {p0, p1}, Lcom/google/android/gm/persistence/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    new-instance v3, Lcom/google/android/gm/preference/j;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    invoke-virtual {v3}, Lcom/android/mail/i/e;->to()Z

    move-result v0

    .line 214
    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    .line 218
    :cond_0
    invoke-virtual {v3}, Lcom/android/mail/i/e;->tv()Z

    move-result v4

    .line 219
    invoke-virtual {v3}, Lcom/android/mail/i/e;->tw()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 221
    :goto_1
    invoke-virtual {v3}, Lcom/android/mail/i/e;->tu()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    :goto_2
    if-eqz v1, :cond_6

    .line 226
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 227
    const v0, 0x7f09036c

    .line 248
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    goto :goto_1

    :cond_2
    move v1, v2

    .line 221
    goto :goto_2

    .line 228
    :cond_3
    if-eqz v4, :cond_4

    .line 229
    const v0, 0x7f09036d

    goto :goto_3

    .line 230
    :cond_4
    if-eqz v0, :cond_5

    .line 231
    const v0, 0x7f09036e

    goto :goto_3

    .line 233
    :cond_5
    const v0, 0x7f09036f

    goto :goto_3

    .line 236
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    .line 237
    const v0, 0x7f090370

    goto :goto_3

    .line 239
    :cond_7
    if-eqz v4, :cond_8

    .line 240
    const v0, 0x7f090371

    goto :goto_3

    .line 241
    :cond_8
    if-eqz v0, :cond_9

    .line 242
    const v0, 0x7f090372

    goto :goto_3

    .line 244
    :cond_9
    const v0, 0x7f090373

    goto :goto_3
.end method

.method private static f(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "invalid url in Utils.openUrl(): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 457
    :goto_0
    return-void

    .line 449
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 450
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    sget-object v1, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v2, "Cannot open Url in browser"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 2

    .prologue
    .line 694
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/preference/GmailPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    const-string v1, "extra_account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 697
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 326
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/GmailProvider;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 329
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/provider/GmailProvider;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 331
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v1, v1, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/android/mail/utils/ag;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mail/providers/Account;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/content/Context;Lcom/android/mail/providers/Account;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 552
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 553
    invoke-static {p0}, Lcom/android/mail/utils/a;->ax(Landroid/content/Context;)[Lcom/android/mail/providers/Account;

    move-result-object v2

    .line 555
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 557
    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 558
    invoke-static {p0, v5}, Lcom/google/android/gm/c/c;->i(Landroid/content/Context;Lcom/android/mail/providers/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 562
    const-string v0, "all-account-domains"

    const-string v2, "/"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_1
    if-eqz p1, :cond_2

    .line 567
    const-string v0, "current-account-domain"

    invoke-static {p0, p1}, Lcom/google/android/gm/c/c;->i(Landroid/content/Context;Lcom/android/mail/providers/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_2
    return-object v1
.end method

.method public static g(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail-ad-youtube-partial-authority"

    const-string v2, "youtube.com"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail-ad-youtube-path"

    const-string v3, "/watch"

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 525
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 533
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    sget-object v0, Lcom/google/android/gm/ay;->mW:Ljava/lang/String;

    const-string v1, "invalid url in Utils.openUrl(): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 535
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    .line 537
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 363
    .line 365
    invoke-static {p1, p2}, Lcom/google/android/gm/provider/GmailProvider;->O(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mail/providers/E;->aCv:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 370
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v3, Lcom/android/mail/providers/Folder;

    invoke-direct {v3, v1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 376
    return-object v3

    .line 374
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static h(Landroid/content/Context;Lcom/android/mail/providers/Account;)V
    .locals 4

    .prologue
    .line 645
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/preference/GmailPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/google/android/gm/preference/InboxSectionsPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 651
    const-string v2, "account"

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v2, ":android:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 655
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 656
    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gm/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 276
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 279
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/google/android/gm/ay;->a(Landroid/accounts/Account;[Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mail/providers/Account;
    .locals 9

    .prologue
    .line 339
    sget-object v8, Lcom/google/android/gm/ay;->aZi:Ljava/util/Map;

    monitor-enter v8

    .line 340
    :try_start_0
    sget-object v1, Lcom/google/android/gm/ay;->aZi:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/mail/providers/Account;

    move-object v7, v0

    .line 342
    if-nez v7, :cond_1

    .line 343
    invoke-static {p1}, Lcom/google/android/gm/provider/GmailProvider;->en(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 348
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {v2}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v7

    .line 351
    sget-object v1, Lcom/google/android/gm/ay;->aZi:Ljava/util/Map;

    invoke-interface {v1, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :cond_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_1
    monitor-exit v8

    .line 358
    return-object v7

    .line 354
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    :catchall_1
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method private static y(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 404
    const-string v0, "%locale%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%locale%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 405
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 406
    invoke-static {p0}, Lcom/google/android/gm/ay;->aG(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_1

    .line 408
    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 411
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 414
    sget-object v2, Lcom/google/android/gm/ay;->aZh:Ljava/util/Set;

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gm/ay;->bj(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 416
    :goto_0
    const-string v2, "googleMail"

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 414
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 416
    :cond_4
    const-string v1, "0"

    goto :goto_1
.end method
