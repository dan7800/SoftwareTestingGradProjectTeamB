.class public abstract Lcom/android/mail/providers/t;
.super Landroid/content/ContentProvider;
.source "SourceFile"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContentProvider;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static aAY:Lcom/android/mail/providers/t;

.field private static ary:Ljava/lang/String;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private Hb:Landroid/content/ContentResolver;

.field private final aAU:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mail/providers/v;",
            ">;"
        }
    .end annotation
.end field

.field private final aAV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/CursorLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final aAW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/CursorLoader;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private aAX:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mail/providers/v;",
            ">;"
        }
    .end annotation
.end field

.field private aAZ:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    .line 89
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/t;->aAV:Ljava/util/Map;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/t;->aAW:Ljava/util/Map;

    .line 146
    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/android/mail/providers/v;)V
    .locals 6

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 307
    :try_start_0
    sget-object v0, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v2, "adding account %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 309
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static aq(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/android/mail/providers/t;->aAY:Lcom/android/mail/providers/t;

    invoke-virtual {v0, p0}, Lcom/android/mail/providers/t;->ap(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized v(Landroid/net/Uri;)V
    .locals 7

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/mail/providers/t;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/android/mail/providers/E;->aCr:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 284
    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 287
    iget-object v1, p0, Lcom/android/mail/providers/t;->aAV:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/CursorLoader;

    .line 288
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Landroid/content/CursorLoader;->stopLoading()V

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/mail/providers/t;->aAV:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/android/mail/providers/t;->aAW:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static vh()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/mail/providers/t;->ary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static vi()Lcom/android/mail/providers/t;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/mail/providers/t;->aAY:Lcom/android/mail/providers/t;

    return-object v0
.end method

.method private static vj()V
    .locals 3

    .prologue
    .line 314
    sget-object v0, Lcom/android/mail/providers/t;->aAY:Lcom/android/mail/providers/t;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    iget-object v0, v0, Lcom/android/mail/providers/t;->Hb:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 319
    :cond_0
    return-void
.end method

.method private vm()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAZ:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/mail/providers/t;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MailAppProvider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/t;->aAZ:Landroid/content/SharedPreferences;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAZ:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private vn()Z
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 516
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 520
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static w(Landroid/net/Uri;)Lcom/android/mail/providers/Account;
    .locals 2

    .prologue
    .line 426
    sget-object v0, Lcom/android/mail/providers/t;->aAY:Lcom/android/mail/providers/t;

    .line 427
    if-eqz v0, :cond_1

    invoke-direct {v0}, Lcom/android/mail/providers/t;->vn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, v0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, v0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/v;

    .line 430
    if-eqz v0, :cond_0

    .line 431
    iget-object v0, v0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :goto_0
    return-object v0

    .line 433
    :cond_0
    monitor-exit v1

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected abstract ap(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public final bU(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/mail/providers/t;->vm()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    const-string v1, "lastViewedAccount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    return-void
.end method

.method public final bV(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/mail/providers/t;->vm()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    const-string v1, "lastSendFromAccount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 237
    return-object p1
.end method

.method public onCreate()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/mail/providers/t;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/t;->ary:Ljava/lang/String;

    .line 151
    sput-object p0, Lcom/android/mail/providers/t;->aAY:Lcom/android/mail/providers/t;

    .line 152
    invoke-virtual {p0}, Lcom/android/mail/providers/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/t;->Hb:Landroid/content/ContentResolver;

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/android/mail/providers/t;->vm()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "accountList"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_1
    new-instance v1, Lcom/android/mail/providers/v;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/mail/providers/v;-><init>(Lorg/json/JSONObject;)V

    iget-object v4, v1, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    iget-object v4, v4, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    if-nez v4, :cond_0

    sget-object v1, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v4, "Dropping account that doesn\'t specify settings"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v4, "ignoring unparsable accounts cache"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v1

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v4, v1, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    iget-object v5, p0, Lcom/android/mail/providers/t;->Hb:Landroid/content/ContentResolver;

    iget-object v6, v4, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->release()Z

    iget-object v4, v4, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, v1}, Lcom/android/mail/providers/t;->a(Landroid/net/Uri;Lcom/android/mail/providers/v;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v5, "Unable to create account object from serialized form"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v5, v6}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    :cond_1
    :try_start_3
    sget-object v1, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v5, "Dropping account without provider: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v1, v5, v6}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/android/mail/providers/t;->vj()V

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/providers/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/android/mail/providers/u;

    invoke-direct {v1, p0}, Lcom/android/mail/providers/u;-><init>(Lcom/android/mail/providers/t;)V

    .line 171
    new-instance v3, Lcom/android/mail/utils/Y;

    invoke-direct {v3, v0, v1}, Lcom/android/mail/utils/Y;-><init>([Ljava/lang/Object;Lcom/google/android/mail/common/base/C;)V

    iput-object v3, p0, Lcom/android/mail/providers/t;->aAX:Ljava/util/Comparator;

    .line 174
    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 175
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 176
    invoke-direct {p0, v3}, Lcom/android/mail/providers/t;->v(Landroid/net/Uri;)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 179
    :cond_4
    return v8

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    check-cast p2, Landroid/database/Cursor;

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v1, "null account cursor returned"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v3, "Cursor with %d accounts returned"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    check-cast p1, Landroid/content/CursorLoader;

    invoke-virtual {p1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/v;

    iget-object v6, v0, Lcom/android/mail/providers/v;->aBb:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "accounts_loaded"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/android/mail/providers/t;->aAW:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/mail/providers/Account;->ue()Lcom/android/mail/providers/c;

    invoke-static {p2}, Lcom/android/mail/providers/c;->j(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v5, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    monitor-enter v6

    :try_start_1
    iget-object v7, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    iget-object v5, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    new-instance v6, Lcom/android/mail/providers/v;

    invoke-direct {v6, v2, v3}, Lcom/android/mail/providers/v;-><init>(Lcom/android/mail/providers/Account;Landroid/net/Uri;)V

    invoke-direct {p0, v5, v6}, Lcom/android/mail/providers/t;->a(Landroid/net/Uri;Lcom/android/mail/providers/v;)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_5
    invoke-interface {v4, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_2
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/t;->mW:Ljava/lang/String;

    const-string v4, "Removing account %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_7
    invoke-static {}, Lcom/android/mail/providers/t;->vj()V

    iget-object v1, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/v;

    invoke-virtual {v0}, Lcom/android/mail/providers/v;->vo()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/android/mail/providers/t;->vm()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "accountList"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-static {p2}, Lcom/android/mail/providers/H;->n([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 201
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 202
    const-string v4, "accounts_loaded"

    invoke-direct {p0}, Lcom/android/mail/providers/t;->vn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    iget-object v4, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v4, p0, Lcom/android/mail/providers/t;->aAX:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    new-instance v4, Lcom/android/mail/utils/H;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v2, v5, v3}, Lcom/android/mail/utils/H;-><init>([Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/v;

    .line 218
    iget-object v0, v0, Lcom/android/mail/providers/v;->Nc:Lcom/android/mail/providers/Account;

    .line 219
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 220
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->ul()Ljava/util/Map;

    move-result-object v6

    .line 222
    array-length v7, v2

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v2, v0

    .line 223
    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 224
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 202
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 226
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/mail/providers/t;->Hb:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/mail/providers/t;->vh()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 232
    return-object v4
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/providers/t;->aAY:Lcom/android/mail/providers/t;

    .line 186
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    .line 187
    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    iget-object v0, p0, Lcom/android/mail/providers/t;->aAW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public final vk()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/mail/providers/t;->vm()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastViewedAccount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final vl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/mail/providers/t;->vm()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastSendFromAccount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
