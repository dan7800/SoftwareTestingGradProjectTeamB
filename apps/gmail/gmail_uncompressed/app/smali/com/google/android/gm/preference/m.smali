.class public final Lcom/google/android/gm/preference/m;
.super Lcom/android/mail/i/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/mail/i/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final j(Landroid/content/Context;I)V
    .locals 10

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/persistence/b;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v3

    invoke-static {p1}, Lcom/android/mail/i/g;->ao(Landroid/content/Context;)Lcom/android/mail/i/g;

    move-result-object v4

    if-gtz p2, :cond_a

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bv(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/mail/i/g;->aZ(Z)V

    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bG(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "delete"

    invoke-virtual {v4, v1}, Lcom/android/mail/i/g;->bF(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gm/preference/i;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gm/preference/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gm/persistence/b;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gm/persistence/b;->D(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mail/i/a;->aW(Z)V

    :cond_3
    invoke-virtual {v1}, Lcom/android/mail/i/a;->commit()V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/Y;->c(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gm/provider/U;

    move-result-object v6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v6}, Lcom/google/android/gm/provider/U;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v6, v1}, Lcom/google/android/gm/provider/U;->dP(I)Lcom/google/android/gm/provider/T;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v0, v7}, Lcom/google/android/gm/persistence/b;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gm/provider/T;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/google/android/gm/ay;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    new-instance v8, Lcom/google/android/gm/preference/j;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v0, v2, v9}, Lcom/google/android/gm/preference/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/mail/providers/Folder;Z)V

    sget v2, Lcom/google/android/gm/persistence/b;->baS:I

    invoke-static {v7, v2}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/mail/i/e;->aW(Z)V

    :cond_4
    sget v2, Lcom/google/android/gm/persistence/b;->baT:I

    invoke-static {v7, v2}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v8, v2}, Lcom/android/mail/i/e;->bE(Ljava/lang/String;)V

    :cond_5
    invoke-static {p1, v7}, Lcom/google/android/gm/persistence/b;->a(Landroid/content/Context;Ljava/util/Set;)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/mail/i/e;->aX(Z)V

    sget v2, Lcom/google/android/gm/persistence/b;->baV:I

    invoke-static {v7, v2}, Lcom/google/android/gm/persistence/b;->a(Ljava/util/Set;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v8, v2}, Lcom/android/mail/i/e;->aY(Z)V

    :cond_6
    invoke-virtual {v8}, Lcom/android/mail/i/e;->commit()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const-string v2, "disabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Lcom/android/mail/i/g;->tA()V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    const/4 v0, 0x2

    if-ge p2, v0, :cond_b

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bx(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->f(Ljava/util/Set;)V

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->by(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->g(Ljava/util/Set;)V

    :cond_b
    const/4 v0, 0x3

    if-ge p2, v0, :cond_c

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bt(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->bc(Z)V

    :cond_c
    const/4 v0, 0x4

    if-ge p2, v0, :cond_d

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bK(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->be(Z)V

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bL(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->bd(Z)V

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bM(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->bf(Z)V

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    :goto_3
    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->cu(I)V

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bD(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->bg(Z)V

    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "always"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "portrait"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "never"

    aput-object v1, v5, v0

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_4
    array-length v6, v5

    if-ge v0, v6, :cond_13

    aget-object v6, v5, v0

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    :goto_5
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    aget v0, v3, v0

    :goto_6
    invoke-virtual {v4, v0}, Lcom/android/mail/i/g;->cv(I)V

    .line 35
    :cond_d
    return-void

    .line 34
    :cond_e
    invoke-virtual {v3, p1}, Lcom/google/android/gm/persistence/b;->bH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_3

    :cond_f
    const/4 v0, 0x3

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_5

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method
