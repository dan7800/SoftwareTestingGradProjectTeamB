.class final enum Lorg/owasp/html/HtmlLexer$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/owasp/html/HtmlLexer$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cIW:Lorg/owasp/html/HtmlLexer$State;

.field public static final enum cIX:Lorg/owasp/html/HtmlLexer$State;

.field public static final enum cIY:Lorg/owasp/html/HtmlLexer$State;

.field public static final enum cIZ:Lorg/owasp/html/HtmlLexer$State;

.field private static final synthetic cJa:[Lorg/owasp/html/HtmlLexer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lorg/owasp/html/HtmlLexer$State;

    const-string v1, "OUTSIDE_TAG"

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlLexer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlLexer$State;->cIW:Lorg/owasp/html/HtmlLexer$State;

    .line 71
    new-instance v0, Lorg/owasp/html/HtmlLexer$State;

    const-string v1, "IN_TAG"

    invoke-direct {v0, v1, v3}, Lorg/owasp/html/HtmlLexer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlLexer$State;->cIX:Lorg/owasp/html/HtmlLexer$State;

    .line 72
    new-instance v0, Lorg/owasp/html/HtmlLexer$State;

    const-string v1, "SAW_NAME"

    invoke-direct {v0, v1, v4}, Lorg/owasp/html/HtmlLexer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlLexer$State;->cIY:Lorg/owasp/html/HtmlLexer$State;

    .line 73
    new-instance v0, Lorg/owasp/html/HtmlLexer$State;

    const-string v1, "SAW_EQ"

    invoke-direct {v0, v1, v5}, Lorg/owasp/html/HtmlLexer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlLexer$State;->cIZ:Lorg/owasp/html/HtmlLexer$State;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/owasp/html/HtmlLexer$State;

    sget-object v1, Lorg/owasp/html/HtmlLexer$State;->cIW:Lorg/owasp/html/HtmlLexer$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/owasp/html/HtmlLexer$State;->cIX:Lorg/owasp/html/HtmlLexer$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/owasp/html/HtmlLexer$State;->cIY:Lorg/owasp/html/HtmlLexer$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/owasp/html/HtmlLexer$State;->cIZ:Lorg/owasp/html/HtmlLexer$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/owasp/html/HtmlLexer$State;->cJa:[Lorg/owasp/html/HtmlLexer$State;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/owasp/html/HtmlLexer$State;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/owasp/html/HtmlLexer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/HtmlLexer$State;

    return-object v0
.end method

.method public static values()[Lorg/owasp/html/HtmlLexer$State;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/owasp/html/HtmlLexer$State;->cJa:[Lorg/owasp/html/HtmlLexer$State;

    invoke-virtual {v0}, [Lorg/owasp/html/HtmlLexer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/owasp/html/HtmlLexer$State;

    return-object v0
.end method
