.class final enum Lorg/owasp/html/HtmlTokenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/owasp/html/HtmlTokenType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cJI:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJJ:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJK:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJL:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJM:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJN:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJO:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJP:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJQ:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJR:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJS:Lorg/owasp/html/HtmlTokenType;

.field public static final enum cJT:Lorg/owasp/html/HtmlTokenType;

.field private static final synthetic cJU:[Lorg/owasp/html/HtmlTokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "ATTRNAME"

    invoke-direct {v0, v1, v3}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJI:Lorg/owasp/html/HtmlTokenType;

    .line 43
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "ATTRVALUE"

    invoke-direct {v0, v1, v4}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJJ:Lorg/owasp/html/HtmlTokenType;

    .line 48
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "QMARKMETA"

    invoke-direct {v0, v1, v5}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJK:Lorg/owasp/html/HtmlTokenType;

    .line 50
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v6}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJL:Lorg/owasp/html/HtmlTokenType;

    .line 54
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "DIRECTIVE"

    invoke-direct {v0, v1, v7}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJM:Lorg/owasp/html/HtmlTokenType;

    .line 56
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "UNESCAPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJN:Lorg/owasp/html/HtmlTokenType;

    .line 61
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "QSTRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJO:Lorg/owasp/html/HtmlTokenType;

    .line 67
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "TAGBEGIN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJP:Lorg/owasp/html/HtmlTokenType;

    .line 69
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "TAGEND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJQ:Lorg/owasp/html/HtmlTokenType;

    .line 71
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "TEXT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    .line 73
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "IGNORABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJS:Lorg/owasp/html/HtmlTokenType;

    .line 75
    new-instance v0, Lorg/owasp/html/HtmlTokenType;

    const-string v1, "SERVERCODE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJT:Lorg/owasp/html/HtmlTokenType;

    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/owasp/html/HtmlTokenType;

    sget-object v1, Lorg/owasp/html/HtmlTokenType;->cJI:Lorg/owasp/html/HtmlTokenType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/owasp/html/HtmlTokenType;->cJJ:Lorg/owasp/html/HtmlTokenType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/owasp/html/HtmlTokenType;->cJK:Lorg/owasp/html/HtmlTokenType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/owasp/html/HtmlTokenType;->cJL:Lorg/owasp/html/HtmlTokenType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/owasp/html/HtmlTokenType;->cJM:Lorg/owasp/html/HtmlTokenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJN:Lorg/owasp/html/HtmlTokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJO:Lorg/owasp/html/HtmlTokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJP:Lorg/owasp/html/HtmlTokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJQ:Lorg/owasp/html/HtmlTokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJR:Lorg/owasp/html/HtmlTokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJS:Lorg/owasp/html/HtmlTokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/owasp/html/HtmlTokenType;->cJT:Lorg/owasp/html/HtmlTokenType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/owasp/html/HtmlTokenType;->cJU:[Lorg/owasp/html/HtmlTokenType;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/owasp/html/HtmlTokenType;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/owasp/html/HtmlTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/HtmlTokenType;

    return-object v0
.end method

.method public static values()[Lorg/owasp/html/HtmlTokenType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/owasp/html/HtmlTokenType;->cJU:[Lorg/owasp/html/HtmlTokenType;

    invoke-virtual {v0}, [Lorg/owasp/html/HtmlTokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/owasp/html/HtmlTokenType;

    return-object v0
.end method
