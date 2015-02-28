.class public final Landroid/support/v4/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fZ:Landroid/support/v4/e/i;

.field private static final ga:Ljava/lang/String;

.field private static final gb:Ljava/lang/String;

.field private static final gc:Landroid/support/v4/e/a;

.field private static final gd:Landroid/support/v4/e/a;


# instance fields
.field private final dM:I

.field private final ge:Z

.field private final gf:Landroid/support/v4/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 83
    sget-object v0, Landroid/support/v4/e/j;->gr:Landroid/support/v4/e/i;

    sput-object v0, Landroid/support/v4/e/a;->fZ:Landroid/support/v4/e/i;

    .line 113
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/e/a;->ga:Ljava/lang/String;

    .line 118
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/e/a;->gb:Ljava/lang/String;

    .line 215
    new-instance v0, Landroid/support/v4/e/a;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v4/e/a;->fZ:Landroid/support/v4/e/i;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/e/a;-><init>(ZILandroid/support/v4/e/i;)V

    sput-object v0, Landroid/support/v4/e/a;->gc:Landroid/support/v4/e/a;

    .line 220
    new-instance v0, Landroid/support/v4/e/a;

    const/4 v1, 0x1

    sget-object v2, Landroid/support/v4/e/a;->fZ:Landroid/support/v4/e/i;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/e/a;-><init>(ZILandroid/support/v4/e/i;)V

    sput-object v0, Landroid/support/v4/e/a;->gd:Landroid/support/v4/e/a;

    return-void
.end method

.method private constructor <init>(ZILandroid/support/v4/e/i;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Landroid/support/v4/e/a;->ge:Z

    .line 262
    iput p2, p0, Landroid/support/v4/e/a;->dM:I

    .line 263
    iput-object p3, p0, Landroid/support/v4/e/a;->gf:Landroid/support/v4/e/i;

    .line 264
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/support/v4/e/i;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/e/a;-><init>(ZILandroid/support/v4/e/i;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-static {p0}, Landroid/support/v4/e/q;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aC()Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Landroid/support/v4/e/b;

    invoke-direct {v0}, Landroid/support/v4/e/b;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/e/b;->aG()Landroid/support/v4/e/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aD()Landroid/support/v4/e/i;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/e/a;->fZ:Landroid/support/v4/e/i;

    return-object v0
.end method

.method static synthetic aE()Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/e/a;->gd:Landroid/support/v4/e/a;

    return-object v0
.end method

.method static synthetic aF()Landroid/support/v4/e/a;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/support/v4/e/a;->gc:Landroid/support/v4/e/a;

    return-object v0
.end method

.method private static g(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 462
    new-instance v0, Landroid/support/v4/e/c;

    invoke-direct {v0, p0}, Landroid/support/v4/e/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/e/c;->aI()I

    move-result v0

    return v0
.end method

.method private static h(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 479
    new-instance v0, Landroid/support/v4/e/c;

    invoke-direct {v0, p0}, Landroid/support/v4/e/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/e/c;->aH()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final isRtl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v4/e/a;->gf:Landroid/support/v4/e/i;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/support/v4/e/i;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public final unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 427
    iget-object v0, p0, Landroid/support/v4/e/a;->gf:Landroid/support/v4/e/i;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/support/v4/e/i;->a(Ljava/lang/CharSequence;I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Landroid/support/v4/e/a;->dM:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_4

    sget-object v0, Landroid/support/v4/e/j;->gq:Landroid/support/v4/e/i;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0, p1, v4}, Landroid/support/v4/e/i;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    iget-boolean v4, p0, Landroid/support/v4/e/a;->ge:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/e/a;->h(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_5

    :cond_0
    sget-object v0, Landroid/support/v4/e/a;->ga:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/e/a;->ge:Z

    if-eq v2, v0, :cond_9

    if-eqz v2, :cond_8

    const/16 v0, 0x202b

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x202c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz v2, :cond_a

    sget-object v0, Landroid/support/v4/e/j;->gq:Landroid/support/v4/e/i;

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/support/v4/e/i;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v4/e/a;->ge:Z

    if-nez v2, :cond_b

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/support/v4/e/a;->g(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_b

    :cond_2
    sget-object v0, Landroid/support/v4/e/a;->ga:Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/support/v4/e/j;->gp:Landroid/support/v4/e/i;

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Landroid/support/v4/e/a;->ge:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/support/v4/e/a;->h(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_7

    :cond_6
    sget-object v0, Landroid/support/v4/e/a;->gb:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v0, ""

    goto :goto_2

    :cond_8
    const/16 v0, 0x202a

    goto :goto_3

    :cond_9
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    sget-object v0, Landroid/support/v4/e/j;->gp:Landroid/support/v4/e/i;

    goto :goto_5

    :cond_b
    iget-boolean v1, p0, Landroid/support/v4/e/a;->ge:Z

    if-eqz v1, :cond_d

    if-eqz v0, :cond_c

    invoke-static {p1}, Landroid/support/v4/e/a;->g(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_d

    :cond_c
    sget-object v0, Landroid/support/v4/e/a;->gb:Ljava/lang/String;

    goto :goto_6

    :cond_d
    const-string v0, ""

    goto :goto_6
.end method
