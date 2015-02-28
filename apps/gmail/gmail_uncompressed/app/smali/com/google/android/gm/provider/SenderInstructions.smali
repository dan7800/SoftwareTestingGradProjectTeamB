.class public final Lcom/google/android/gm/provider/SenderInstructions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private blB:I

.field private final bmT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/by;",
            ">;"
        }
    .end annotation
.end field

.field private final bmU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bmV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bmW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bmX:I

.field private bmY:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmU:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmV:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmW:Ljava/util/Set;

    .line 45
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    .line 46
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmX:I

    .line 47
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmY:I

    return-void
.end method


# virtual methods
.method public final HN()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmY:I

    return v0
.end method

.method public final HO()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/by;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    return-object v0
.end method

.method public final HP()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmX:I

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZZZI)V
    .locals 2

    .prologue
    .line 71
    if-eqz p3, :cond_1

    .line 72
    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmY:I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Lcom/google/android/gm/provider/by;

    invoke-direct {v0}, Lcom/google/android/gm/provider/by;-><init>()V

    .line 75
    if-eqz p5, :cond_2

    const-string p1, ""

    :cond_2
    iput-object p1, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    .line 76
    iput-boolean p4, v0, Lcom/google/android/gm/provider/by;->apC:Z

    .line 77
    sget-object v1, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnc:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v1, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 78
    iput p6, v0, Lcom/google/android/gm/provider/by;->priority:I

    .line 79
    iput-object p2, v0, Lcom/google/android/gm/provider/by;->aBF:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-boolean v1, v0, Lcom/google/android/gm/provider/by;->apC:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmW:Ljava/util/Set;

    iget-object v0, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final dI(I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/google/android/gm/provider/SenderInstructions;->blB:I

    .line 177
    return-void
.end method

.method protected final dW(I)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    iget-object v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmX:I

    const/4 v3, 0x5

    if-ge v0, v3, :cond_8

    .line 92
    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    add-int/lit8 v3, v3, -0x2

    sub-int v3, v0, v3

    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/by;

    iget-object v3, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v5, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bna:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmU:Ljava/util/Set;

    iget-object v5, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/google/android/gm/provider/by;->apC:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmV:Ljava/util/Set;

    iget-object v5, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmU:Ljava/util/Set;

    iget-object v5, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v0, Lcom/google/android/gm/provider/by;->apC:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmV:Ljava/util/Set;

    iget-object v5, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v3, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bna:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v3, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iget v3, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmX:I

    iput v3, v0, Lcom/google/android/gm/provider/by;->priority:I

    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmX:I

    goto :goto_0

    :cond_3
    move v0, v4

    .line 91
    goto :goto_1

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/by;

    iget-boolean v0, v0, Lcom/google/android/gm/provider/by;->apC:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v2

    :goto_3
    iput v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    move v3, v4

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :pswitch_1
    move v3, v1

    :goto_4
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/by;

    iget-boolean v0, v0, Lcom/google/android/gm/provider/by;->apC:Z

    if-nez v0, :cond_6

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_6
    iput v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnb:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v3, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    goto/16 :goto_0

    .line 96
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/by;

    .line 97
    iget-object v2, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v3, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnc:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmU:Ljava/util/Set;

    iget-object v3, v0, Lcom/google/android/gm/provider/by;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 99
    sget-object v2, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->bnb:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v2, v0, Lcom/google/android/gm/provider/by;->bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    goto :goto_5

    .line 102
    :cond_a
    return-void

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final dX(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmY:I

    .line 110
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmU:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 53
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmV:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 55
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->state:I

    .line 56
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmY:I

    .line 57
    iput v1, p0, Lcom/google/android/gm/provider/SenderInstructions;->bmX:I

    .line 58
    return-void
.end method

.method public final uH()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/gm/provider/SenderInstructions;->blB:I

    return v0
.end method
