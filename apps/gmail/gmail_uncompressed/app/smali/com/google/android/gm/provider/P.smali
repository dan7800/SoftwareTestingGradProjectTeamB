.class final Lcom/google/android/gm/provider/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/bE;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field private final bdz:Lcom/google/android/gm/provider/MailEngine;

.field private final bgy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/gm/provider/R;",
            ">;"
        }
    .end annotation
.end field

.field private bgz:Landroid/database/sqlite/SQLiteTransactionListener;

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/google/android/gm/provider/P;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/google/android/gm/provider/P;->mAccount:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/google/android/gm/provider/P;->bdz:Lcom/google/android/gm/provider/MailEngine;

    .line 116
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bdz:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/google/android/gm/provider/P;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    new-instance v0, Lcom/google/android/gm/provider/Q;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/Q;-><init>(Lcom/google/android/gm/provider/P;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/P;->bgy:Ljava/lang/ThreadLocal;

    .line 124
    return-void
.end method

.method private ES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/R;

    iget-object v0, v0, Lcom/google/android/gm/provider/R;->bgB:Ljava/util/Set;

    return-object v0
.end method

.method private ET()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/R;

    iget-object v0, v0, Lcom/google/android/gm/provider/R;->bgC:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final ER()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 277
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/google/android/gm/provider/P;->ES()Ljava/util/Set;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    sget-object v1, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v2, "Rolled back outermost conversation commit, NOT notifying on: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 285
    invoke-direct {p0}, Lcom/google/android/gm/provider/P;->ET()Ljava/util/Set;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    sget-object v1, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v2, "Rolled back outermost label commit, NOT notifying on: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 292
    :cond_2
    return-void
.end method

.method public final ak(J)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v1, "Must already be in a transaction with listener to add conversation to notify. (id=%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/provider/P;->ES()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v1, "adding convId (%d) to notify"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final bR(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v1, "Must already be in a transaction with listener to enable notifications for account %s."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/P;->mAccount:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/R;

    .line 161
    iput-boolean v2, v0, Lcom/google/android/gm/provider/R;->bgD:Z

    .line 164
    if-eqz p1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gm/provider/R;->bgE:Z

    if-nez v1, :cond_0

    .line 165
    iput-boolean v2, v0, Lcom/google/android/gm/provider/R;->bgE:Z

    goto :goto_0
.end method

.method public final bS(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    sget-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v2, "Must already be in a transaction with listener to add send notification intents. (force=%b)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/R;

    .line 178
    if-eqz p1, :cond_2

    const/4 v1, 0x2

    .line 183
    :cond_2
    invoke-static {v0}, Lcom/google/android/gm/provider/R;->a(Lcom/google/android/gm/provider/R;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 184
    invoke-static {v0, v1}, Lcom/google/android/gm/provider/R;->a(Lcom/google/android/gm/provider/R;I)I

    goto :goto_0
.end method

.method public final bT(Z)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    invoke-direct {p0}, Lcom/google/android/gm/provider/P;->ES()Ljava/util/Set;

    move-result-object v3

    .line 242
    if-nez p1, :cond_1

    .line 243
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v4, "Outermost commit complete, notifying on conversations: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 247
    iget-object v5, p0, Lcom/google/android/gm/provider/P;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gm/provider/P;->mAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/provider/P;->mAccount:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/GmailProvider;->S(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 255
    invoke-direct {p0}, Lcom/google/android/gm/provider/P;->ET()Ljava/util/Set;

    move-result-object v0

    .line 256
    iget-object v3, p0, Lcom/google/android/gm/provider/P;->bdz:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/MailEngine;->p(Ljava/util/Set;)V

    .line 257
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 259
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/R;

    .line 260
    iget-boolean v3, v0, Lcom/google/android/gm/provider/R;->bgD:Z

    if-eqz v3, :cond_2

    .line 261
    iget-object v3, p0, Lcom/google/android/gm/provider/P;->bdz:Lcom/google/android/gm/provider/MailEngine;

    iget-boolean v4, v0, Lcom/google/android/gm/provider/R;->bgE:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/MailEngine;->bY(Z)V

    .line 263
    :cond_2
    iput-boolean v2, v0, Lcom/google/android/gm/provider/R;->bgD:Z

    .line 264
    iput-boolean v2, v0, Lcom/google/android/gm/provider/R;->bgE:Z

    .line 266
    invoke-static {v0}, Lcom/google/android/gm/provider/R;->a(Lcom/google/android/gm/provider/R;)I

    move-result v3

    .line 267
    if-eqz v3, :cond_3

    .line 268
    iget-object v4, p0, Lcom/google/android/gm/provider/P;->bdz:Lcom/google/android/gm/provider/MailEngine;

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    :goto_1
    invoke-virtual {v4, v1}, Lcom/google/android/gm/provider/MailEngine;->bW(Z)V

    .line 270
    invoke-static {v0, v2}, Lcom/google/android/gm/provider/R;->a(Lcom/google/android/gm/provider/R;I)I

    .line 273
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 268
    goto :goto_1
.end method

.method public final k(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v1, "Must already be in a transaction with listener to add label to notify. (ids=%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/provider/P;->ET()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/google/android/gm/provider/P;->TAG:Ljava/lang/String;

    const-string v1, "adding labelIds (%s) to notify"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onBegin()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->eY(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgz:Landroid/database/sqlite/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgz:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V

    .line 200
    :cond_0
    return-void
.end method

.method public final onCommit()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgz:Landroid/database/sqlite/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgz:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    .line 219
    :cond_0
    return-void
.end method

.method public final onRollback()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgz:Landroid/database/sqlite/SQLiteTransactionListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/google/android/gm/provider/P;->bgz:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V

    .line 233
    :cond_0
    return-void
.end method
