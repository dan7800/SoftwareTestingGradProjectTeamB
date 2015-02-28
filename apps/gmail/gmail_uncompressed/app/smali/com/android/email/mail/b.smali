.class public abstract Lcom/android/email/mail/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Qa:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Lcom/android/email/mail/b;",
            ">;"
        }
    .end annotation
.end field

.field static final Qe:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/email/mail/b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected Ml:Lcom/android/emailcommon/provider/Account;

.field protected Qb:Lcom/android/email/mail/transport/b;

.field protected Qc:Ljava/lang/String;

.field protected Qd:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/b;->Qa:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/b;->Qe:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/b;
    .locals 4

    .prologue
    .line 86
    const-class v1, Lcom/android/email/mail/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/mail/b;->Qa:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/email/mail/b;->Qe:Ljava/util/HashMap;

    const v2, 0x7f0902e7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/email/mail/store/Pop3Store;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/email/mail/b;->Qe:Ljava/util/HashMap;

    const v2, 0x7f0902e5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 103
    :goto_0
    monitor-exit v1

    return-object v0

    .line 93
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->isTemporary()Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    sget-object v2, Lcom/android/email/mail/b;->Qa:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/b;

    .line 95
    if-nez v0, :cond_2

    .line 96
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;Z)Lcom/android/email/mail/b;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_2
    iput-object p0, v0, Lcom/android/email/mail/b;->Ml:Lcom/android/emailcommon/provider/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p0, p1, v0}, Lcom/android/email/mail/b;->a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;Z)Lcom/android/email/mail/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized a(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;Z)Lcom/android/email/mail/b;
    .locals 10

    .prologue
    .line 110
    const-class v2, Lcom/android/email/mail/b;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v4

    .line 112
    sget-object v0, Lcom/android/email/mail/b;->Qe:Ljava/util/HashMap;

    iget-object v1, v4, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 113
    if-nez v0, :cond_1

    .line 114
    const-class v0, Lcom/android/email/mail/store/ServiceStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 119
    :goto_0
    :try_start_1
    const-string v0, "newInstance"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/android/emailcommon/provider/Account;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 120
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    iget-wide v6, v4, Lcom/android/emailcommon/provider/HostAuth;->Ln:J

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 129
    sget-object v1, Lcom/android/email/mail/b;->Qa:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :cond_0
    monitor-exit v2

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_3
    sget-object v3, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v4, "exception %s invoking method %s#newInstance(Account, Context) for %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t instantiate Store for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static iJ()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public aU(I)Z
    .locals 1

    .prologue
    .line 166
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public final iB()Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/email/mail/b;->Ml:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public iK()[Lcom/android/emailcommon/mail/Folder;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract iL()Landroid/os/Bundle;
.end method

.method public iM()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public y(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method
