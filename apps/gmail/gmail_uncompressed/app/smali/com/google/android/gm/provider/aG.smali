.class final Lcom/google/android/gm/provider/aG;
.super Lcom/google/android/gm/provider/aS;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/bk;


# instance fields
.field private final aLM:Ljava/lang/String;

.field private aaL:I

.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field bjV:Z

.field bjW:J

.field private volatile bjX:J

.field private final bjY:Lcom/google/android/gm/provider/af;

.field private final bjZ:Lcom/google/android/gm/provider/M;

.field private final bka:Ljava/lang/String;

.field private final bkb:Z

.field private final bkc:Z

.field private bkd:Z

.field private bke:Z

.field private bkf:Z

.field private final bkg:I

.field private final bkh:I

.field private final bki:I

.field private volatile bkj:I

.field private bkk:J

.field private bkl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lcom/google/android/gm/provider/f;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7191
    iput-object p1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/aS;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 7161
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aG;->bkd:Z

    .line 7162
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aG;->bke:Z

    .line 7164
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aG;->bkf:Z

    .line 7165
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gmail_live_max_results"

    const/16 v3, 0x16

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/aG;->bkg:I

    .line 7167
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gmail_live_threshold_step"

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/aG;->bkh:I

    .line 7169
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gmail_live_threshold_max"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/aG;->bki:I

    .line 7171
    iput v4, p0, Lcom/google/android/gm/provider/aG;->bkj:I

    .line 7173
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gm/provider/aG;->bkk:J

    .line 7174
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aG;->bkl:Z

    .line 7192
    iput-boolean p4, p0, Lcom/google/android/gm/provider/aG;->bjV:Z

    .line 7193
    iput-boolean p7, p0, Lcom/google/android/gm/provider/aG;->bkc:Z

    .line 7194
    if-eqz p4, :cond_0

    .line 7197
    iput-boolean v5, p0, Lcom/google/android/gm/provider/aG;->bkf:Z

    .line 7203
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    const-string v2, "^i"

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7204
    invoke-static {p1, p2}, Lcom/google/android/gm/provider/MailEngine;->c(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 7205
    invoke-static {p1, p3}, Lcom/google/android/gm/provider/MailEngine;->d(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 7206
    invoke-static {p1, p0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aG;)Lcom/google/android/gm/provider/aG;

    .line 7209
    :cond_0
    iput-object p2, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;

    .line 7210
    iget-object v2, p1, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;

    const-string v3, "label:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/ae;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    .line 7212
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/MailSync;->g(Lcom/google/android/gm/provider/af;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    .line 7213
    iget-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    iput-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjX:J

    .line 7250
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    if-eqz v0, :cond_2

    .line 7251
    const-string v2, "conversation_labels.conversation_id IN\n(SELECT DISTINCT conversation_labels.conversation_id\n   FROM conversation_labels\n WHERE conversation_labels.labels_id = ?\n ORDER BY conversation_labels.sortMessageId DESC\n LIMIT ?)\n   AND conversation_labels.labels_id = ? \n   AND (((conversations.maxMessageId >= ?           OR conversations.maxMessageId = 0)\n        AND conversation_labels.queryId = 0)\n     OR (conversations.maxMessageId < ?\n        AND conversation_labels.queryId = ?))"

    .line 7263
    const-string v0, "GROUP BY conversations._id\nORDER BY conversation_labels.sortMessageId DESC\n"

    .line 7266
    iput-object v1, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    .line 7267
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aG;->bkb:Z

    move-object v1, v2

    .line 7293
    :goto_1
    invoke-direct {p0, p5}, Lcom/google/android/gm/provider/aG;->b(Ljava/lang/Integer;)V

    .line 7294
    invoke-direct {p0}, Lcom/google/android/gm/provider/aG;->GI()V

    .line 7296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT conversation_labels.*, conversations.*, conversations.queryId = 0 AS synced, (SELECT group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || \n(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    WHEN \'^sq_ig_i_personal\' THEN ?    WHEN \'^sq_ig_i_social\' THEN ?    WHEN \'^sq_ig_i_promo\' THEN ?    WHEN \'^sq_ig_i_notification\' THEN ?    WHEN \'^sq_ig_i_group\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden),    \'^**^\') FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id AND conversation_labels.isZombie = 0) AS conversationLabels   FROM conversation_labels\n  LEFT OUTER JOIN conversations\n  ON conversation_labels.conversation_id = conversations._id\n  AND conversation_labels.queryId = conversations.queryId\nWHERE\n  ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n  AND isZombie = 0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bka:Ljava/lang/String;

    .line 7302
    return-void

    :cond_1
    move-object v0, v1

    .line 7210
    goto :goto_0

    .line 7274
    :cond_2
    iput-boolean v5, p0, Lcom/google/android/gm/provider/aG;->bkb:Z

    .line 7276
    if-eqz p6, :cond_3

    .line 7277
    new-instance v0, Lcom/google/android/gm/provider/N;

    iget-object v1, p1, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p6}, Lcom/google/android/gm/provider/N;-><init>(Lcom/google/android/gm/provider/aj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/f;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    .line 7283
    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/M;->EK()Ljava/lang/String;

    move-result-object v0

    .line 7284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "conversation_labels.queryId = ? OR  (conversation_labels.queryId = 0 AND ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7290
    :goto_3
    const-string v1, "GROUP BY conversations._id\nORDER BY conversation_labels.sortMessageId DESC\n"

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 7280
    :cond_3
    new-instance v0, Lcom/google/android/gm/provider/M;

    iget-object v1, p1, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->Ge()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/M;-><init>(Lcom/google/android/gm/provider/aj;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    goto :goto_2

    .line 7288
    :cond_4
    const-string v0, "conversation_labels.queryId = ?"

    goto :goto_3
.end method

.method private GI()V
    .locals 9

    .prologue
    .line 7305
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    iget-wide v4, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    iget-wide v6, p0, Lcom/google/android/gm/provider/aG;->bkB:J

    iget v8, p0, Lcom/google/android/gm/provider/aG;->aaL:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gm/provider/aG;->a(Landroid/content/Context;Lcom/google/android/gm/provider/af;JJI)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aG;->setSelectionArguments([Ljava/lang/String;)V

    .line 7307
    return-void
.end method

.method private GN()I
    .locals 5

    .prologue
    .line 7584
    const/4 v0, 0x0

    .line 7585
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->A(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bkx:Ljava/lang/Thread;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->E(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7586
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->C(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7587
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->A(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7588
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/gm/provider/aY;

    iget-object v4, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {v3, v4}, Lcom/google/android/gm/provider/aY;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    const-string v4, "CCL SyncThread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 7589
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->A(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7590
    const/16 v0, 0x8

    .line 7592
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7594
    :cond_1
    return v0

    .line 7592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private GR()V
    .locals 4

    .prologue
    .line 7809
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->D(Lcom/google/android/gm/provider/MailEngine;)V

    .line 7812
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    .line 7817
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    iget-object v0, v0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    .line 7818
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 7820
    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 7823
    return-void

    .line 7817
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7818
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private GS()V
    .locals 2

    .prologue
    .line 7863
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    if-eqz v0, :cond_0

    .line 7864
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->f(Lcom/google/android/gm/provider/af;)V

    .line 7866
    :cond_0
    return-void
.end method

.method private a(ILcom/google/android/gm/provider/aR;)I
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 7500
    .line 7501
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aG;->GL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7546
    :cond_0
    :goto_0
    return v0

    .line 7515
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gm/provider/aR;->getCount()I

    move-result v1

    .line 7516
    const-string v2, "CursorLogic"

    invoke-static {v2, v10}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7517
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 7518
    const-string v2, "CursorLogic"

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    const-string v4, "IN cursor maybeFetch, count=%s label=%s pos=%s threshold=%s worker=%s thisThread=%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    aput-object v6, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget v6, p0, Lcom/google/android/gm/provider/aG;->bkj:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/google/android/gm/provider/aG;->bkx:Ljava/lang/Thread;

    aput-object v6, v5, v11

    const/4 v6, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7525
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aG;->Ha()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gm/provider/aG;->bkj:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gm/provider/aG;->bkb:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gm/provider/aG;->bkd:Z

    if-nez v2, :cond_0

    :cond_3
    const/16 v2, 0x5dc

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjX:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 7531
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bkx:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 7533
    iget v2, p0, Lcom/google/android/gm/provider/aG;->bki:I

    if-lez v2, :cond_4

    .line 7535
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Prefetching live mail: maxResults: %d pos: %d count: %d threshold: %d"

    new-array v4, v11, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/gm/provider/aG;->bkg:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    iget v1, p0, Lcom/google/android/gm/provider/aG;->bkj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7538
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aG;->GZ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7539
    const-string v1, "CursorLogic"

    const-string v2, "IN cursor maybeFetch starting thread. label=%s worker=%s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bkx:Ljava/lang/Thread;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7542
    const/16 v0, 0x8

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/aG;ILcom/google/android/gm/provider/aR;)I
    .locals 1

    .prologue
    .line 7131
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/aG;->a(ILcom/google/android/gm/provider/aR;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/aG;)V
    .locals 0

    .prologue
    .line 7131
    invoke-direct {p0}, Lcom/google/android/gm/provider/aG;->GI()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/aG;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 7131
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/aG;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gm/provider/af;JJI)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7360
    if-eqz p2, :cond_0

    .line 7361
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v2, p2, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    iget-wide v2, p2, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/bw;->a(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7374
    :goto_0
    return-object v0

    .line 7370
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7372
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/M;->EL()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7373
    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/bw;->a(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gm/provider/aG;)Lcom/google/android/gm/provider/af;
    .locals 1

    .prologue
    .line 7131
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    return-object v0
.end method

.method private b(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 7310
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/android/gm/provider/aG;->aaL:I

    .line 7311
    return-void

    .line 7310
    :cond_0
    const/16 v0, 0x5dc

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/aG;)V
    .locals 0

    .prologue
    .line 7131
    invoke-direct {p0}, Lcom/google/android/gm/provider/aG;->GS()V

    return-void
.end method


# virtual methods
.method final GJ()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7334
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkf:Z

    if-eqz v0, :cond_1

    .line 7335
    iput-boolean v4, p0, Lcom/google/android/gm/provider/aG;->bkf:Z

    .line 7337
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bju:Lcom/google/android/gm/provider/aH;

    if-eqz v0, :cond_0

    .line 7338
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bju:Lcom/google/android/gm/provider/aH;

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/aH;->cancel(Z)Z

    .line 7340
    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/aH;

    iget-wide v2, p0, Lcom/google/android/gm/provider/aG;->bkB:J

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gm/provider/aH;-><init>(Lcom/google/android/gm/provider/aG;J)V

    .line 7350
    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->bju:Lcom/google/android/gm/provider/aH;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/aH;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7352
    :cond_1
    return-void
.end method

.method public final GK()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7409
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bke:Z

    if-eqz v0, :cond_0

    .line 7410
    const-string v0, "SELECT conversation_labels.*, conversations.*, conversations.queryId = 0 AS synced, (SELECT group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || \n(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    WHEN \'^sq_ig_i_personal\' THEN ?    WHEN \'^sq_ig_i_social\' THEN ?    WHEN \'^sq_ig_i_promo\' THEN ?    WHEN \'^sq_ig_i_notification\' THEN ?    WHEN \'^sq_ig_i_group\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden),    \'^**^\') FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id AND conversation_labels.isZombie = 0) AS conversationLabels   FROM conversation_labels\n  LEFT OUTER JOIN conversations\n  ON conversation_labels.conversation_id = conversations._id\n  AND conversation_labels.queryId = conversations.queryId\nWHERE 0 = 1"

    .line 7422
    :goto_0
    return-object v0

    .line 7413
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bka:Ljava/lang/String;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 7414
    if-gez v1, :cond_1

    .line 7415
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bka:Ljava/lang/String;

    goto :goto_0

    .line 7417
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    iget v2, p0, Lcom/google/android/gm/provider/aG;->aaL:I

    invoke-virtual {v0, v2}, Lcom/google/android/gm/provider/M;->dO(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7418
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bka:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7419
    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bka:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 7420
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7421
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bka:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bka:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 7422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7417
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final GL()Z
    .locals 2

    .prologue
    .line 7443
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bjV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->F(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final GM()Z
    .locals 4

    .prologue
    .line 7449
    iget-wide v0, p0, Lcom/google/android/gm/provider/aG;->bjX:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final GO()V
    .locals 4

    .prologue
    .line 7613
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->m(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bB;->a(Lcom/google/android/gm/provider/bE;)V

    .line 7618
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->HQ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7626
    return-void

    .line 7619
    :catch_0
    move-exception v0

    .line 7620
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "Exception while attempting to suppress notifications"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7623
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 7624
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception while attempting to suppress notifications"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final GP()V
    .locals 1

    .prologue
    .line 7634
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V

    .line 7635
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 7636
    return-void
.end method

.method protected final GQ()V
    .locals 10

    .prologue
    const/high16 v9, 0x200000

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7643
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/a;->dm(Ljava/lang/String;)I

    move-result v0

    .line 7644
    or-int/2addr v0, v9

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 7651
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;IZ)V

    .line 7655
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    if-eqz v0, :cond_3

    .line 7656
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    iget-object v2, v0, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    .line 7659
    const/4 v1, 0x0

    .line 7663
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bdv:Lcom/google/android/gm/provider/ae;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ae;->Fw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7664
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fu()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/ai;

    .line 7667
    if-eqz v0, :cond_5

    .line 7668
    invoke-virtual {v0}, Lcom/google/android/gm/provider/ai;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 7672
    :goto_0
    if-eqz v0, :cond_2

    .line 7690
    :goto_1
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    iget-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjX:J

    iget v4, p0, Lcom/google/android/gm/provider/aG;->bkg:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gm/provider/MailSync;->a(Ljava/lang/String;JI)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 7692
    iget v1, p0, Lcom/google/android/gm/provider/aG;->bkj:I

    iget v2, p0, Lcom/google/android/gm/provider/aG;->bkh:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gm/provider/aG;->bki:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/provider/aG;->bkj:I

    .line 7693
    const-string v1, "CursorLogic"

    const-string v2, "CCL.init fetchThreshold=%s thread=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/gm/provider/aG;->bkj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7695
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v1

    .line 7698
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7700
    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkl:Z

    if-eqz v0, :cond_0

    .line 7701
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->beginTransactionNonExclusive()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7703
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gm/provider/aG;->bkB:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 7704
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversations"

    const-string v4, "queryId = ?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7705
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversation_labels"

    const-string v4, "queryId = ?"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkl:Z

    .line 7707
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7709
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 7712
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gm/provider/MailSync;->a(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/bk;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjX:J

    .line 7713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkd:Z

    .line 7714
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7716
    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 7717
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 7720
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v8, v7}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;IZ)V

    .line 7721
    invoke-static {v9, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 7722
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 7723
    return-void

    .line 7677
    :cond_2
    :try_start_6
    const-string v0, "^k"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7678
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7679
    const-string v1, " !label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7680
    const-string v1, "^s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7681
    const-string v1, " !label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7682
    const-string v1, "^fa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 7685
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_1

    .line 7709
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 7714
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit p0

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 7716
    :catchall_2
    move-exception v0

    :try_start_9
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 7717
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 7718
    :cond_4
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 7720
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1, v8, v7}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;IZ)V

    .line 7721
    invoke-static {v9, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 7722
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final GT()J
    .locals 2

    .prologue
    .line 7912
    iget-wide v0, p0, Lcom/google/android/gm/provider/aG;->bkk:J

    return-wide v0
.end method

.method public final GU()V
    .locals 1

    .prologue
    .line 7916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bke:Z

    .line 7918
    invoke-direct {p0}, Lcom/google/android/gm/provider/aG;->GR()V

    .line 7919
    return-void
.end method

.method public final a(Lcom/google/android/gm/provider/aR;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 7325
    invoke-virtual {p1}, Lcom/google/android/gm/provider/aR;->getPosition()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/gm/provider/aG;->a(ILcom/google/android/gm/provider/aR;)I

    move-result v1

    .line 7326
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aG;->GL()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    or-int/2addr v0, v1

    .line 7327
    return v0

    .line 7326
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->p(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "gmail-ls"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gmail-sync-thread-interval"

    const v4, 0x1b7740

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->G(Lcom/google/android/gm/provider/MailEngine;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;J)J

    invoke-direct {p0}, Lcom/google/android/gm/provider/aG;->GN()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gm/provider/bi;)V
    .locals 4

    .prologue
    .line 7599
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-wide v2, p0, Lcom/google/android/gm/provider/aG;->bkB:J

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/bi;JLcom/google/android/gm/provider/af;)J

    move-result-wide v0

    .line 7605
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gm/provider/aG;->bjX:J

    .line 7606
    return-void
.end method

.method public final aF(J)V
    .locals 1

    .prologue
    .line 7908
    iput-wide p1, p0, Lcom/google/android/gm/provider/aG;->bkk:J

    .line 7909
    return-void
.end method

.method public final b(ILcom/google/android/gm/provider/aR;)V
    .locals 1

    .prologue
    .line 7869
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkc:Z

    if-eqz v0, :cond_0

    .line 7870
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/aG;->a(ILcom/google/android/gm/provider/aR;)I

    .line 7872
    :cond_0
    return-void
.end method

.method public final ca(Z)V
    .locals 9

    .prologue
    .line 7826
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bit:Lcom/google/android/gm/provider/MailSync;

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->g(Lcom/google/android/gm/provider/af;)J

    move-result-wide v0

    .line 7827
    iget-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 7849
    iget-wide v2, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 7850
    iget-wide v0, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    .line 7852
    :cond_0
    iput-wide v0, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    .line 7853
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->v(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    iget-wide v4, p0, Lcom/google/android/gm/provider/aG;->bjW:J

    iget-wide v6, p0, Lcom/google/android/gm/provider/aG;->bkB:J

    iget v8, p0, Lcom/google/android/gm/provider/aG;->aaL:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gm/provider/aG;->a(Landroid/content/Context;Lcom/google/android/gm/provider/af;JJI)[Ljava/lang/String;

    move-result-object v0

    .line 7855
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aG;->setSelectionArguments([Ljava/lang/String;)V

    .line 7857
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gm/provider/aG;->GS()V

    .line 7858
    :cond_2
    return-void
.end method

.method public final dR(I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 7454
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/aS;->dR(I)Landroid/os/Bundle;

    move-result-object v0

    .line 7460
    iget-boolean v1, p0, Lcom/google/android/gm/provider/aG;->bkb:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gm/provider/aG;->bkd:Z

    if-nez v1, :cond_1

    .line 7461
    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7462
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v1

    .line 7464
    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beA:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorStatus;->bez:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    if-ne v1, v2, :cond_1

    .line 7466
    :cond_0
    const-string v1, "status"

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorStatus;->beD:Lcom/google/android/gm/provider/Gmail$CursorStatus;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7471
    :cond_1
    const-string v1, "active_network_query"

    invoke-virtual {p0}, Lcom/google/android/gm/provider/aG;->GL()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7474
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    if-eqz v1, :cond_2

    .line 7475
    const-string v1, "label_canonical_name"

    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    iget-object v2, v2, Lcom/google/android/gm/provider/af;->bhU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7478
    :cond_2
    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7405
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->aLM:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 7428
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bke:Z

    if-eqz v0, :cond_0

    .line 7429
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/bw;->a(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7431
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/provider/aS;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 7878
    const/4 v0, 0x1

    return v0
.end method

.method public final o(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 7436
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjZ:Lcom/google/android/gm/provider/M;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/M;->o(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0
.end method

.method public final declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 7484
    monitor-enter p0

    :try_start_0
    const-string v0, "force_refresh"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkl:Z

    .line 7485
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkl:Z

    if-eqz v0, :cond_0

    .line 7487
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gm/provider/aG;->bjX:J

    .line 7489
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/aS;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 7484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7728
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7732
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->H(Lcom/google/android/gm/provider/MailEngine;)V

    .line 7733
    const-wide/16 v2, 0x0

    .line 7736
    sget-object v4, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7737
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 7738
    iget-object v2, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->A(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 7739
    :goto_0
    iget-object v3, p0, Lcom/google/android/gm/provider/aG;->bkx:Ljava/lang/Thread;

    if-eqz v3, :cond_4

    :goto_1
    move v1, v2

    move-wide v2, v4

    .line 7741
    :goto_2
    iget-object v4, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->B(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7742
    :try_start_1
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7743
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 7744
    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 7745
    sget-object v5, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v8, "Blocked while waiting for mSyncLock in ConversationCursorLogic.run() %d ms\n  foreground Sync: %b live request: %b"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v9, v6

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-static {v5, v8, v9}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7751
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->I(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 7752
    new-instance v0, Lcom/google/android/gm/provider/aX;

    invoke-direct {v0}, Lcom/google/android/gm/provider/aX;-><init>()V

    .line 7753
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gm/provider/aX;->bkG:Z

    .line 7754
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    if-eqz v1, :cond_1

    .line 7755
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjY:Lcom/google/android/gm/provider/af;

    iget-wide v6, v1, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/provider/aX;->bkI:Ljava/lang/Long;

    .line 7757
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1, v0}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aX;)Z

    .line 7758
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7759
    :try_start_2
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/ad;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7760
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 7761
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 7762
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v3, "Blocked  for %d ms before calling runInternal() in ConversationCursorLogic.run()  (Blocked by previous call to runSyncLoop()"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7768
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aG;->GQ()V

    .line 7769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkz:Z

    .line 7770
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->ber:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 7771
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7800
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    .line 7802
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gm/provider/aG;->GR()V

    .line 7803
    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bky:Ljava/lang/Object;

    monitor-enter v1

    .line 7804
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bkx:Ljava/lang/Thread;

    .line 7805
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :cond_3
    move v2, v1

    .line 7738
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 7739
    goto/16 :goto_1

    .line 7758
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7772
    :catch_0
    move-exception v0

    .line 7773
    :try_start_5
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered an IOException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkz:Z

    .line 7775
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bes:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 7776
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 7800
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    goto :goto_3

    .line 7777
    :catch_1
    move-exception v0

    .line 7778
    :try_start_6
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered an AuthenticationException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkz:Z

    .line 7781
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bet:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 7782
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 7800
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    goto :goto_3

    .line 7783
    :catch_2
    move-exception v0

    .line 7784
    :try_start_7
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered a ResponseParseException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkz:Z

    .line 7787
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->beu:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 7788
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 7800
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    goto/16 :goto_3

    .line 7789
    :catch_3
    move-exception v0

    .line 7790
    :try_start_8
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered a SQLiteException: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkz:Z

    .line 7792
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bev:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 7793
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 7800
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    goto/16 :goto_3

    .line 7794
    :catch_4
    move-exception v0

    .line 7795
    :try_start_9
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    const-string v2, "MailCursor encountered a Conscrypt installation error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aG;->bkz:Z

    .line 7797
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->bew:Lcom/google/android/gm/provider/Gmail$CursorError;

    iput-object v0, p0, Lcom/google/android/gm/provider/aG;->bkA:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 7798
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->a(Lcom/google/android/gm/provider/MailEngine;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 7800
    iget-object v0, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->l(Lcom/google/android/gm/provider/MailEngine;)Z

    throw v0

    .line 7805
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_2
.end method
