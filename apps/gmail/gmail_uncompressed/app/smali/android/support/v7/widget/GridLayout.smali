.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final CA:I

.field private static final CB:I

.field private static final CC:I

.field private static final CD:I

.field private static final CE:I

.field static final CM:Landroid/support/v7/widget/w;

.field private static final CN:Landroid/support/v7/widget/w;

.field private static final CO:Landroid/support/v7/widget/w;

.field public static final CP:Landroid/support/v7/widget/w;

.field public static final CQ:Landroid/support/v7/widget/w;

.field public static final CR:Landroid/support/v7/widget/w;

.field public static final CS:Landroid/support/v7/widget/w;

.field public static final CT:Landroid/support/v7/widget/w;

.field public static final CU:Landroid/support/v7/widget/w;

.field public static final CV:Landroid/support/v7/widget/w;

.field public static final CW:Landroid/support/v7/widget/w;

.field public static final CX:Landroid/support/v7/widget/w;

.field static final Cw:Landroid/util/Printer;

.field static final Cx:Landroid/util/Printer;

.field private static final Cy:I

.field private static final Cz:I


# instance fields
.field final CF:Landroid/support/v7/widget/y;

.field final CG:Landroid/support/v7/widget/y;

.field CH:Z

.field CI:I

.field CJ:I

.field CK:I

.field CL:Landroid/util/Printer;

