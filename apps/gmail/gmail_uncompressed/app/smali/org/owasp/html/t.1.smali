.class final Lorg/owasp/html/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cHZ:Lorg/owasp/html/p;

.field cIa:Lorg/owasp/html/p;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/owasp/html/t;->cHZ:Lorg/owasp/html/p;

    .line 71
    iput-object v0, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    return-void
.end method


# virtual methods
.method final a(Lorg/owasp/html/p;)V
    .locals 3

    .prologue
    .line 74
    move-object v0, p1

    :goto_0
    sget-object v1, Lorg/owasp/html/p;->cHY:Lorg/owasp/html/p;

    if-ne v0, v1, :cond_1

    .line 75
    iput-object v0, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    sget-object v2, Lorg/owasp/html/p;->cHY:Lorg/owasp/html/p;

    if-eq v1, v2, :cond_0

    .line 77
    instance-of v1, v0, Lorg/owasp/html/T;

    if-eqz v1, :cond_2

    .line 78
    check-cast v0, Lorg/owasp/html/T;

    .line 79
    iget-object v1, v0, Lorg/owasp/html/T;->cJW:Lorg/owasp/html/p;

    invoke-virtual {p0, v1}, Lorg/owasp/html/t;->a(Lorg/owasp/html/p;)V

    .line 80
    iget-object v0, v0, Lorg/owasp/html/T;->cJX:Lorg/owasp/html/p;

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lorg/owasp/html/t;->cHZ:Lorg/owasp/html/p;

    if-eq v0, v1, :cond_0

    .line 82
    iput-object v0, p0, Lorg/owasp/html/t;->cHZ:Lorg/owasp/html/p;

    .line 83
    iget-object v1, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    sget-object v2, Lorg/owasp/html/p;->cHX:Lorg/owasp/html/p;

    if-ne v1, v2, :cond_4

    .line 84
    :cond_3
    iput-object v0, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    goto :goto_1

    .line 85
    :cond_4
    sget-object v1, Lorg/owasp/html/p;->cHX:Lorg/owasp/html/p;

    if-eq v0, v1, :cond_0

    .line 86
    new-instance v1, Lorg/owasp/html/T;

    iget-object v2, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    invoke-direct {v1, v2, v0}, Lorg/owasp/html/T;-><init>(Lorg/owasp/html/p;Lorg/owasp/html/p;)V

    iput-object v1, p0, Lorg/owasp/html/t;->cIa:Lorg/owasp/html/p;

    goto :goto_1
.end method
