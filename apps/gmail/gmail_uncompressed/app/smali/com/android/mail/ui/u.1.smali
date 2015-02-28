.class public final Lcom/android/mail/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/br;


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;

.field private final aEr:I

.field private final aEs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private aEt:Z

.field private final aEu:Z

.field private aEv:Lcom/android/mail/browse/be;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/a;ILjava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2968
    iput p2, p0, Lcom/android/mail/ui/u;->aEr:I

    .line 2969
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    .line 2970
    iput-boolean p4, p0, Lcom/android/mail/ui/u;->aEu:Z

    .line 2971
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/u;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/ui/u;)I
    .locals 1

    .prologue
    .line 2945
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    return v0
.end method

.method static synthetic c(Lcom/android/mail/ui/u;)Z
    .locals 1

    .prologue
    .line 2945
    iget-boolean v0, p0, Lcom/android/mail/ui/u;->aEu:Z

    return v0
.end method

.method private declared-synchronized wK()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3081
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mail/ui/u;->aEt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3085
    :goto_0
    monitor-exit p0

    return v0

    .line 3084
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mail/ui/u;->aEt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3085
    const/4 v0, 0x0

    goto :goto_0

    .line 3081
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/be;)V
    .locals 0

    .prologue
    .line 2975
    iput-object p1, p0, Lcom/android/mail/ui/u;->aEv:Lcom/android/mail/browse/be;

    .line 2976
    return-void
.end method

.method public final wJ()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 2984
    invoke-direct {p0}, Lcom/android/mail/ui/u;->wK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3074
    :cond_0
    :goto_0
    return-void

    .line 2987
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->Nc:Lcom/android/mail/providers/Account;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v1

    .line 2990
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/android/mail/utils/E;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2991
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "ConversationAction.performAction():\nmTarget=%s\nCurrent=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-static {v5}, Lcom/android/mail/providers/Conversation;->o(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v5, v5, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    aput-object v5, v4, v6

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2996
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-nez v0, :cond_3

    .line 2997
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "null ConversationCursor in ConversationAction.performAction():\nmTarget=%s\nCurrent=%s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-static {v4}, Lcom/android/mail/providers/Conversation;->o(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v2, v2, Lcom/android/mail/ui/a;->aCW:Lcom/android/mail/providers/Conversation;

    aput-object v2, v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3003
    :cond_3
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0276

    if-ne v0, v3, :cond_5

    .line 3004
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Archiving"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3005
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v2, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEv:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/u;->b(Ljava/util/Collection;Lcom/android/mail/browse/be;)I

    move v0, v1

    .line 3061
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3062
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mail/ui/v;

    invoke-direct {v1, p0}, Lcom/android/mail/ui/v;-><init>(Lcom/android/mail/ui/u;)V

    iget-object v2, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v2}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/a;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3070
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->ww()V

    .line 3071
    iget-boolean v0, p0, Lcom/android/mail/ui/u;->aEu:Z

    if-eqz v0, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;)Lcom/android/mail/ui/ConversationCheckedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->clear()V

    goto/16 :goto_0

    .line 3006
    :cond_5
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0278

    if-ne v0, v3, :cond_6

    .line 3007
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Deleting"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3008
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    iget-object v4, p0, Lcom/android/mail/ui/u;->aEv:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v3, v4}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Lcom/android/mail/browse/be;)I

    .line 3009
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v3, 0x800

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    .line 3010
    goto :goto_1

    .line 3012
    :cond_6
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0281

    if-ne v0, v3, :cond_8

    .line 3013
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Muting"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3014
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/android/mail/providers/Folder;->cy(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3015
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 3016
    iput-boolean v6, v0, Lcom/android/mail/providers/Conversation;->azn:Z

    goto :goto_2

    .line 3019
    :cond_7
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v2, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEv:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/u;->c(Ljava/util/Collection;Lcom/android/mail/browse/be;)I

    move v0, v1

    goto/16 :goto_1

    .line 3020
    :cond_8
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0284

    if-ne v0, v3, :cond_9

    .line 3021
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Reporting spam"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3022
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v2, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEv:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/u;->d(Ljava/util/Collection;Lcom/android/mail/browse/be;)I

    move v0, v1

    goto/16 :goto_1

    .line 3023
    :cond_9
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0285

    if-ne v0, v3, :cond_a

    .line 3024
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Marking not spam"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3025
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v2, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEv:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/u;->e(Ljava/util/Collection;Lcom/android/mail/browse/be;)I

    move v0, v1

    goto/16 :goto_1

    .line 3026
    :cond_a
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0286

    if-ne v0, v3, :cond_b

    .line 3027
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Reporting phishing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3028
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v2, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEv:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/u;->f(Ljava/util/Collection;Lcom/android/mail/browse/be;)I

    move v0, v1

    goto/16 :goto_1

    .line 3029
    :cond_b
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d028e

    if-ne v0, v3, :cond_c

    .line 3030
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Removing star"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3032
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    const-string v4, "starred"

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Ljava/lang/String;Z)I

    move v0, v1

    goto/16 :goto_1

    .line 3034
    :cond_c
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0280

    if-ne v0, v3, :cond_e

    .line 3035
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v3, "Marking not-important"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3038
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uW()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3039
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 3040
    iput-boolean v6, v0, Lcom/android/mail/providers/Conversation;->azn:Z

    goto :goto_3

    .line 3043
    :cond_d
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v3, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    const-string v4, "priority"

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/mail/browse/u;->a(Ljava/util/Collection;Ljava/lang/String;I)I

    move v0, v1

    goto/16 :goto_1

    .line 3045
    :cond_e
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d0279

    if-ne v0, v3, :cond_10

    .line 3046
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Discarding draft messages"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3048
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uV()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3049
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 3050
    iput-boolean v6, v0, Lcom/android/mail/providers/Conversation;->azn:Z

    goto :goto_4

    .line 3053
    :cond_f
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v1, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/u;->g(Ljava/util/Collection;)I

    move v0, v2

    .line 3055
    goto/16 :goto_1

    .line 3056
    :cond_10
    iget v0, p0, Lcom/android/mail/ui/u;->aEr:I

    const v3, 0x7f0d027a

    if-ne v0, v3, :cond_11

    .line 3057
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "Discarding failed messages in Outbox"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3058
    iget-object v0, p0, Lcom/android/mail/ui/u;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    iget-object v1, p0, Lcom/android/mail/ui/u;->aEs:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/u;->h(Ljava/util/Collection;)I

    move v0, v2

    .line 3059
    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method
