.class final Lorg/owasp/html/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/b;


# instance fields
.field private final cKe:Lorg/owasp/html/i;


# direct methods
.method constructor <init>(Lorg/owasp/html/i;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/owasp/html/X;->cKe:Lorg/owasp/html/i;

    .line 50
    return-void
.end method

.method static synthetic a(Lorg/owasp/html/X;)Lorg/owasp/html/i;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/owasp/html/X;->cKe:Lorg/owasp/html/i;

    return-object v0
.end method

.method static synthetic t(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v5, :cond_1

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_3

    :cond_0
    :goto_1
    return v0

    :cond_1
    or-int/lit8 v3, v3, 0x20

    const/16 v4, 0x30

    if-gt v4, v3, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x61

    if-gt v4, v3, :cond_0

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final apply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lorg/owasp/html/Y;

    invoke-direct {v1, p0, v0}, Lorg/owasp/html/Y;-><init>(Lorg/owasp/html/X;Ljava/lang/StringBuilder;)V

    invoke-static {p3, v1}, Lorg/owasp/html/f;->a(Ljava/lang/String;Lorg/owasp/html/h;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/owasp/html/X;->cKe:Lorg/owasp/html/i;

    check-cast p1, Lorg/owasp/html/X;

    iget-object v1, p1, Lorg/owasp/html/X;->cKe:Lorg/owasp/html/i;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/owasp/html/X;->cKe:Lorg/owasp/html/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
