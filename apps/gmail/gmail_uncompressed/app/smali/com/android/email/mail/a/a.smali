.class public Lcom/android/email/mail/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Qf:Lcom/android/email/mail/a/a;


# instance fields
.field private final Qg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/mail/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final Qh:Lcom/android/email/mail/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/a/a;->Qg:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/android/email/mail/a/c;

    invoke-direct {v0}, Lcom/android/email/mail/a/c;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/a/a;->Qh:Lcom/android/email/mail/a/c;

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/android/email/mail/a/b;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 117
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "AuthenticationCache refreshEntry %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p2, Lcom/android/email/mail/a/b;->LN:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/a/a;->Qh:Lcom/android/email/mail/a/c;

    iget-object v1, p2, Lcom/android/email/mail/a/b;->NS:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/email/mail/a/b;->Qj:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/email/mail/a/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/mail/a/d;

    move-result-object v0

    .line 123
    iget-object v1, v0, Lcom/android/email/mail/a/d;->Qi:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/email/mail/a/b;->Qi:Ljava/lang/String;

    .line 124
    iget v0, v0, Lcom/android/email/mail/a/d;->Qn:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/android/email/mail/a/b;->Qk:J

    .line 126
    invoke-static {p1, p2}, Lcom/android/email/mail/a/a;->b(Landroid/content/Context;Lcom/android/email/mail/a/b;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "authentication failed, clearning"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "clearEntry"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, ""

    iput-object v1, p2, Lcom/android/email/mail/a/b;->Qi:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p2, Lcom/android/email/mail/a/b;->Qj:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p2, Lcom/android/email/mail/a/b;->Qk:J

    invoke-static {p1, p2}, Lcom/android/email/mail/a/a;->b(Landroid/content/Context;Lcom/android/email/mail/a/b;)V

    iget-object v1, p0, Lcom/android/email/mail/a/a;->Qg:Ljava/util/Map;

    iget-wide v2, p2, Lcom/android/email/mail/a/b;->LN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    throw v0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "messaging exception"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    throw v0

    .line 135
    :catch_2
    move-exception v0

    .line 136
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "IO exception"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    throw v0
.end method

.method private static b(Landroid/content/Context;Lcom/android/email/mail/a/b;)V
    .locals 4

    .prologue
    .line 142
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "saveEntry"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    iget-wide v0, p1, Lcom/android/email/mail/a/b;->LN:J

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/HostAuth;->ag(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v0

    .line 147
    iget-object v1, p1, Lcom/android/email/mail/a/b;->NS:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    .line 148
    iget-object v1, p1, Lcom/android/email/mail/a/b;->Qi:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/Credential;->Qi:Ljava/lang/String;

    .line 149
    iget-object v1, p1, Lcom/android/email/mail/a/b;->Qj:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/Credential;->Qj:Ljava/lang/String;

    .line 150
    iget-wide v2, p1, Lcom/android/email/mail/a/b;->Qk:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/Credential;->XR:J

    .line 151
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Credential;->lB()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/emailcommon/provider/Credential;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 152
    return-void
.end method

.method private i(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/a/b;
    .locals 9

    .prologue
    .line 94
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->lF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/email/mail/a/a;->Qg:Ljava/util/Map;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/a/b;

    .line 96
    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "initializing entry from database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;->ag(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v1

    .line 100
    new-instance v0, Lcom/android/email/mail/a/b;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    iget-object v4, v1, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/emailcommon/provider/Credential;->Qi:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/emailcommon/provider/Credential;->Qj:Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/emailcommon/provider/Credential;->XR:J

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/email/mail/a/b;-><init>(Lcom/android/email/mail/a/a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 102
    iget-object v1, p0, Lcom/android/email/mail/a/a;->Qg:Ljava/util/Map;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;->af(Landroid/content/Context;)Lcom/android/emailcommon/provider/Credential;

    move-result-object v1

    .line 109
    new-instance v0, Lcom/android/email/mail/a/b;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/Account;->Ln:J

    iget-object v4, v1, Lcom/android/emailcommon/provider/Credential;->NS:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/emailcommon/provider/Credential;->Qi:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/emailcommon/provider/Credential;->Qj:Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/emailcommon/provider/Credential;->XR:J

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/email/mail/a/b;-><init>(Lcom/android/email/mail/a/a;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static iN()Lcom/android/email/mail/a/a;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/android/email/mail/a/a;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/android/email/mail/a/a;->Qf:Lcom/android/email/mail/a/a;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/email/mail/a/a;

    invoke-direct {v0}, Lcom/android/email/mail/a/a;-><init>()V

    sput-object v0, Lcom/android/email/mail/a/a;->Qf:Lcom/android/email/mail/a/a;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/email/mail/a/a;->Qf:Lcom/android/email/mail/a/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final g(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/email/mail/a/a;->Qg:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/a/a;->i(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/a/b;

    move-result-object v2

    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-enter v2

    .line 72
    :try_start_1
    iget-wide v0, v2, Lcom/android/email/mail/a/b;->Qk:J

    const-wide/32 v4, 0x493e0

    sub-long/2addr v0, v4

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 77
    invoke-direct {p0, p1, v2}, Lcom/android/email/mail/a/a;->a(Landroid/content/Context;Lcom/android/email/mail/a/b;)V

    .line 79
    :cond_0
    iget-object v0, v2, Lcom/android/email/mail/a/b;->Qi:Ljava/lang/String;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 80
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final h(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/a/a;->i(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/a/b;

    move-result-object v1

    .line 86
    monitor-enter v1

    .line 87
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/email/mail/a/a;->a(Landroid/content/Context;Lcom/android/email/mail/a/b;)V

    .line 88
    iget-object v0, v1, Lcom/android/email/mail/a/b;->Qi:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
