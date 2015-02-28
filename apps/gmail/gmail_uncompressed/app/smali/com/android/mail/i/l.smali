.class public abstract Lcom/android/mail/i/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final mW:Ljava/lang/String;


# instance fields
.field private final LW:Landroid/content/SharedPreferences;

.field private final axU:Ljava/lang/String;

.field private final axV:Landroid/content/SharedPreferences$Editor;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/i/l;->mW:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/i/l;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/mail/i/l;->axU:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    .line 65
    iget-object v1, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v1, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    const-string v2, "prefs-version-number"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 69
    invoke-virtual {p0, v1}, Lcom/android/mail/i/l;->cq(I)V

    .line 70
    iget-object v2, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    const-string v3, "prefs-version-number"

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/mail/i/l;->tZ()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/i/l;->tx()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-static {}, Lcom/android/mail/i/i;->tX()Lcom/android/mail/i/d;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v2, p1, v1}, Lcom/android/mail/i/d;->i(Landroid/content/Context;I)Z

    move-result v0

    .line 84
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/mail/i/l;->ty()V

    .line 88
    :cond_1
    return-void

    .line 80
    :cond_2
    sget-object v1, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "No preference migrator found, not migrating preferences"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 174
    return-object p2
.end method

.method protected abstract bB(Ljava/lang/String;)Z
.end method

.method protected c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 186
    return-object p2
.end method

.method public final commit()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    return-void
.end method

.method protected abstract cq(I)V
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mail/i/l;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected final getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method protected final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mail/i/l;->axU:Ljava/lang/String;

    return-object v0
.end method

.method public final r(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/i/c;

    .line 220
    invoke-interface {v0}, Lcom/android/mail/i/c;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-interface {v0}, Lcom/android/mail/i/c;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 223
    invoke-virtual {p0, v3}, Lcom/android/mail/i/l;->bB(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 224
    invoke-virtual {p0, v3, v4}, Lcom/android/mail/i/l;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 230
    iget-object v4, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    sget-object v1, Lcom/android/mail/i/l;->mW:Ljava/lang/String;

    const-string v3, "MailPrefs Restore: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 232
    :cond_1
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_2

    .line 233
    iget-object v4, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 234
    sget-object v1, Lcom/android/mail/i/l;->mW:Ljava/lang/String;

    const-string v3, "MailPrefs Restore: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 235
    :cond_2
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 236
    iget-object v4, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    sget-object v1, Lcom/android/mail/i/l;->mW:Ljava/lang/String;

    const-string v3, "MailPrefs Restore: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 238
    :cond_3
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 239
    iget-object v4, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 240
    sget-object v1, Lcom/android/mail/i/l;->mW:Ljava/lang/String;

    const-string v3, "MailPrefs Restore: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 241
    :cond_4
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 242
    iget-object v4, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    sget-object v1, Lcom/android/mail/i/l;->mW:Ljava/lang/String;

    const-string v3, "MailPrefs Restore: %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 244
    :cond_5
    instance-of v0, v1, Ljava/util/Set;

    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 247
    :cond_6
    sget-object v0, Lcom/android/mail/i/l;->mW:Ljava/lang/String;

    const-string v1, "Unknown MailPrefs preference data type: %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/android/mail/i/l;->axV:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    return-void
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 109
    return-void
.end method

.method public final tY()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/i/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    iget-object v0, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/mail/i/l;->bB(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v1, v0}, Lcom/android/mail/i/l;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    new-instance v4, Lcom/android/mail/i/k;

    invoke-direct {v4, v1, v0}, Lcom/android/mail/i/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    return-object v2
.end method

.method public final tZ()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/mail/i/l;->bB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tx()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mail/i/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/i/g;->tx()Z

    move-result v0

    return v0
.end method

.method protected ty()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mail/i/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/i/g;->ty()V

    .line 142
    return-void
.end method

.method protected final ua()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/mail/i/l;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mail/f;->aj(Landroid/content/Context;)V

    .line 279
    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mail/i/l;->LW:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 114
    return-void
.end method
