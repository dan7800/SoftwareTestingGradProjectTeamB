.class final Lcom/android/mail/ui/x;
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

.field private final aEx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final aEy:Z

.field private final aEz:Lcom/android/mail/providers/Folder;

.field private amt:Lcom/android/mail/browse/be;

.field private final mIsDestructive:Z


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/a;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;ZZZI",
            "Lcom/android/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3840
    iput-object p1, p0, Lcom/android/mail/ui/x;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/x;->aEx:Ljava/util/ArrayList;

    .line 3841
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/x;->aEs:Ljava/util/Collection;

    .line 3842
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEx:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3843
    iput-boolean p4, p0, Lcom/android/mail/ui/x;->mIsDestructive:Z

    .line 3844
    iput-boolean p5, p0, Lcom/android/mail/ui/x;->aEu:Z

    .line 3845
    iput-boolean p6, p0, Lcom/android/mail/ui/x;->aEy:Z

    .line 3846
    iput p7, p0, Lcom/android/mail/ui/x;->aEr:I

    .line 3847
    iput-object p8, p0, Lcom/android/mail/ui/x;->aEz:Lcom/android/mail/providers/Folder;

    .line 3848
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/a;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;B)V
    .locals 0

    .prologue
    .line 3820
    invoke-direct/range {p0 .. p8}, Lcom/android/mail/ui/x;-><init>(Lcom/android/mail/ui/a;Ljava/util/Collection;Ljava/util/Collection;ZZZILcom/android/mail/providers/Folder;)V

    return-void
.end method

.method private declared-synchronized wK()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3904
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mail/ui/x;->aEt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3908
    :goto_0
    monitor-exit p0

    return v0

    .line 3907
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mail/ui/x;->aEt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3908
    const/4 v0, 0x0

    goto :goto_0

    .line 3904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/be;)V
    .locals 0

    .prologue
    .line 3852
    iput-object p1, p0, Lcom/android/mail/ui/x;->amt:Lcom/android/mail/browse/be;

    .line 3853
    return-void
.end method

.method public final wJ()V
    .locals 9

    .prologue
    .line 3857
    invoke-direct {p0}, Lcom/android/mail/ui/x;->wK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3897
    :cond_0
    :goto_0
    return-void

    .line 3860
    :cond_1
    iget-boolean v0, p0, Lcom/android/mail/ui/x;->mIsDestructive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mail/ui/x;->aEy:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/x;->aEs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3861
    new-instance v0, Lcom/android/mail/ui/ToastBarOperation;

    iget-object v1, p0, Lcom/android/mail/ui/x;->aEs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, p0, Lcom/android/mail/ui/x;->aEr:I

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/mail/ui/x;->aEu:Z

    iget-object v5, p0, Lcom/android/mail/ui/x;->aEz:Lcom/android/mail/providers/Folder;

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    .line 3863
    iget-object v1, p0, Lcom/android/mail/ui/x;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/a;->a(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 3867
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3870
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/providers/Conversation;

    .line 3871
    invoke-virtual {v1}, Lcom/android/mail/providers/Conversation;->uD()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/providers/Folder;->s(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v5

    .line 3873
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3874
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3875
    iget-boolean v0, p0, Lcom/android/mail/ui/x;->mIsDestructive:Z

    if-eqz v0, :cond_3

    .line 3876
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/mail/providers/Conversation;->azn:Z

    .line 3878
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/FolderOperation;

    .line 3879
    iget-object v4, v0, Lcom/android/mail/ui/FolderOperation;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v4, v4, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v4, v4, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3880
    iget-boolean v4, v0, Lcom/android/mail/ui/FolderOperation;->aKh:Z

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3881
    iget-boolean v4, v0, Lcom/android/mail/ui/FolderOperation;->aKh:Z

    if-eqz v4, :cond_5

    .line 3882
    iget-object v4, v0, Lcom/android/mail/ui/FolderOperation;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v4, v4, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v4, v4, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    iget-object v0, v0, Lcom/android/mail/ui/FolderOperation;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3880
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 3884
    :cond_5
    iget-object v0, v0, Lcom/android/mail/ui/FolderOperation;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v0, v0, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3887
    :cond_6
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mail/ui/x;->amt:Lcom/android/mail/browse/be;

    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/u;->a(Lcom/android/mail/providers/Conversation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Collection;Lcom/android/mail/browse/be;)Lcom/android/mail/browse/z;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3890
    :cond_7
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    if-eqz v0, :cond_8

    .line 3891
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->aDh:Lcom/android/mail/browse/u;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/u;->d(Ljava/util/Collection;)I

    .line 3893
    :cond_8
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEa:Lcom/android/mail/ui/a;

    invoke-virtual {v0}, Lcom/android/mail/ui/a;->ww()V

    .line 3894
    iget-boolean v0, p0, Lcom/android/mail/ui/x;->aEu:Z

    if-eqz v0, :cond_0

    .line 3895
    iget-object v0, p0, Lcom/android/mail/ui/x;->aEa:Lcom/android/mail/ui/a;

    invoke-static {v0}, Lcom/android/mail/ui/a;->b(Lcom/android/mail/ui/a;)Lcom/android/mail/ui/ConversationCheckedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationCheckedSet;->clear()V

    goto/16 :goto_0
.end method
