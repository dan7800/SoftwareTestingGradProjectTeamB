.class public final Lcom/android/email/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LV:Lcom/android/email/r;


# instance fields
.field private final LW:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "AndroidMail.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    .line 93
    return-void
.end method

.method public static declared-synchronized s(Landroid/content/Context;)Lcom/android/email/r;
    .locals 2

    .prologue
    .line 102
    const-class v1, Lcom/android/email/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/r;->LV:Lcom/android/email/r;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/email/r;

    invoke-direct {v0, p0}, Lcom/android/email/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/r;->LV:Lcom/android/email/r;

    .line 105
    :cond_0
    sget-object v0, Lcom/android/email/r;->LV:Lcom/android/email/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    invoke-static {p0}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "accountUuids"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/email/r;->s(Landroid/content/Context;)Lcom/android/email/r;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountUuids"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDebugLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    return-void
.end method

.method public final S(Z)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method

.method public final T(Z)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeFileLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

.method public final U(Z)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableStrictMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    return-void
.end method

.method public final gT()Z
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "enableDebugLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final gU()Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final gV()Z
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeFileLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final gW()Z
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "enableStrictMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized gX()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "deviceUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final gY()I
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "oneTimeInitializationProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final gZ()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oneTimeInitializationProgress"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    return-void
.end method

.method public final ha()J
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    const-string v1, "lastAccountUsed"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(J)V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/email/r;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastAccountUsed"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    return-void
.end method