.field fI:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x3

    const-class v2, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->Cw:Landroid/util/Printer;

    .line 221
    new-instance v0, Landroid/support/v7/widget/n;

    invoke-direct {v0}, Landroid/support/v7/widget/n;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->Cx:Landroid/util/Printer;

    .line 237
    sget v0, Landroid/support/v7/b/c;->tX:I

    sput v0, Landroid/support/v7/widget/GridLayout;->Cy:I

    .line 238
    sget v0, Landroid/support/v7/b/c;->tY:I

    sput v0, Landroid/support/v7/widget/GridLayout;->Cz:I

    .line 239
    sget v0, Landroid/support/v7/b/c;->tV:I

    sput v0, Landroid/support/v7/widget/GridLayout;->CA:I

    .line 240
    sget v0, Landroid/support/v7/b/c;->ua:I

    sput v0, Landroid/support/v7/widget/GridLayout;->CB:I

    .line 241
    sget v0, Landroid/support/v7/b/c;->tU:I

    sput v0, Landroid/support/v7/widget/GridLayout;->CC:I

    .line 242
    sget v0, Landroid/support/v7/b/c;->tZ:I

    sput v0, Landroid/support/v7/widget/GridLayout;->CD:I

    .line 243
    sget v0, Landroid/support/v7/b/c;->tW:I

    sput v0, Landroid/support/v7/widget/GridLayout;->CE:I

    .line 2639
    new-instance v0, Landroid/support/v7/widget/o;

    invoke-direct {v0}, Landroid/support/v7/widget/o;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CM:Landroid/support/v7/widget/w;

    .line 2655
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0}, Landroid/support/v7/widget/p;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CN:Landroid/support/v7/widget/w;

    .line 2671
    new-instance v0, Landroid/support/v7/widget/q;

    invoke-direct {v0}, Landroid/support/v7/widget/q;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CO:Landroid/support/v7/widget/w;

    .line 2687
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CN:Landroid/support/v7/widget/w;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CP:Landroid/support/v7/widget/w;

    .line 2693
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CO:Landroid/support/v7/widget/w;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CQ:Landroid/support/v7/widget/w;

    .line 2699
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CN:Landroid/support/v7/widget/w;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CR:Landroid/support/v7/widget/w;

    .line 2705
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CO:Landroid/support/v7/widget/w;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CS:Landroid/support/v7/widget/w;

    .line 2729
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CR:Landroid/support/v7/widget/w;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->CS:Landroid/support/v7/widget/w;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/w;Landroid/support/v7/widget/w;)Landroid/support/v7/widget/w;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CT:Landroid/support/v7/widget/w;

    .line 2735
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CS:Landroid/support/v7/widget/w;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->CR:Landroid/support/v7/widget/w;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/w;Landroid/support/v7/widget/w;)Landroid/support/v7/widget/w;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CU:Landroid/support/v7/widget/w;

    .line 2742
    new-instance v0, Landroid/support/v7/widget/s;

    invoke-direct {v0}, Landroid/support/v7/widget/s;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CV:Landroid/support/v7/widget/w;

    .line 2761
    new-instance v0, Landroid/support/v7/widget/t;

    invoke-direct {v0}, Landroid/support/v7/widget/t;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CW:Landroid/support/v7/widget/w;

    .line 2817
    new-instance v0, Landroid/support/v7/widget/v;

    invoke-direct {v0}, Landroid/support/v7/widget/v;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CX:Landroid/support/v7/widget/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    new-instance v0, Landroid/support/v7/widget/y;

    invoke-direct {v0, p0, v2, v1}, Landroid/support/v7/widget/y;-><init>(Landroid/support/v7/widget/GridLayout;ZB)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    .line 248
    new-instance v0, Landroid/support/v7/widget/y;

    invoke-direct {v0, p0, v1, v1}, Landroid/support/v7/widget/y;-><init>(Landroid/support/v7/widget/GridLayout;ZB)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    .line 249
    iput v1, p0, Landroid/support/v7/widget/GridLayout;->fI:I

    .line 250
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout;->CH:Z

    .line 251
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->CI:I

    .line 253
    iput v1, p0, Landroid/support/v7/widget/GridLayout;->CK:I

    .line 254
    sget-object v0, Landroid/support/v7/widget/GridLayout;->Cw:Landroid/util/Printer;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->CL:Landroid/util/Printer;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/b;->tT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->CJ:I

    .line 264
    sget-object v0, Landroid/support/v7/b/c;->rS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 266
    :try_start_0
    sget v0, Landroid/support/v7/widget/GridLayout;->Cz:I

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/y;->av(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fk()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 267
    sget v0, Landroid/support/v7/widget/GridLayout;->CA:I

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/y;->av(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fk()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 268
    sget v0, Landroid/support/v7/widget/GridLayout;->Cy:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/GridLayout;->fI:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->fI:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fk()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 269
    :cond_0
    sget v0, Landroid/support/v7/widget/GridLayout;->CB:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->CH:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 270
    sget v0, Landroid/support/v7/widget/GridLayout;->CC:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->CI:I

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 271
    sget v0, Landroid/support/v7/widget/GridLayout;->CD:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/y;->J(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fk()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 272
    sget v0, Landroid/support/v7/widget/GridLayout;->CE:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/y;->J(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fk()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static a(IILandroid/support/v7/widget/w;F)Landroid/support/v7/widget/F;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2479
    new-instance v0, Landroid/support/v7/widget/F;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/F;-><init>(ZIILandroid/support/v7/widget/w;FB)V

    return-object v0

    :cond_0
    move v1, v6

    goto :goto_0
.end method

.method private static a(Landroid/support/v7/widget/w;Landroid/support/v7/widget/w;)Landroid/support/v7/widget/w;
    .locals 1

    .prologue
    .line 2708
    new-instance v0, Landroid/support/v7/widget/r;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/w;Landroid/support/v7/widget/w;)V

    return-object v0
.end method

.method static a(Landroid/support/v7/widget/w;Z)Landroid/support/v7/widget/w;
    .locals 1

    .prologue
    .line 987
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CM:Landroid/support/v7/widget/w;

    if-eq p0, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Landroid/support/v7/widget/GridLayout;->CR:Landroid/support/v7/widget/w;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/support/v7/widget/GridLayout;->CW:Landroid/support/v7/widget/w;

    goto :goto_0
.end method

.method private static a(Landroid/support/v7/widget/C;IIII)V
    .locals 2

    .prologue
    .line 706
    new-instance v0, Landroid/support/v7/widget/B;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/B;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->a(Landroid/support/v7/widget/B;)V

    .line 707
    new-instance v0, Landroid/support/v7/widget/B;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/B;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/C;->b(Landroid/support/v7/widget/B;)V

    .line 708
    return-void
.end method

.method private a(Landroid/support/v7/widget/C;Z)V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 804
    if-eqz p2, :cond_3

    const-string v0, "column"

    move-object v1, v0

    .line 805
    :goto_0
    if-eqz p2, :cond_4

    iget-object v0, p1, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 806
    :goto_1
    iget-object v2, v0, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    .line 807
    iget v0, v2, Landroid/support/v7/widget/B;->DM:I

    if-eq v0, v4, :cond_0

    iget v0, v2, Landroid/support/v7/widget/B;->DM:I

    if-gez v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " indices must be positive"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->l(Ljava/lang/String;)V

    .line 810
    :cond_0
    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    .line 811
    :goto_2
    iget v0, v0, Landroid/support/v7/widget/y;->Df:I

    .line 812
    if-eq v0, v4, :cond_2

    .line 813
    iget v3, v2, Landroid/support/v7/widget/B;->max:I

    if-le v3, v0, :cond_1

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/GridLayout;->l(Ljava/lang/String;)V

    .line 817
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/B;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " span mustn\'t exceed the "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->l(Ljava/lang/String;)V

    .line 821
    :cond_2
    return-void

    .line 804
    :cond_3
    const-string v0, "row"

    move-object v1, v0

    goto :goto_0

    .line 805
    :cond_4
    iget-object v0, p1, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_1

    .line 810
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    goto :goto_2
.end method

.method static a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 607
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    return-object v0
.end method

.method static ah(Landroid/view/View;)Landroid/support/v7/widget/C;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/C;

    return-object v0
.end method

.method static au(I)Z
    .locals 1

    .prologue
    .line 2835
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;ZZ)I
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->CI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 673
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v0

    .line 680
    :goto_0
    return v0

    .line 675
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    .line 676
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->fw()[I

    move-result-object v0

    move-object v1, v0

    .line 677
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/C;

    .line 678
    if-eqz p2, :cond_3

    iget-object v0, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 679
    :goto_3
    if-eqz p3, :cond_4

    iget-object v0, v0, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    iget v0, v0, Landroid/support/v7/widget/B;->DM:I

    .line 680
    :goto_4
    aget v0, v1, v0

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    goto :goto_1

    .line 676
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/y;->fx()[I

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 678
    :cond_3
    iget-object v0, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_3

    .line 679
    :cond_4
    iget-object v0, v0, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    iget v0, v0, Landroid/support/v7/widget/B;->max:I

    goto :goto_4
.end method

.method private b(IIZ)V
    .locals 13

    .prologue
    .line 899
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v12

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_6

    .line 900
    invoke-virtual {p0, v11}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 901
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 902
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/C;

    .line 903
    if-eqz p3, :cond_1

    .line 904
    iget v4, v0, Landroid/support/v7/widget/C;->width:I

    iget v5, v0, Landroid/support/v7/widget/C;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;IIII)V

    .line 905
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-static {v0, v11}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/y;I)V

    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-static {v0, v11}, Landroid/support/v7/widget/y;->a(Landroid/support/v7/widget/y;I)V

    .line 899
    :cond_0
    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 908
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/GridLayout;->fI:I

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 909
    :goto_2
    if-eqz v3, :cond_3

    iget-object v2, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 910
    :goto_3
    iget-object v4, v2, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    sget-object v5, Landroid/support/v7/widget/GridLayout;->CX:Landroid/support/v7/widget/w;

    if-ne v4, v5, :cond_0

    .line 911
    iget-object v4, v2, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    .line 912
    if-eqz v3, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    .line 913
    :goto_4
    invoke-virtual {v2}, Landroid/support/v7/widget/y;->fB()[I

    move-result-object v2

    .line 914
    iget v5, v4, Landroid/support/v7/widget/B;->max:I

    aget v5, v2, v5

    iget v4, v4, Landroid/support/v7/widget/B;->DM:I

    aget v2, v2, v4

    sub-int v2, v5, v2

    .line 915
    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;Z)I

    move-result v4

    sub-int v4, v2, v4

    .line 916
    if-eqz v3, :cond_5

    .line 917
    iget v5, v0, Landroid/support/v7/widget/C;->height:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;IIII)V

    goto :goto_1

    .line 908
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    .line 909
    :cond_3
    iget-object v2, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_3

    .line 912
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    goto :goto_4

    .line 919
    :cond_5
    iget v9, v0, Landroid/support/v7/widget/C;->width:I

    move-object v5, p0

    move-object v6, v1

    move v7, p1

    move v8, p2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;IIII)V

    goto :goto_1

    .line 924
    :cond_6
    return-void
