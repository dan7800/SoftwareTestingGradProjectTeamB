.class final Lcom/android/mail/browse/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic amq:Lcom/android/mail/browse/u;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/u;)V
    .locals 0

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2405
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    .line 2407
    sget-object v7, Lcom/android/mail/utils/NotificationActionUtils;->aPL:Ljava/util/Set;

    .line 2410
    invoke-virtual {v6}, Landroid/support/v4/f/o;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->fs(I)Ljava/util/HashSet;

    move-result-object v8

    move v1, v2

    move v3, v2

    .line 2415
    :goto_0
    invoke-virtual {v6}, Landroid/support/v4/f/o;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2416
    invoke-virtual {v6, v1}, Landroid/support/v4/f/o;->keyAt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/v4/f/o;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    .line 2421
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v9

    .line 2422
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    sget-object v10, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    if-ne v4, v10, :cond_2

    move v4, v5

    .line 2425
    :goto_1
    iget-object v9, v9, Lcom/android/mail/providers/Folder;->aAc:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    invoke-static {v10}, Lcom/android/mail/browse/u;->l(Lcom/android/mail/browse/u;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v4, :cond_1

    .line 2427
    :cond_0
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->Ba()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2428
    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    .line 2430
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2432
    iget-object v4, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    invoke-static {v4}, Lcom/android/mail/browse/u;->k(Lcom/android/mail/browse/u;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2433
    sget-object v3, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v4, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    .line 2435
    iget-object v3, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    invoke-static {v3}, Lcom/android/mail/browse/u;->k(Lcom/android/mail/browse/u;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v5

    .line 2415
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v4, v2

    .line 2422
    goto :goto_1

    .line 2445
    :cond_3
    iget-object v0, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->k(Lcom/android/mail/browse/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2446
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2447
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 2449
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2455
    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2456
    sget-object v2, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    invoke-static {v2, v3}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;)V

    .line 2457
    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2459
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v3, v5

    .line 2461
    goto :goto_2

    .line 2465
    :cond_6
    if-eqz v3, :cond_7

    .line 2466
    iget-object v0, p0, Lcom/android/mail/browse/x;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->j(Lcom/android/mail/browse/u;)V

    .line 2468
    :cond_7
    return-void
.end method
