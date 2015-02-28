.class final Lorg/owasp/html/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final cHM:Ljava/lang/String;

.field final cHN:Z

.field final cKq:Z

.field final cKr:I

.field final cKs:I

.field final cKt:Lorg/owasp/html/aa;

.field final cKu:I

.field final cKv:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZIILorg/owasp/html/aa;I)V
    .locals 2

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    .line 277
    iput-boolean p2, p0, Lorg/owasp/html/aa;->cKq:Z

    .line 278
    iput p3, p0, Lorg/owasp/html/aa;->cKr:I

    .line 279
    iput p4, p0, Lorg/owasp/html/aa;->cKs:I

    .line 280
    if-nez p4, :cond_0

    invoke-static {p1}, Lorg/owasp/html/HtmlTextEscapingMode;->iA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/owasp/html/aa;->cHN:Z

    .line 282
    iput-object p5, p0, Lorg/owasp/html/aa;->cKt:Lorg/owasp/html/aa;

    .line 283
    sget v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->ALL:I

    xor-int/lit8 v1, p6, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/owasp/html/aa;->cKu:I

    .line 285
    iput p6, p0, Lorg/owasp/html/aa;->cKv:I

    .line 286
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
