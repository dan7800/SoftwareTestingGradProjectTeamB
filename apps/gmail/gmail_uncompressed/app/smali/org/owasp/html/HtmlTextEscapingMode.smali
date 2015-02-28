.class public final enum Lorg/owasp/html/HtmlTextEscapingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/owasp/html/HtmlTextEscapingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cJA:Lorg/owasp/html/HtmlTextEscapingMode;

.field public static final enum cJB:Lorg/owasp/html/HtmlTextEscapingMode;

.field public static final enum cJC:Lorg/owasp/html/HtmlTextEscapingMode;

.field public static final enum cJD:Lorg/owasp/html/HtmlTextEscapingMode;

.field public static final enum cJE:Lorg/owasp/html/HtmlTextEscapingMode;

.field private static final cJF:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/HtmlTextEscapingMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic cJG:[Lorg/owasp/html/HtmlTextEscapingMode;

.field public static final enum cJz:Lorg/owasp/html/HtmlTextEscapingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lorg/owasp/html/HtmlTextEscapingMode;

    const-string v1, "PCDATA"

    invoke-direct {v0, v1, v3}, Lorg/owasp/html/HtmlTextEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJz:Lorg/owasp/html/HtmlTextEscapingMode;

    .line 63
    new-instance v0, Lorg/owasp/html/HtmlTextEscapingMode;

    const-string v1, "CDATA"

    invoke-direct {v0, v1, v4}, Lorg/owasp/html/HtmlTextEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJA:Lorg/owasp/html/HtmlTextEscapingMode;

    .line 67
    new-instance v0, Lorg/owasp/html/HtmlTextEscapingMode;

    const-string v1, "CDATA_SOMETIMES"

    invoke-direct {v0, v1, v5}, Lorg/owasp/html/HtmlTextEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJB:Lorg/owasp/html/HtmlTextEscapingMode;

    .line 72
    new-instance v0, Lorg/owasp/html/HtmlTextEscapingMode;

    const-string v1, "RCDATA"

    invoke-direct {v0, v1, v6}, Lorg/owasp/html/HtmlTextEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJC:Lorg/owasp/html/HtmlTextEscapingMode;

    .line 77
    new-instance v0, Lorg/owasp/html/HtmlTextEscapingMode;

    const-string v1, "PLAIN_TEXT"

    invoke-direct {v0, v1, v7}, Lorg/owasp/html/HtmlTextEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJD:Lorg/owasp/html/HtmlTextEscapingMode;

    .line 82
    new-instance v0, Lorg/owasp/html/HtmlTextEscapingMode;

    const-string v1, "VOID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTextEscapingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/owasp/html/HtmlTextEscapingMode;

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJz:Lorg/owasp/html/HtmlTextEscapingMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJA:Lorg/owasp/html/HtmlTextEscapingMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJB:Lorg/owasp/html/HtmlTextEscapingMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJC:Lorg/owasp/html/HtmlTextEscapingMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJD:Lorg/owasp/html/HtmlTextEscapingMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJG:[Lorg/owasp/html/HtmlTextEscapingMode;

    .line 85
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->Zv()Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "iframe"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJA:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "listing"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJB:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "xmp"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJA:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "comment"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJB:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "plaintext"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJD:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "script"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJA:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "style"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJA:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "textarea"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJC:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "title"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJC:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "area"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "base"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "br"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "col"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "command"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "embed"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "hr"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "img"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "input"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "keygen"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "link"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "meta"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "param"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "source"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "track"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "wbr"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "basefont"

    sget-object v2, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJF:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static iA(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 172
    invoke-static {p0}, Lorg/owasp/html/HtmlTextEscapingMode;->ix(Ljava/lang/String;)Lorg/owasp/html/HtmlTextEscapingMode;

    move-result-object v0

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ix(Ljava/lang/String;)Lorg/owasp/html/HtmlTextEscapingMode;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJF:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/HtmlTextEscapingMode;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJz:Lorg/owasp/html/HtmlTextEscapingMode;

    goto :goto_0
.end method

.method public static iy(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 152
    const-string v0, "style"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "script"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "noembed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "noscript"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "noframes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static iz(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 163
    invoke-static {p0}, Lorg/owasp/html/HtmlTextEscapingMode;->ix(Ljava/lang/String;)Lorg/owasp/html/HtmlTextEscapingMode;

    move-result-object v0

    .line 164
    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJz:Lorg/owasp/html/HtmlTextEscapingMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/owasp/html/HtmlTextEscapingMode;->cJE:Lorg/owasp/html/HtmlTextEscapingMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/owasp/html/HtmlTextEscapingMode;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/HtmlTextEscapingMode;

    return-object v0
.end method

.method public static values()[Lorg/owasp/html/HtmlTextEscapingMode;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/owasp/html/HtmlTextEscapingMode;->cJG:[Lorg/owasp/html/HtmlTextEscapingMode;

    invoke-virtual {v0}, [Lorg/owasp/html/HtmlTextEscapingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/owasp/html/HtmlTextEscapingMode;

    return-object v0
.end method
