.class public final Lcom/google/android/gm/welcome/u;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Lcom/google/android/gm/welcome/WelcomeTourState;",
        ">;"
    }
.end annotation


# instance fields
.field private final bsH:Lcom/android/mail/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/google/android/gm/welcome/u;->bsH:Lcom/android/mail/c/b;

    .line 46
    return-void
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/welcome/u;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gm/persistence/b;->bS(Landroid/content/Context;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/welcome/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_welcome_tour_debug_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v1, 0x1

    if-eq v11, v1, :cond_1

    const/4 v1, 0x1

    move v7, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/welcome/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_welcome_tour_debug_always_rename_eligible"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/c;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const-string v2, "WelcomeTour"

    const-string v3, "Your debug flags: %s=%s, %s=%d"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "gmail_welcome_tour_debug_mode"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz v7, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v5, "gmail_welcome_tour_debug_always_rename_eligible"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/welcome/u;->bsH:Lcom/android/mail/c/b;

    invoke-virtual {v1}, Lcom/android/mail/c/b;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "WelcomeTour"

    const-string v2, "Failed to obtain account data"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/ad;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    const/4 v1, -0x1

    if-ne v10, v1, :cond_9

    const/4 v1, 0x1

    :goto_2
    if-eqz v7, :cond_b

    const/4 v1, -0x1

    if-ne v11, v1, :cond_a

    const/4 v1, 0x1

    :goto_3
    move v2, v1

    :goto_4
    new-instance v3, Lcom/google/android/gm/welcome/WelcomeTourState;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gm/welcome/WelcomeTourState;-><init>(Z[Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;)V

    return-object v3

    :cond_1
    const/4 v1, 0x0

    move v7, v1

    goto :goto_0

    :cond_2
    const-string v1, "OFF"

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gm/a;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/welcome/u;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gm/a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gm/a;->w([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v14

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gmailrenameeligible"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gm/a;->w([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->L(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/welcome/u;->bsH:Lcom/android/mail/c/b;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mail/c/b;->moveToPosition(I)Z

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/welcome/u;->bsH:Lcom/android/mail/c/b;

    invoke-virtual {v1}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/welcome/u;->bsH:Lcom/android/mail/c/b;

    invoke-virtual {v1}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/mail/providers/Account;

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v8, v1}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->FZ()Lcom/google/android/gm/provider/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gm/provider/ae;->FG()I

    move-result v6

    :goto_6
    const-string v2, "WelcomeTour"

    const-string v4, "Account %s has welcomeTourVersionShown %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v16

    invoke-static {v2, v4, v5}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    if-ne v12, v5, :cond_6

    const/4 v1, 0x1

    move v5, v1

    :goto_7
    new-instance v1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v3

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_8
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;-><init>(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;II)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v9, v8, v2}, Lcom/google/android/gm/persistence/b;->L(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x0

    move v5, v1

    goto :goto_7

    :cond_7
    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    move v5, v1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    move v2, v1

    goto/16 :goto_4
.end method