.end method

.method private c(Landroid/view/View;Z)I
    .locals 2

    .prologue
    .line 685
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static c([I)I
    .locals 4

    .prologue
    .line 597
    const/4 v1, -0x1

    .line 598
    const/4 v0, 0x0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 599
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_0
    return v1
.end method

.method private c(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 890
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;Z)I

    move-result v0

    invoke-static {p2, v0, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 892
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;Z)I

    move-result v1

    invoke-static {p3, v1, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 894
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 895
    return-void
.end method

.method private static d(Landroid/view/View;Z)I
    .locals 1

    .prologue
    .line 970
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic f(Landroid/view/View;Z)I
    .locals 1

    .prologue
    .line 157
    invoke-static {p0, p1}, Landroid/support/v7/widget/GridLayout;->d(Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static f(IZ)Landroid/support/v7/widget/w;
    .locals 2

    .prologue
    .line 613
    if-eqz p1, :cond_0

    const/4 v0, 0x7

    move v1, v0

    .line 614
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 615
    :goto_1
    and-int/2addr v1, p0

    shr-int v0, v1, v0

    .line 616
    sparse-switch v0, :sswitch_data_0

    .line 630
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CM:Landroid/support/v7/widget/w;

    :goto_2
    return-object v0

    .line 613
    :cond_0
    const/16 v0, 0x70

    move v1, v0

    goto :goto_0

    .line 614
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 618
    :sswitch_0
    if-eqz p1, :cond_2

    sget-object v0, Landroid/support/v7/widget/GridLayout;->CT:Landroid/support/v7/widget/w;

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CP:Landroid/support/v7/widget/w;

    goto :goto_2

    .line 620
    :sswitch_1
    if-eqz p1, :cond_3

    sget-object v0, Landroid/support/v7/widget/GridLayout;->CU:Landroid/support/v7/widget/w;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CQ:Landroid/support/v7/widget/w;

    goto :goto_2

    .line 622
    :sswitch_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CX:Landroid/support/v7/widget/w;

    goto :goto_2

    .line 624
    :sswitch_3
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CV:Landroid/support/v7/widget/w;

    goto :goto_2

    .line 626
    :sswitch_4
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CR:Landroid/support/v7/widget/w;

    goto :goto_2

    .line 628
    :sswitch_5
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CS:Landroid/support/v7/widget/w;

    goto :goto_2

    .line 616
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private fj()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 668
    invoke-static {p0}, Landroid/support/v4/view/ad;->m(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fk()V
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->CK:I

    .line 780
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->fk()V

    .line 781
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->fk()V

    .line 783
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fl()V

    .line 784
    return-void
.end method

.method private fl()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->fl()V

    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->fl()V

    .line 793
    :cond_0
    return-void
.end method

.method private fm()I
    .locals 6

    .prologue
    .line 863
    const/4 v1, 0x1

    .line 864
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 865
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 866
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 867
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/C;

    .line 868
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 864
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 870
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private fn()V
    .locals 14

    .prologue
    .line 874
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->CK:I

    if-nez v0, :cond_13

    .line 875
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->fI:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    :goto_1
    if-eqz v7, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    :goto_2
    iget v1, v0, Landroid/support/v7/widget/y;->Df:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    iget v0, v0, Landroid/support/v7/widget/y;->Df:I

    move v1, v0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v8, v1, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v9

    move v6, v0

    :goto_4
    if-ge v6, v9, :cond_11

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/C;

    if-eqz v7, :cond_5

    iget-object v2, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    :goto_5
    iget-object v5, v2, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    iget-boolean v10, v2, Landroid/support/v7/widget/F;->Ef:Z

    invoke-virtual {v5}, Landroid/support/v7/widget/B;->size()I

    move-result v11

    if-eqz v10, :cond_0

    iget v3, v5, Landroid/support/v7/widget/B;->DM:I

    :cond_0
    if-eqz v7, :cond_6

    iget-object v2, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    :goto_6
    iget-object v12, v2, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    iget-boolean v13, v2, Landroid/support/v7/widget/F;->Ef:Z

    invoke-virtual {v12}, Landroid/support/v7/widget/B;->size()I

    move-result v5

    if-nez v1, :cond_7

    :goto_7
    if-eqz v13, :cond_14

    iget v2, v12, Landroid/support/v7/widget/B;->DM:I

    :goto_8
    if-eqz v1, :cond_f

    if-eqz v10, :cond_1

    if-nez v13, :cond_e

    :cond_1
    :goto_9
    add-int v10, v2, v5

    array-length v4, v8

    if-le v10, v4, :cond_9

    const/4 v4, 0x0

    :goto_a
    if-nez v4, :cond_e

    if-eqz v13, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v2, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    goto :goto_5

    :cond_6
    iget-object v2, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    iget v2, v12, Landroid/support/v7/widget/B;->DM:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_b
    sub-int v2, v1, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v5, v2

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    goto :goto_b

    :cond_9
    move v4, v2

    :goto_c
    if-ge v4, v10, :cond_b

    aget v12, v8, v4

    if-le v12, v3, :cond_a

    const/4 v4, 0x0

    goto :goto_a

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_b
    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    add-int v4, v2, v5

    if-gt v4, v1, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    add-int v4, v2, v5

    add-int v10, v3, v11

    array-length v12, v8

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v8, v13, v4, v10}, Ljava/util/Arrays;->fill([IIII)V

    :cond_f
    if-eqz v7, :cond_10

    invoke-static {v0, v3, v11, v2, v5}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/C;IIII)V

    :goto_d
    add-int v4, v2, v5

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_4

    :cond_10
    invoke-static {v0, v2, v5, v3, v11}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/C;IIII)V

    goto :goto_d

    .line 876
    :cond_11
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fm()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->CK:I

    .line 883
    :cond_12
    return-void

    .line 877
    :cond_13
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->CK:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fm()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CL:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 880
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fk()V

    goto/16 :goto_0

    :cond_14
    move v2, v4

    goto/16 :goto_8
.end method

.method public static fo()Landroid/support/v7/widget/F;
    .locals 4

    .prologue
    .line 2575
    const/high16 v0, -0x80000000

    sget-object v1, Landroid/support/v7/widget/GridLayout;->CM:Landroid/support/v7/widget/w;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/support/v7/widget/GridLayout;->a(IILandroid/support/v7/widget/w;F)Landroid/support/v7/widget/F;

    move-result-object v0

    return-object v0
.end method

.method private static l(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    invoke-static {p0}, Landroid/support/v7/widget/GridLayout;->l(Ljava/lang/String;)V

    return-void
.end method

.method private static q(II)I
    .locals 2

    .prologue
    .line 927
    add-int v0, p0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Landroid/view/View;ZZ)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/C;

    .line 661
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v2, v0, Landroid/support/v7/widget/C;->leftMargin:I

    .line 664
    :goto_0
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_b

    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->CH:Z

    if-nez v2, :cond_3

    move v0, v1

    :goto_1
    return v0

    .line 661
    :cond_0
    iget v2, v0, Landroid/support/v7/widget/C;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v2, v0, Landroid/support/v7/widget/C;->topMargin:I

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/support/v7/widget/C;->bottomMargin:I

    goto :goto_0

    .line 664
    :cond_3
    if-eqz p2, :cond_6

    iget-object v0, v0, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    move-object v2, v0

    :goto_2
    if-eqz p2, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    :goto_3
    iget-object v2, v2, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    if-eqz p2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fj()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p3, :cond_8

    const/4 p3, 0x1

    :cond_4
    :goto_4
    if-eqz p3, :cond_9

    iget v0, v2, Landroid/support/v7/widget/B;->DM:I

    if-eqz v0, :cond_5

    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/support/v7/widget/U;

    if-ne v0, v2, :cond_a

    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, v0, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    move-object v2, v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    goto :goto_3

    :cond_8
    move p3, v1

    goto :goto_4

    :cond_9
    iget v2, v2, Landroid/support/v7/widget/B;->max:I

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->getCount()I

    goto :goto_5

    :cond_a
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->CJ:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 825
    instance-of v2, p1, Landroid/support/v7/widget/C;

    if-nez v2, :cond_0

    .line 833
    :goto_0
    return v0

    .line 828
    :cond_0
    check-cast p1, Landroid/support/v7/widget/C;

    .line 830
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/C;Z)V

    .line 831
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/C;Z)V

    move v0, v1

    .line 833
    goto :goto_0
