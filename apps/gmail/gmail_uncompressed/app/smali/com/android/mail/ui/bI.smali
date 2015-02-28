.class final Lcom/android/mail/ui/bI;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/bK;


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;

.field private final aJW:Lcom/android/mail/providers/y;

.field private final aJX:Lcom/android/mail/ui/cN;

.field private aJY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private aJZ:Lcom/android/mail/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private final aJp:Z

.field private awW:Lcom/android/mail/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/bB;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 893
    iput-object p1, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    .line 894
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 865
    new-instance v0, Lcom/android/mail/ui/bJ;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/bJ;-><init>(Lcom/android/mail/ui/bI;)V

    iput-object v0, p0, Lcom/android/mail/ui/bI;->aJW:Lcom/android/mail/providers/y;

    .line 881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bI;->aJY:Ljava/util/List;

    .line 883
    iput-object v2, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    .line 885
    iput-object v2, p0, Lcom/android/mail/ui/bI;->aJZ:Lcom/android/mail/c/b;

    .line 895
    iput-boolean p2, p0, Lcom/android/mail/ui/bI;->aJp:Z

    .line 896
    iget-object v0, p1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-interface {v0}, Lcom/android/mail/ui/as;->ye()Lcom/android/mail/ui/cM;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/mail/ui/bI;->aJp:Z

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJW:Lcom/android/mail/providers/y;

    invoke-virtual {v1, v0}, Lcom/android/mail/providers/y;->a(Lcom/android/mail/ui/cM;)Lcom/android/mail/ui/cN;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/bI;->aJX:Lcom/android/mail/ui/cN;

    .line 902
    :goto_0
    return-void

    .line 900
    :cond_0
    iput-object v2, p0, Lcom/android/mail/ui/bI;->aJX:Lcom/android/mail/ui/cN;

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1118
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1119
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v0, v0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v0, p3}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1126
    :cond_0
    return-void

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v0, v0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v0}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/mail/ui/bI;)Z
    .locals 1

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/android/mail/ui/bI;->zt()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/mail/ui/bI;)V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/android/mail/ui/bI;->zs()V

    return-void
.end method

