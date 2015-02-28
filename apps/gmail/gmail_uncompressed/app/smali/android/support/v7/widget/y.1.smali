.class final Landroid/support/v7/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic vb:Z


# instance fields
.field private DA:Landroid/support/v7/widget/D;

.field private DB:Landroid/support/v7/widget/D;

.field final synthetic DC:Landroid/support/v7/widget/GridLayout;

.field public final De:Z

.field public Df:I

.field private Dg:I

.field Dh:Landroid/support/v7/widget/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/F;",
            "Landroid/support/v7/widget/A;",
            ">;"
        }
    .end annotation
.end field

.field public Di:Z

.field Dj:Landroid/support/v7/widget/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ">;"
        }
    .end annotation
.end field

.field public Dk:Z

.field Dl:Landroid/support/v7/widget/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ">;"
        }
    .end annotation
.end field

.field public Dm:Z

.field public Dn:[I

.field public Do:Z

.field public Dp:[I

.field public Dq:Z

.field public Dr:[Landroid/support/v7/widget/x;

.field public Ds:Z

.field public Dt:[I

.field public Du:Z

.field public Dv:Z

.field public Dw:Z

.field public Dx:[I

.field public Dy:[I

.field Dz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1091
    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/y;->vb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/support/v7/widget/GridLayout;Z)V
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1132
    iput-object p1, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    iput v0, p0, Landroid/support/v7/widget/y;->Df:I

    .line 1099
    iput v0, p0, Landroid/support/v7/widget/y;->Dg:I

    .line 1102
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Di:Z

    .line 1105
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Dk:Z

    .line 1108
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Dm:Z

    .line 1111
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Do:Z

    .line 1114
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Dq:Z

    .line 1117
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Ds:Z

    .line 1120
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Du:Z

    .line 1123
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Dw:Z

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dz:Z

    .line 1129
    new-instance v0, Landroid/support/v7/widget/D;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/D;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/y;->DA:Landroid/support/v7/widget/D;

    .line 1130
    new-instance v0, Landroid/support/v7/widget/D;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/D;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/y;->DB:Landroid/support/v7/widget/D;

    .line 1133
    iput-boolean p2, p0, Landroid/support/v7/widget/y;->De:Z

    .line 1134
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/GridLayout;ZB)V
    .locals 0

    .prologue
    .line 1091
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/y;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    return-void
.end method

.method private K(Z)Landroid/support/v7/widget/E;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    const-class v0, Landroid/support/v7/widget/B;

    const-class v1, Landroid/support/v7/widget/D;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v3

    .line 1224
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->fs()Landroid/support/v7/widget/E;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/E;->keys:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/F;

    .line 1225
    const/4 v1, 0x0

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1226
    if-eqz p1, :cond_0

    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    .line 1227
    :goto_1
    new-instance v5, Landroid/support/v7/widget/D;

    invoke-direct {v5}, Landroid/support/v7/widget/D;-><init>()V

    invoke-virtual {v3, v1, v5}, Landroid/support/v7/widget/GridLayout$Assoc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1226
    :cond_0
    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    invoke-virtual {v1}, Landroid/support/v7/widget/B;->fD()Landroid/support/v7/widget/B;

    move-result-object v1

    goto :goto_1

    .line 1229
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Assoc;->fq()Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method private L(Z)V
    .locals 8

    .prologue
    .line 1542
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/y;->Dn:[I

    .line 1543
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    .line 1544
    iget-object v1, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1545
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_0

    .line 1546
    iget-object v1, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-static {v4}, Landroid/support/v7/widget/GridLayout;->ah(Landroid/view/View;)Landroid/support/v7/widget/C;

    move-result-object v1

    .line 1547
    iget-boolean v5, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v5, :cond_2

    iget-object v1, v1, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 1548
    :goto_2
    iget-object v1, v1, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    .line 1549
    if-eqz p1, :cond_3

    iget v1, v1, Landroid/support/v7/widget/B;->DM:I

    .line 1550
    :goto_3
    aget v5, v0, v1

    iget-object v6, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-boolean v7, p0, Landroid/support/v7/widget/y;->De:Z

    invoke-virtual {v6, v4, v7, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v0, v1

    .line 1543
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1542
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dp:[I

    goto :goto_0

    .line 1547
    :cond_2
    iget-object v1, v1, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_2

    .line 1549
    :cond_3
    iget v1, v1, Landroid/support/v7/widget/B;->max:I

    goto :goto_3

    .line 1552
    :cond_4
    return-void
.end method

.method private a(Landroid/support/v7/widget/E;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1233
    iget-object v0, p1, Landroid/support/v7/widget/E;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/D;

    move v1, v2

    .line 1234
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1235
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/D;->reset()V

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1239
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->fs()Landroid/support/v7/widget/E;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/E;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/A;

    .line 1240
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 1241
    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/A;->I(Z)I

    move-result v3

    .line 1242
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/E;->az(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/D;

    .line 1244
    iget v4, v1, Landroid/support/v7/widget/D;->value:I

    if-eqz p2, :cond_1

    :goto_2
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/support/v7/widget/D;->value:I

    .line 1240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1244
    :cond_1
    neg-int v3, v3

    goto :goto_2

    .line 1246
    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/y;I)V
    .locals 4

    .prologue
    .line 1091
    invoke-direct {p0}, Landroid/support/v7/widget/y;->fy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fz()[I

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-object v2, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v7/widget/y;->De:Z

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/GridLayout;->e(Landroid/view/View;Z)I

    move-result v1

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/x;",
            ">;",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1295
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/widget/y;->a(Ljava/util/List;Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;Z)V

    .line 1296
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/x;",
            ">;",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1278
    invoke-virtual {p1}, Landroid/support/v7/widget/B;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    :goto_0
    return-void

    .line 1283
    :cond_0
    if-eqz p3, :cond_2

    .line 1284
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/x;

    .line 1285
    iget-object v0, v0, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    .line 1286
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1291
    :cond_2
    new-instance v0, Landroid/support/v7/widget/x;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/x;-><init>(Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Landroid/support/v7/widget/E;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/x;",
            ">;",
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1364
    move v1, v2

    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/E;->keys:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/B;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 1365
    iget-object v0, p1, Landroid/support/v7/widget/E;->keys:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/B;

    aget-object v3, v0, v1

    .line 1366
    iget-object v0, p1, Landroid/support/v7/widget/E;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/D;

    aget-object v0, v0, v1

    invoke-static {p0, v3, v0, v2}, Landroid/support/v7/widget/y;->a(Ljava/util/List;Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;Z)V

    .line 1364
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1368
    :cond_0
    return-void
.end method

.method private a([Landroid/support/v7/widget/x;[I)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1495
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    .line 1496
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    .line 1497
    const/4 v1, 0x0

    move v5, v4

    .line 1499
    :goto_1
    array-length v2, p1

    if-ge v5, v2, :cond_5

    .line 1500
    invoke-static {p2, v4}, Ljava/util/Arrays;->fill([II)V

    move v6, v4

    .line 1503
    :goto_2
    if-ge v6, v7, :cond_7

    .line 1505
    array-length v8, p1

    move v2, v4

    move v3, v4

    :goto_3
    if-ge v2, v8, :cond_1

    .line 1506
    aget-object v9, p1, v2

    invoke-static {p2, v9}, Landroid/support/v7/widget/y;->a([ILandroid/support/v7/widget/x;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 1505
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1495
    :cond_0
    const-string v0, "vertical"

    goto :goto_0

    .line 1508
    :cond_1
    if-nez v3, :cond_6

    .line 1509
    if-eqz v1, :cond_5

    .line 1510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    array-length v5, p1

    if-ge v4, v5, :cond_4

    aget-object v5, p1, v4

    aget-boolean v6, v1, v4

    if-eqz v6, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v6, v5, Landroid/support/v7/widget/x;->Dd:Z

    if-nez v6, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout;->CL:Landroid/util/Printer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " constraints: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/y;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are inconsistent; permanently removing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/y;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1539
    :cond_5
    return-void

    .line 1503
    :cond_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 1516
    :cond_7
    array-length v2, p1

    new-array v2, v2, [Z

    move v6, v4

    .line 1517
    :goto_5
    if-ge v6, v7, :cond_9

    .line 1518
    array-length v8, p1

    move v3, v4

    :goto_6
    if-ge v3, v8, :cond_8

    .line 1519
    aget-boolean v9, v2, v3

    aget-object v10, p1, v3

    invoke-static {p2, v10}, Landroid/support/v7/widget/y;->a([ILandroid/support/v7/widget/x;)Z

    move-result v10

    or-int/2addr v9, v10

    aput-boolean v9, v2, v3

    .line 1518
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1517
    :cond_8
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_5

    .line 1523
    :cond_9
    if-nez v5, :cond_a

    move-object v1, v2

    :cond_a
    move v3, v4

    .line 1527
    :goto_7
    array-length v6, p1

    if-ge v3, v6, :cond_b

    .line 1528
    aget-boolean v6, v2, v3

    if-eqz v6, :cond_c

    .line 1529
    aget-object v6, p1, v3

    .line 1531
    iget-object v8, v6, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    iget v8, v8, Landroid/support/v7/widget/B;->DM:I

    iget-object v9, v6, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    iget v9, v9, Landroid/support/v7/widget/B;->max:I

    if-lt v8, v9, :cond_c

    .line 1532
    iput-boolean v4, v6, Landroid/support/v7/widget/x;->Dd:Z

    .line 1499
    :cond_b
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    .line 1527
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method private static a([ILandroid/support/v7/widget/x;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1418
    iget-boolean v1, p1, Landroid/support/v7/widget/x;->Dd:Z

    if-nez v1, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return v0

    .line 1421
    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    .line 1422
    iget v2, v1, Landroid/support/v7/widget/B;->DM:I

    .line 1423
    iget v1, v1, Landroid/support/v7/widget/B;->max:I

    .line 1424
    iget-object v3, p1, Landroid/support/v7/widget/x;->Dc:Landroid/support/v7/widget/D;

    iget v3, v3, Landroid/support/v7/widget/D;->value:I

    .line 1425
    aget v2, p0, v2

    add-int/2addr v2, v3

    .line 1426
    aget v3, p0, v1

    if-le v2, v3, :cond_0

    .line 1427
    aput v2, p0, v1

    .line 1428
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/util/List;)[Landroid/support/v7/widget/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/x;",
            ">;)[",
            "Landroid/support/v7/widget/x;"
        }
    .end annotation

    .prologue
    .line 1360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v7/widget/x;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/x;

    new-instance v1, Landroid/support/v7/widget/z;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/z;-><init>(Landroid/support/v7/widget/y;[Landroid/support/v7/widget/x;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/z;->fC()[Landroid/support/v7/widget/x;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/x;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1438
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v0, :cond_0

    const-string v0, "x"

    move-object v1, v0

    .line 1439
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1440
    const/4 v0, 0x1

    .line 1441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/x;

    .line 1442
    if-eqz v2, :cond_1

    .line 1443
    const/4 v2, 0x0

    .line 1447
    :goto_2
    iget-object v5, v0, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    iget v5, v5, Landroid/support/v7/widget/B;->DM:I

    .line 1448
    iget-object v6, v0, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    iget v6, v6, Landroid/support/v7/widget/B;->max:I

    .line 1449
    iget-object v0, v0, Landroid/support/v7/widget/x;->Dc:Landroid/support/v7/widget/D;

    iget v0, v0, Landroid/support/v7/widget/D;->value:I

    .line 1450
    if-ge v5, v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1438
    :cond_0
    const-string v0, "y"

    move-object v1, v0

    goto :goto_0

    .line 1445
    :cond_1
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2

    .line 1450
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-int v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1455
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d([I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1579
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dr:[Landroid/support/v7/widget/x;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/support/v7/widget/y;->ft()Landroid/support/v7/widget/E;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v7/widget/y;->a(Ljava/util/List;Landroid/support/v7/widget/E;)V

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fu()Landroid/support/v7/widget/E;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/support/v7/widget/y;->a(Ljava/util/List;Landroid/support/v7/widget/E;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Dz:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    new-instance v4, Landroid/support/v7/widget/B;

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v4, v0, v5}, Landroid/support/v7/widget/B;-><init>(II)V

    new-instance v5, Landroid/support/v7/widget/D;

    invoke-direct {v5, v1}, Landroid/support/v7/widget/D;-><init>(I)V

    invoke-static {v2, v4, v5}, Landroid/support/v7/widget/y;->a(Ljava/util/List;Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v0

    new-instance v4, Landroid/support/v7/widget/B;

    invoke-direct {v4, v1, v0}, Landroid/support/v7/widget/B;-><init>(II)V

    iget-object v5, p0, Landroid/support/v7/widget/y;->DA:Landroid/support/v7/widget/D;

    invoke-static {v2, v4, v5, v1}, Landroid/support/v7/widget/y;->a(Ljava/util/List;Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;Z)V

    new-instance v4, Landroid/support/v7/widget/B;

    invoke-direct {v4, v0, v1}, Landroid/support/v7/widget/B;-><init>(II)V

    iget-object v0, p0, Landroid/support/v7/widget/y;->DB:Landroid/support/v7/widget/D;

    invoke-static {v3, v4, v0, v1}, Landroid/support/v7/widget/y;->a(Ljava/util/List;Landroid/support/v7/widget/B;Landroid/support/v7/widget/D;Z)V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/y;->c(Ljava/util/List;)[Landroid/support/v7/widget/x;

    move-result-object v0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/y;->c(Ljava/util/List;)[Landroid/support/v7/widget/x;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/x;

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dr:[Landroid/support/v7/widget/x;

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Ds:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fv()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Ds:Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dr:[Landroid/support/v7/widget/x;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/y;->a([Landroid/support/v7/widget/x;[I)V

    .line 1580
    return-void
.end method

.method private fA()[I
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dy:[I

    if-nez v0, :cond_0

    .line 1616
    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dy:[I

    .line 1618
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dy:[I

    return-object v0
.end method

.method private fr()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v1, -0x80000000

    .line 1152
    iget v0, p0, Landroid/support/v7/widget/y;->Dg:I

    if-ne v0, v1, :cond_2

    .line 1153
    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v6

    move v3, v4

    move v2, v5

    :goto_0
    if-ge v3, v6, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->ah(Landroid/view/View;)Landroid/support/v7/widget/C;

    move-result-object v0

    iget-boolean v7, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v7, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    :goto_1
    iget-object v0, v0, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    iget v7, v0, Landroid/support/v7/widget/B;->DM:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v7, v0, Landroid/support/v7/widget/B;->max:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/widget/B;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/y;->Dg:I

    .line 1155
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/y;->Dg:I

    return v0

    :cond_3
    move v0, v2

    .line 1153
    goto :goto_2
.end method

.method private ft()Landroid/support/v7/widget/E;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1249
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dj:Landroid/support/v7/widget/E;

    if-nez v0, :cond_0

    .line 1250
    invoke-direct {p0, v1}, Landroid/support/v7/widget/y;->K(Z)Landroid/support/v7/widget/E;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dj:Landroid/support/v7/widget/E;

    .line 1252
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Dk:Z

    if-nez v0, :cond_1

    .line 1253
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dj:Landroid/support/v7/widget/E;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/E;Z)V

    .line 1254
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Dk:Z

    .line 1256
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dj:Landroid/support/v7/widget/E;

    return-object v0
.end method

.method private fu()Landroid/support/v7/widget/E;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/B;",
            "Landroid/support/v7/widget/D;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1260
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dl:Landroid/support/v7/widget/E;

    if-nez v0, :cond_0

    .line 1261
    invoke-direct {p0, v1}, Landroid/support/v7/widget/y;->K(Z)Landroid/support/v7/widget/E;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dl:Landroid/support/v7/widget/E;

    .line 1263
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Dm:Z

    if-nez v0, :cond_1

    .line 1264
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dl:Landroid/support/v7/widget/E;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/E;Z)V

    .line 1265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dm:Z

    .line 1267
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dl:Landroid/support/v7/widget/E;

    return-object v0
.end method

.method private fv()V
    .locals 0

    .prologue
    .line 1402
    invoke-direct {p0}, Landroid/support/v7/widget/y;->ft()Landroid/support/v7/widget/E;

    .line 1403
    invoke-direct {p0}, Landroid/support/v7/widget/y;->fu()Landroid/support/v7/widget/E;

    .line 1404
    return-void
.end method

.method private fy()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1594
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Dw:Z

    if-nez v0, :cond_0

    .line 1595
    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->ah(Landroid/view/View;)Landroid/support/v7/widget/C;

    move-result-object v0

    iget-boolean v5, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v5, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    :goto_1
    iget v0, v0, Landroid/support/v7/widget/F;->weight:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dv:Z

    .line 1596
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Dw:Z

    .line 1598
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Dv:Z

    return v0

    .line 1595
    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private fz()[I
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dx:[I

    if-nez v0, :cond_0

    .line 1603
    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dx:[I

    .line 1605
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dx:[I

    return-object v0
.end method

.method private t(II)V
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Landroid/support/v7/widget/y;->DA:Landroid/support/v7/widget/D;

    iput p1, v0, Landroid/support/v7/widget/D;->value:I

    .line 1701
    iget-object v0, p0, Landroid/support/v7/widget/y;->DB:Landroid/support/v7/widget/D;

    neg-int v1, p2

    iput v1, v0, Landroid/support/v7/widget/D;->value:I

    .line 1702
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Du:Z

    .line 1703
    return-void
.end method

.method private u(II)I
    .locals 2

    .prologue
    .line 1706
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/y;->t(II)V

    .line 1707
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->fB()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public final J(Z)V
    .locals 0

    .prologue
    .line 1176
    iput-boolean p1, p0, Landroid/support/v7/widget/y;->Dz:Z

    .line 1177
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->fk()V

    .line 1178
    return-void
.end method

.method final a([Landroid/support/v7/widget/x;)[[Landroid/support/v7/widget/x;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1301
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1302
    new-array v2, v0, [[Landroid/support/v7/widget/x;

    .line 1303
    new-array v3, v0, [I

    .line 1304
    array-length v4, p1

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p1, v0

    .line 1305
    iget-object v5, v5, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    iget v5, v5, Landroid/support/v7/widget/B;->DM:I

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 1304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1307
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1308
    aget v4, v3, v0

    new-array v4, v4, [Landroid/support/v7/widget/x;

    aput-object v4, v2, v0

    .line 1307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1311
    :cond_1
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1312
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    .line 1313
    iget-object v5, v4, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    iget v5, v5, Landroid/support/v7/widget/B;->DM:I

    .line 1314
    aget-object v6, v2, v5

    aget v7, v3, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v3, v5

    aput-object v4, v6, v7

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1317
    :cond_2
    return-object v2
.end method

.method public final av(I)V
    .locals 2

    .prologue
    .line 1163
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fr()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v0, :cond_1

    const-string v0, "column"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->m(Ljava/lang/String;)V

    .line 1168
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/y;->Df:I

    .line 1169
    return-void

    .line 1164
    :cond_1
    const-string v0, "row"

    goto :goto_0
.end method

.method public final aw(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1711
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1712
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1713
    sparse-switch v1, :sswitch_data_0

    .line 1724
    sget-boolean v1, Landroid/support/v7/widget/y;->vb:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1715
    :sswitch_0
    const v1, 0x186a0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/y;->u(II)I

    move-result v0

    .line 1725
    :cond_0
    :goto_0
    return v0

    .line 1718
    :sswitch_1
    invoke-direct {p0, v2, v2}, Landroid/support/v7/widget/y;->u(II)I

    move-result v0

    goto :goto_0

    .line 1721
    :sswitch_2
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/y;->u(II)I

    move-result v0

    goto :goto_0

    .line 1713
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public final ax(I)V
    .locals 0

    .prologue
    .line 1731
    invoke-direct {p0, p1, p1}, Landroid/support/v7/widget/y;->t(II)V

    .line 1732
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->fB()[I

    .line 1733
    return-void
.end method

.method public final fB()[I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1681
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dt:[I

    if-nez v0, :cond_0

    .line 1682
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1683
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dt:[I

    .line 1685
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Du:Z

    if-nez v0, :cond_7

    .line 1686
    iget-object v6, p0, Landroid/support/v7/widget/y;->Dt:[I

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v6}, Landroid/support/v7/widget/y;->d([I)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Dz:Z

    if-nez v0, :cond_6

    aget v1, v6, v3

    array-length v2, v6

    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_6

    aget v3, v6, v0

    sub-int/2addr v3, v1

    aput v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/y;->fA()[I

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, v6}, Landroid/support/v7/widget/y;->d([I)V

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v7

    move v4, v3

    move v1, v5

    move v2, v3

    :goto_2
    if-ge v4, v7, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-static {v8}, Landroid/support/v7/widget/GridLayout;->ah(Landroid/view/View;)Landroid/support/v7/widget/C;

    move-result-object v0

    iget-boolean v9, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v9, :cond_2

    iget-object v0, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    :goto_3
    iget v0, v0, Landroid/support/v7/widget/F;->weight:F

    cmpl-float v9, v0, v5

    if-eqz v9, :cond_9

    iget-object v9, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-boolean v9, p0, Landroid/support/v7/widget/y;->De:Z

    invoke-static {v8, v9}, Landroid/support/v7/widget/GridLayout;->f(Landroid/view/View;Z)I

    move-result v8

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fz()[I

    move-result-object v9

    aget v9, v9, v4

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    add-float/2addr v0, v1

    move v1, v2

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v7

    move v4, v3

    :goto_5
    if-ge v4, v7, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->ah(Landroid/view/View;)Landroid/support/v7/widget/C;

    move-result-object v0

    iget-boolean v8, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v8, :cond_4

    iget-object v0, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    :goto_6
    iget v0, v0, Landroid/support/v7/widget/F;->weight:F

    cmpl-float v8, v0, v5

    if-eqz v8, :cond_8

    int-to-float v8, v2

    mul-float/2addr v8, v0

    div-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Landroid/support/v7/widget/y;->Dy:[I

    aput v8, v9, v4

    sub-int/2addr v2, v8

    sub-float v0, v1, v0

    move v1, v2

    :goto_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_5

    :cond_4
    iget-object v0, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_6

    :cond_5
    iput-boolean v3, p0, Landroid/support/v7/widget/y;->Ds:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/y;->Dk:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/y;->Dm:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/y;->Di:Z

    invoke-direct {p0, v6}, Landroid/support/v7/widget/y;->d([I)V

    goto/16 :goto_0

    .line 1687
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Du:Z

    .line 1689
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dt:[I

    return-object v0

    :cond_8
    move v0, v1

    move v1, v2

    goto :goto_7

    :cond_9
    move v0, v1

    move v1, v2

    goto :goto_4
.end method

.method public final fk()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1736
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/y;->Dg:I

    .line 1738
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dh:Landroid/support/v7/widget/E;

    .line 1739
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dj:Landroid/support/v7/widget/E;

    .line 1740
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dl:Landroid/support/v7/widget/E;

    .line 1742
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dn:[I

    .line 1743
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dp:[I

    .line 1744
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dr:[Landroid/support/v7/widget/x;

    .line 1746
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dt:[I

    .line 1748
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dx:[I

    .line 1749
    iput-object v1, p0, Landroid/support/v7/widget/y;->Dy:[I

    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dw:Z

    .line 1752
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->fl()V

    .line 1753
    return-void
.end method

.method public final fl()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1756
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Di:Z

    .line 1757
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dk:Z

    .line 1758
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dm:Z

    .line 1760
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Do:Z

    .line 1761
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dq:Z

    .line 1762
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Ds:Z

    .line 1764
    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Du:Z

    .line 1765
    return-void
.end method

.method public final fs()Landroid/support/v7/widget/E;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/E",
            "<",
            "Landroid/support/v7/widget/F;",
            "Landroid/support/v7/widget/A;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1211
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dh:Landroid/support/v7/widget/E;

    if-nez v0, :cond_2

    .line 1212
    const-class v0, Landroid/support/v7/widget/F;

    const-class v1, Landroid/support/v7/widget/A;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$Assoc;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->ah(Landroid/view/View;)Landroid/support/v7/widget/C;

    move-result-object v0

    iget-boolean v5, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-object v5, v0, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    iget-boolean v6, p0, Landroid/support/v7/widget/y;->De:Z

    invoke-static {v5, v6}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/w;Z)Landroid/support/v7/widget/w;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/w;->fp()Landroid/support/v7/widget/A;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/support/v7/widget/GridLayout$Assoc;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Assoc;->fq()Landroid/support/v7/widget/E;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dh:Landroid/support/v7/widget/E;

    .line 1214
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Di:Z

    if-nez v0, :cond_7

    .line 1215
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dh:Landroid/support/v7/widget/E;

    iget-object v0, v0, Landroid/support/v7/widget/E;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/A;

    move v1, v2

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/A;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v7

    move v6, v2

    :goto_3
    if-ge v6, v7, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    invoke-static {v2}, Landroid/support/v7/widget/GridLayout;->ah(Landroid/view/View;)Landroid/support/v7/widget/C;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/y;->De:Z

    if-eqz v1, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    :goto_4
    iget v0, v3, Landroid/support/v7/widget/F;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    iget-boolean v1, p0, Landroid/support/v7/widget/y;->De:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/GridLayout;->e(Landroid/view/View;Z)I

    move-result v5

    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dh:Landroid/support/v7/widget/E;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/E;->az(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/A;

    iget-object v1, p0, Landroid/support/v7/widget/y;->DC:Landroid/support/v7/widget/GridLayout;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/A;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/F;Landroid/support/v7/widget/y;I)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    :cond_4
    iget-object v3, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/y;->fz()[I

    move-result-object v0

    aget v0, v0, v6

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fA()[I

    move-result-object v1

    aget v1, v1, v6

    add-int v5, v0, v1

    goto :goto_5

    .line 1216
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Di:Z

    .line 1218
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dh:Landroid/support/v7/widget/E;

    return-object v0
.end method

.method public final fw()[I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1557
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dn:[I

    if-nez v0, :cond_0

    .line 1558
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dn:[I

    .line 1560
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Do:Z

    if-nez v0, :cond_1

    .line 1561
    invoke-direct {p0, v1}, Landroid/support/v7/widget/y;->L(Z)V

    .line 1562
    iput-boolean v1, p0, Landroid/support/v7/widget/y;->Do:Z

    .line 1564
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dn:[I

    return-object v0
.end method

.method public final fx()[I
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dp:[I

    if-nez v0, :cond_0

    .line 1569
    invoke-virtual {p0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/y;->Dp:[I

    .line 1571
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Dq:Z

    if-nez v0, :cond_1

    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/y;->L(Z)V

    .line 1573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Dq:Z

    .line 1575
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/y;->Dp:[I

    return-object v0
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 1159
    iget v0, p0, Landroid/support/v7/widget/y;->Df:I

    invoke-direct {p0}, Landroid/support/v7/widget/y;->fr()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