.end method

.method final e(Landroid/view/View;Z)I
    .locals 2

    .prologue
    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 975
    const/4 v0, 0x0

    .line 977
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/widget/GridLayout;->d(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->c(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-direct {v0}, Landroid/support/v7/widget/C;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/C;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    .prologue
    .line 1007
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->fn()V

    .line 1009
    sub-int v12, p4, p2

    .line 1010
    sub-int v1, p5, p3

    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v13

    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v14

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v15

    .line 1015
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    .line 1017
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    sub-int v4, v12, v13

    sub-int/2addr v4, v15

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/y;->ax(I)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    sub-int/2addr v1, v14

    sub-int/2addr v1, v2

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/y;->ax(I)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v1}, Landroid/support/v7/widget/y;->fB()[I

    move-result-object v16

    .line 1021
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v1}, Landroid/support/v7/widget/y;->fB()[I

    move-result-object v17

    .line 1023
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v18

    move v11, v1

    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    .line 1024
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1025
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 1026
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/C;

    .line 1027
    iget-object v2, v1, Landroid/support/v7/widget/C;->Ec:Landroid/support/v7/widget/F;

    .line 1028
    iget-object v1, v1, Landroid/support/v7/widget/C;->Eb:Landroid/support/v7/widget/F;

    .line 1030
    iget-object v4, v2, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    .line 1031
    iget-object v5, v1, Landroid/support/v7/widget/F;->Db:Landroid/support/v7/widget/B;

    .line 1033
    iget v6, v4, Landroid/support/v7/widget/B;->DM:I

    aget v19, v16, v6

    .line 1034
    iget v6, v5, Landroid/support/v7/widget/B;->DM:I

    aget v20, v17, v6

    .line 1036
    iget v4, v4, Landroid/support/v7/widget/B;->max:I

    aget v4, v16, v4

    .line 1037
    iget v5, v5, Landroid/support/v7/widget/B;->max:I

    aget v5, v17, v5

    .line 1039
    sub-int v21, v4, v19

    .line 1040
    sub-int v22, v5, v20

    .line 1042
    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/GridLayout;->d(Landroid/view/View;Z)I

    move-result v23

    .line 1043
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/GridLayout;->d(Landroid/view/View;Z)I

    move-result v24

    .line 1045
    iget-object v2, v2, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/w;Z)Landroid/support/v7/widget/w;

    move-result-object v4

    .line 1046
    iget-object v1, v1, Landroid/support/v7/widget/F;->Eg:Landroid/support/v7/widget/w;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/GridLayout;->a(Landroid/support/v7/widget/w;Z)Landroid/support/v7/widget/w;

    move-result-object v8

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v1}, Landroid/support/v7/widget/y;->fs()Landroid/support/v7/widget/E;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/support/v7/widget/E;->az(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/A;

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v2}, Landroid/support/v7/widget/y;->fs()Landroid/support/v7/widget/E;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/E;->az(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/support/v7/widget/A;

    .line 1052
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->I(Z)I

    move-result v2

    sub-int v2, v21, v2

    invoke-virtual {v4, v3, v2}, Landroid/support/v7/widget/w;->k(Landroid/view/View;I)I

    move-result v25

    .line 1053
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/A;->I(Z)I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual {v8, v3, v2}, Landroid/support/v7/widget/w;->k(Landroid/view/View;I)I

    move-result v26

    .line 1055
    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v27

    .line 1056
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v28

    .line 1057
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v29

    .line 1058
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Landroid/support/v7/widget/GridLayout;->b(Landroid/view/View;ZZ)I

    move-result v2

    .line 1060
    add-int v30, v27, v29

    .line 1061
    add-int v31, v28, v2

    .line 1064
    add-int v5, v23, v30

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/A;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/w;IZ)I

    move-result v1

    .line 1065
    add-int v9, v24, v31

    const/4 v10, 0x0

    move-object v5, v7

    move-object/from16 v6, p0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/A;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/w;IZ)I

    move-result v2

    .line 1067
    sub-int v5, v21, v30

    move/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/widget/w;->s(II)I

    move-result v4

    .line 1068
    sub-int v5, v22, v31

    move/from16 v0, v24

    invoke-virtual {v8, v0, v5}, Landroid/support/v7/widget/w;->s(II)I

    move-result v5

    .line 1070
    add-int v6, v19, v25

    add-int/2addr v1, v6

    .line 1072
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->fj()Z

    move-result v6

    if-nez v6, :cond_3

    add-int v6, v13, v27

    add-int/2addr v1, v6

    .line 1074
    :goto_1
    add-int v6, v14, v20

    add-int v6, v6, v26

    add-int/2addr v2, v6

    add-int v2, v2, v28

    .line 1076
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1077
    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1079
    :cond_1
    add-int/2addr v4, v1

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1023
    :cond_2
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_0

    .line 1072
    :cond_3
    sub-int v6, v12, v4

    sub-int/2addr v6, v15

    sub-int v6, v6, v29

    sub-int v1, v6, v1

    goto :goto_1

    .line 1081
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 933
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fn()V

    .line 937
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fl()V

    .line 939
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int v2, v0, v1

    .line 940
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v1

    add-int v3, v0, v1

    .line 942
    neg-int v0, v2

    invoke-static {p1, v0}, Landroid/support/v7/widget/GridLayout;->q(II)I

    move-result v4

    .line 943
    neg-int v0, v3

    invoke-static {p2, v0}, Landroid/support/v7/widget/GridLayout;->q(II)I

    move-result v5

    .line 945
    const/4 v0, 0x1

    invoke-direct {p0, v4, v5, v0}, Landroid/support/v7/widget/GridLayout;->b(IIZ)V

    .line 951
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->fI:I

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/y;->aw(I)I

    move-result v1

    .line 953
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/GridLayout;->b(IIZ)V

    .line 954
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/y;->aw(I)I

    move-result v0

    .line 961
    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 962
    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 964
    invoke-static {v1, p1, v6}, Landroid/support/v4/view/ad;->resolveSizeAndState(III)I

    move-result v1

    invoke-static {v0, p2, v6}, Landroid/support/v4/view/ad;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    .line 967
    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->CG:Landroid/support/v7/widget/y;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/y;->aw(I)I

    move-result v0

    .line 957
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v7/widget/GridLayout;->b(IIZ)V

    .line 958
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout;->CF:Landroid/support/v7/widget/y;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/y;->aw(I)I

    move-result v1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 982
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 983
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->fk()V

    .line 984
    return-void
.end method
