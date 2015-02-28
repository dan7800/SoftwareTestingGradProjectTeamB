.class public final Lcom/android/mail/i/g;
.super Lcom/android/mail/i/l;
.source "SourceFile"


# static fields
.field private static axR:Lcom/android/mail/i/g;


# instance fields
.field private final axS:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/android/mail/i/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/i/g;->axS:I

    .line 190
    return-void
.end method

.method public static declared-synchronized ao(Landroid/content/Context;)Lcom/android/mail/i/g;
    .locals 3

    .prologue
    .line 180
    const-class v1, Lcom/android/mail/i/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/i/g;->axR:Lcom/android/mail/i/g;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/mail/i/g;

    const-string v2, "UnifiedEmail"

    invoke-direct {v0, p0, v2}, Lcom/android/mail/i/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/mail/i/g;->axR:Lcom/android/mail/i/g;

    .line 183
    :cond_0
    sget-object v0, Lcom/android/mail/i/g;->axR:Lcom/android/mail/i/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private tG()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 436
    const-string v2, "display_images"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final R(J)V
    .locals 3

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "analytics-send-nb_accounts-epoch"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 606
    return-void
.end method

.method public final a(ILcom/android/mail/providers/Account;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 223
    if-nez p2, :cond_0

    .line 224
    sget-object v0, Lcom/android/mail/i/g;->mW:Ljava/lang/String;

    const-string v1, "Cannot configure widget with null account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget-account-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    if-eqz p2, :cond_2

    .line 405
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 406
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "display_sender_images_patterns_set"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 410
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    invoke-static {v1}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 414
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {p0, v1}, Lcom/android/mail/i/g;->g(Ljava/util/Set;)V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 421
    :cond_2
    invoke-direct {p0}, Lcom/android/mail/i/g;->tG()Ljava/util/Set;

    move-result-object v0

    .line 422
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 427
    invoke-static {v0}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 428
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/mail/i/g;->f(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public final aZ(Z)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default-reply-all"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 257
    return-void
.end method

.method protected final bB(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/android/mail/i/h;->axN:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bF(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "removal-action"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 285
    return-void
.end method

.method public final bG(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/mail/i/g;->tG()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 383
    if-nez v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 386
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 387
    const-string v3, "display_sender_images_patterns_set"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 389
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 390
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    :cond_1
    return v0
.end method

.method public final ba(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    const-string v0, "delete"

    .line 274
    :goto_0
    return-object v0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    const-string v1, "removal-action"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v2, "archive-and-delete"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const-string v0, "archive"

    goto :goto_0

    .line 274
    :cond_1
    const-string v1, "removal-action"

    const-string v2, "archive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bb(Z)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 308
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "conversation-list-swipe"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 309
    const-string v2, "delete"

    invoke-virtual {p0, p1}, Lcom/android/mail/i/g;->ba(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 311
    :goto_0
    if-eqz v3, :cond_2

    .line 312
    if-eqz v2, :cond_1

    .line 315
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 309
    goto :goto_0

    :cond_1
    move v0, v1

    .line 312
    goto :goto_1

    .line 315
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public final bc(Z)V
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conversation-list-sender-image"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 457
    return-void
.end method

.method public final bd(Z)V
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm-delete"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 484
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 485
    return-void
.end method

.method public final be(Z)V
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm-archive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 493
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 494
    return-void
.end method

.method public final bf(Z)V
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm-send"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 502
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 503
    return-void
.end method

.method public final bg(Z)V
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conversation-overview-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 521
    return-void
.end method

.method protected final cq(I)V
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 194
    if-le p1, v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You appear to have downgraded your app. Please clear app data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    if-ne p1, v0, :cond_1

    .line 200
    :cond_1
    return-void
.end method

.method public final cs(I)Z
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget-account-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final ct(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "widget-account-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cu(I)V
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto-advance-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 511
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 512
    return-void
.end method

.method public final cv(I)V
    .locals 2

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "snap-header-mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 546
    return-void
.end method

.method public final cw(I)V
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migration-state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 564
    return-void
.end method

.method public final cx(I)V
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "required-sanitizer-version-number"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 590
    return-void
.end method

.method public final e(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cache-active-notification-set"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    return-void
.end method

.method public final f(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "display_images"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 367
    return-void
.end method

.method public final f([I)V
    .locals 6

    .prologue
    .line 243
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    .line 244
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widget-account-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    return-void
.end method

.method public final g(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "display_sender_images_patterns_set"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 371
    return-void
.end method

.method public final h(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recent-accounts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 572
    return-void
.end method

.method public final tA()V
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conversation-list-swipe"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 298
    return-void
.end method

.method public final tB()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cache-active-notification-set"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final tC()Z
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "conversation-photo-teaser-shown-three"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tD()V
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conversation-photo-teaser-shown-three"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    return-void
.end method

.method public final tE()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "long-press-to-select-tip-shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final tF()V
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "long-press-to-select-tip-shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    invoke-virtual {p0}, Lcom/android/mail/i/g;->ua()V

    .line 362
    return-void
.end method

.method public final tH()V
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    const-string v1, "display_images"

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 450
    const-string v1, "display_sender_images_patterns_set"

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 451
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 452
    return-void
.end method

.method public final tI()Z
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    const-string v1, "conversation-list-sender-image"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tJ()I
    .locals 3

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-auto-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final tK()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-auto-sync-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "num-of-dismisses-auto-sync-off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 474
    :cond_0
    return-void
.end method

.method public final tL()V
    .locals 3

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "num-of-dismisses-auto-sync-off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 479
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num-of-dismisses-auto-sync-off"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    return-void
.end method

.method public final tM()Z
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "confirm-delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tN()Z
    .locals 3

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "confirm-archive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tO()Z
    .locals 3

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "confirm-send"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tP()I
    .locals 3

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto-advance-mode"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final tQ()Z
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "conversation-overview-mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final tR()Z
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "conversation-overview-mode"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final tS()I
    .locals 3

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snap-header-mode"

    iget v2, p0, Lcom/android/mail/i/g;->axS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final tT()I
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "migration-state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final tU()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recent-accounts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final tV()I
    .locals 3

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "required-sanitizer-version-number"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final tW()J
    .locals 4

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "analytics-send-nb_accounts-epoch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final tx()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "migrated-version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final ty()V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migrated-version"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method

.method public final tz()Z
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/mail/i/g;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default-reply-all"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