.method private v(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 1022
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1026
    iget-object v3, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v3, v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1028
    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1029
    iget-object v3, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v3, v3, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v3, v0, v4}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1038
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1039
    return-object p1

    .line 1032
    :cond_2
    iget-object v3, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v3, v3, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v3, v0, v4}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private w(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1045
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1049
    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1, v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1050
    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1051
    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v1, v0, v3}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJZ:Lcom/android/mail/c/b;

    if-eqz v0, :cond_3

    .line 1063
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->e(Lcom/android/mail/ui/bB;)Lcom/android/mail/utils/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/utils/p;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1064
    invoke-static {}, Lcom/android/mail/ui/bB;->zr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Checking if all folder list contains %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {v0, v1, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1066
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJZ:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1067
    invoke-static {}, Lcom/android/mail/ui/bB;->zr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cursor for %s seems reasonably valid"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {v0, v1, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 1069
    :goto_1
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJZ:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1070
    iget-object v7, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v7, v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1071
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v7, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v7}, Lcom/android/mail/ui/bB;->e(Lcom/android/mail/ui/bB;)Lcom/android/mail/utils/p;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1072
    invoke-static {}, Lcom/android/mail/ui/bB;->zr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Found %s !"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {v0, v1, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v3

    .line 1076
    :goto_2
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJZ:Lcom/android/mail/c/b;

    invoke-virtual {v1}, Lcom/android/mail/c/b;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1081
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    const/16 v0, 0x1000

    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v1}, Lcom/android/mail/ui/bB;->k(Lcom/android/mail/ui/bB;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mail/providers/Folder;->O(II)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->e(Lcom/android/mail/ui/bB;)Lcom/android/mail/utils/p;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v0, v0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/O;->wD()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1085
    invoke-static {}, Lcom/android/mail/ui/bB;->zr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current folder (%1$s) has disappeared for %2$s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v2

    iget-object v6, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v6, v6, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-virtual {v6}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-static {v0, v1, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1087
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/bB;->n(Lcom/android/mail/providers/Account;)V

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v0, v2}, Lcom/android/mail/ui/bB;->a(Lcom/android/mail/ui/bB;Z)Z

    .line 1094
    const/4 v0, -0x1

    invoke-direct {p0, p1, v5, v0}, Lcom/android/mail/ui/bI;->a(Ljava/util/List;Ljava/util/List;I)V

    .line 1097
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bI;->x(Ljava/util/List;)V

    .line 1100
    const v0, 0x7f090163

    invoke-direct {p0, p1, v4, v0}, Lcom/android/mail/ui/bI;->a(Ljava/util/List;Ljava/util/List;I)V

    .line 1102
    return-object p1

    .line 1054
    :cond_5
    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    const/4 v6, 0x3

    invoke-static {v1, v0, v6}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_3
.end method

.method private x(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJX:Lcom/android/mail/ui/cN;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/ui/cN;->zW()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->l(Lcom/android/mail/ui/bB;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1140
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1141
    iget-object v3, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    invoke-static {v3, v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1142
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1147
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1148
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v0, v0, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    const v2, 0x7f090164

    invoke-static {v0, v2}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1151
    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v2, v2, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Folder;I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1154
    :cond_4
    return-void
.end method

.method private zs()V
    .locals 3

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->j(Lcom/android/mail/ui/bB;)Z

    move-result v1

    .line 982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/mail/ui/bI;->zt()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v2, v2, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->uj()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v2, v2, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v2}, Lcom/android/mail/d/d;->c(Lcom/android/mail/ui/as;)Lcom/android/mail/d/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/mail/ui/bI;->aJY:Ljava/util/List;

    .line 983
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->j(Lcom/android/mail/ui/bB;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 989
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0}, Lcom/android/mail/ui/bB;->b(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/O;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    invoke-interface {v0, v1}, Lcom/android/mail/ui/O;->m(Lcom/android/mail/providers/Account;)V

    .line 992
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/ui/bI;->notifyDataSetChanged()V

    .line 993
    return-void

    .line 982
    :cond_2
    iget-boolean v2, p0, Lcom/android/mail/ui/bI;->aJp:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/mail/ui/bI;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/mail/ui/bI;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private zt()Z
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lcom/android/mail/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    .line 1168
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zl()V

    .line 1169
    invoke-direct {p0}, Lcom/android/mail/ui/bI;->zs()V

    .line 1170
    return-void
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJW:Lcom/android/mail/providers/y;

    invoke-virtual {v0}, Lcom/android/mail/providers/y;->um()V

    .line 1202
    return-void
.end method

.method public final e(Lcom/android/mail/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/mail/ui/bI;->aJZ:Lcom/android/mail/c/b;

    .line 1180
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->zl()V

    .line 1181
    invoke-direct {p0}, Lcom/android/mail/ui/bI;->zs()V

    .line 1182
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1188
    const/4 v0, 0x0

    .line 1190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bI;->aJY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bI;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bI;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/d/d;

    invoke-virtual {v0}, Lcom/android/mail/d/d;->getType()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bI;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/d/d;

    .line 907
    invoke-virtual {v0, p2, p3}, Lcom/android/mail/d/d;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 908
    invoke-virtual {v0}, Lcom/android/mail/d/d;->getType()I

    move-result v3

    .line 909
    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->e(Lcom/android/mail/ui/bB;)Lcom/android/mail/utils/p;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v4}, Lcom/android/mail/ui/bB;->f(Lcom/android/mail/ui/bB;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/android/mail/d/d;->a(Lcom/android/mail/utils/p;I)Z

    move-result v4

    .line 911
    if-nez v3, :cond_0

    .line 912
    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->h(Lcom/android/mail/ui/bB;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->g(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bF;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->g(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bF;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/ui/bF;->getCount()I

    move-result v2

    :goto_0
    add-int/2addr v2, p1

    iget-object v6, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v6}, Lcom/android/mail/ui/bB;->h(Lcom/android/mail/ui/bB;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 918
    :cond_0
    if-nez v3, :cond_1

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->i(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/mail/d/d;->aqp:Lcom/android/mail/providers/Folder;

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAf:I

    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->i(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    iget v2, v2, Lcom/android/mail/providers/Folder;->aAf:I

    if-eq v0, v2, :cond_1

    move-object v0, v1

    .line 922
    check-cast v0, Lcom/android/mail/ui/FolderItemView;

    iget-object v2, p0, Lcom/android/mail/ui/bI;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v2}, Lcom/android/mail/ui/bB;->i(Lcom/android/mail/ui/bB;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    iget v2, v2, Lcom/android/mail/providers/Folder;->aAf:I

    invoke-virtual {v0, v2}, Lcom/android/mail/ui/FolderItemView;->cY(I)V

    .line 925
    :cond_1
    return-object v1

    .line 912
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 931
    const/16 v0, 0x8

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 946
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bI;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/d/d;

    .line 947
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/d/d;->ta()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zu()Lcom/android/mail/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/mail/ui/bI;->awW:Lcom/android/mail/c/b;

    return-object v0
.end method
