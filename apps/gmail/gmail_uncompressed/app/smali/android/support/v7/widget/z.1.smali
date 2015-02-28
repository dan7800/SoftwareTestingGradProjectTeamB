.class final Landroid/support/v7/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic vb:Z


# instance fields
.field DD:[Landroid/support/v7/widget/x;

.field DE:I

.field DF:[[Landroid/support/v7/widget/x;

.field DG:[I

.field final synthetic DH:[Landroid/support/v7/widget/x;

.field final synthetic DI:Landroid/support/v7/widget/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1321
    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/z;->vb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/support/v7/widget/y;[Landroid/support/v7/widget/x;)V
    .locals 2

    .prologue
    .line 1321
    iput-object p1, p0, Landroid/support/v7/widget/z;->DI:Landroid/support/v7/widget/y;

    iput-object p2, p0, Landroid/support/v7/widget/z;->DH:[Landroid/support/v7/widget/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    iget-object v0, p0, Landroid/support/v7/widget/z;->DH:[Landroid/support/v7/widget/x;

    array-length v0, v0

    new-array v0, v0, [Landroid/support/v7/widget/x;

    iput-object v0, p0, Landroid/support/v7/widget/z;->DD:[Landroid/support/v7/widget/x;

    .line 1323
    iget-object v0, p0, Landroid/support/v7/widget/z;->DD:[Landroid/support/v7/widget/x;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/z;->DE:I

    .line 1324
    iget-object v0, p0, Landroid/support/v7/widget/z;->DI:Landroid/support/v7/widget/y;

    iget-object v1, p0, Landroid/support/v7/widget/z;->DH:[Landroid/support/v7/widget/x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/y;->a([Landroid/support/v7/widget/x;)[[Landroid/support/v7/widget/x;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/z;->DF:[[Landroid/support/v7/widget/x;

    .line 1325
    iget-object v0, p0, Landroid/support/v7/widget/z;->DI:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/z;->DG:[I

    return-void
.end method

.method private ay(I)V
    .locals 7

    .prologue
    .line 1328
    iget-object v0, p0, Landroid/support/v7/widget/z;->DG:[I

    aget v0, v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1330
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/z;->DG:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 1331
    iget-object v0, p0, Landroid/support/v7/widget/z;->DF:[[Landroid/support/v7/widget/x;

    aget-object v1, v0, p1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1332
    iget-object v4, v3, Landroid/support/v7/widget/x;->Db:Landroid/support/v7/widget/B;

    iget v4, v4, Landroid/support/v7/widget/B;->max:I

    invoke-direct {p0, v4}, Landroid/support/v7/widget/z;->ay(I)V

    .line 1333
    iget-object v4, p0, Landroid/support/v7/widget/z;->DD:[Landroid/support/v7/widget/x;

    iget v5, p0, Landroid/support/v7/widget/z;->DE:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Landroid/support/v7/widget/z;->DE:I

    aput-object v3, v4, v5

    .line 1331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1335
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/z;->DG:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    goto :goto_0

    .line 1340
    :pswitch_1
    sget-boolean v0, Landroid/support/v7/widget/z;->vb:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final fC()[Landroid/support/v7/widget/x;
    .locals 2

    .prologue
    .line 1350
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/z;->DF:[[Landroid/support/v7/widget/x;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1351
    invoke-direct {p0, v0}, Landroid/support/v7/widget/z;->ay(I)V

    .line 1350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1353
    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/z;->vb:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/z;->DE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1354
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/z;->DD:[Landroid/support/v7/widget/x;

    return-object v0
.end method
