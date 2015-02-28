.class public final Lcom/google/android/gm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aWC:[Ljava/lang/String;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/a;->mW:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mail"

    invoke-static {v2}, Lcom/google/android/gsf/b;->gE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/a;->aWC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/gm/a;->mContext:Landroid/content/Context;

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/an;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-interface {p1}, Lcom/google/android/gm/an;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/a;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gm/g;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 267
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 271
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 272
    const-string v0, "allowSkip"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    const-string v0, "introMessage"

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090324

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "pendingIntent"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "mail"

    new-instance v6, Lcom/google/android/gm/d;

    invoke-direct {v6, p1, v5, p0}, Lcom/google/android/gm/d;-><init>(Lcom/google/android/gm/g;Landroid/app/PendingIntent;Landroid/app/Activity;)V

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 329
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gm/h;)V
    .locals 7

    .prologue
    .line 341
    new-instance v1, Landroid/accounts/Account;

    const-string v0, "com.google"

    invoke-direct {v1, p1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 345
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "mail"

    new-instance v5, Lcom/google/android/gm/e;

    invoke-direct {v5, p2}, Lcom/google/android/gm/e;-><init>(Lcom/google/android/gm/h;)V

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 369
    return-void
.end method

.method public static h(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gm/a;->a(Landroid/app/Activity;Lcom/google/android/gm/g;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/google/android/gm/preference/f;->DI()Landroid/app/DialogFragment;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "new_account"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic oA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gm/a;->mW:Ljava/lang/String;

    return-object v0
.end method

.method public static y(Lcom/android/mail/providers/Account;)Z
    .locals 2

    .prologue
    .line 91
    if-eqz p0, :cond_0

    const-string v0, "com.google"

    invoke-virtual {p0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/f;)V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gm/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    sget-object v2, Lcom/google/android/gm/a;->aWC:[Ljava/lang/String;

    new-instance v3, Lcom/google/android/gm/b;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gm/b;-><init>(Lcom/google/android/gm/a;Lcom/google/android/gm/f;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 156
    return-void
.end method

.method public final dp(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/google/android/gm/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 82
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 83
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    const/4 v0, 0x1

    .line 87
    :cond_0
    return v0

    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gm/ay;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final varargs v([Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 162
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 163
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 164
    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/google/android/gsf/b;->gE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v3, "com.google"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    :goto_1
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v2, Lcom/google/android/gm/a;->mW:Ljava/lang/String;

    const-string v3, "Failed to get accounts"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    :goto_2
    new-array v0, v1, [Landroid/accounts/Account;

    goto :goto_1

    .line 176
    :catch_1
    move-exception v0

    .line 177
    sget-object v2, Lcom/google/android/gm/a;->mW:Ljava/lang/String;

    const-string v3, "Failed to get accounts"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 178
    :catch_2
    move-exception v0

    .line 179
    sget-object v2, Lcom/google/android/gm/a;->mW:Ljava/lang/String;

    const-string v3, "Failed to get accounts"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public final varargs w([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gm/a;->v([Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/google/android/gm/c;

    invoke-direct {v1, p0}, Lcom/google/android/gm/c;-><init>(Lcom/google/android/gm/a;)V

    .line 195
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;Lcom/google/common/base/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
