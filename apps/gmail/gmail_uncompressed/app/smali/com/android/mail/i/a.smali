.class public Lcom/android/mail/i/a;
.super Lcom/android/mail/i/l;
.source "SourceFile"


# static fields
.field private static axM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/i/a;->axM:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Account-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mail/i/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/android/mail/providers/Account;)Lcom/android/mail/i/a;
    .locals 4

    .prologue
    .line 74
    const-class v1, Lcom/android/mail/i/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    .line 75
    sget-object v0, Lcom/android/mail/i/a;->axM:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/i/a;

    .line 76
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/mail/i/a;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/i/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    sget-object v3, Lcom/android/mail/i/a;->axM:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final aV(Z)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inbox-notifications-enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    return-void
.end method

.method public final aW(Z)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications-enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    invoke-virtual {p0}, Lcom/android/mail/i/a;->ua()V

    .line 120
    return-void
.end method

.method protected final bB(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/mail/i/b;->axN:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final cq(I)V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You appear to have downgraded your app. Please clear app data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method public final cr(I)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last-seen-outbox-count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    return-void
.end method

.method public final tl()Z
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "inbox-notifications-enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final tm()Z
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "inbox-notifications-enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tn()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inbox-notifications-enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method public final to()Z
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notifications-enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tp()I
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-account-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final tq()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-account-sync-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "num-of-dismisses-account-sync-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    :cond_0
    return-void
.end method

.method public final tr()V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-account-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num-of-dismisses-account-sync-off"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

.method public final ts()I
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/mail/i/a;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last-seen-outbox-count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
