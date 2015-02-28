.class final enum Lorg/owasp/html/HtmlInputSplitter$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/owasp/html/HtmlInputSplitter$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cIA:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIB:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIC:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cID:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIE:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIF:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIG:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIH:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cII:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIJ:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIK:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIL:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIM:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIN:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIO:Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIP:Lorg/owasp/html/HtmlInputSplitter$State;

.field private static final synthetic cIQ:[Lorg/owasp/html/HtmlInputSplitter$State;

.field public static final enum cIz:Lorg/owasp/html/HtmlInputSplitter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "TAGNAME"

    invoke-direct {v0, v1, v3}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIz:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 340
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "SLASH"

    invoke-direct {v0, v1, v4}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIA:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 341
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "BANG"

    invoke-direct {v0, v1, v5}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIB:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 342
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "BANG_DASH"

    invoke-direct {v0, v1, v6}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIC:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 343
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v7}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cID:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 344
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "COMMENT_DASH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIE:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 345
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "COMMENT_DASH_DASH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIF:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 346
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "DIRECTIVE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIG:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 347
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "DONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 348
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "BOGUS_COMMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cII:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 349
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "SERVER_CODE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIJ:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 350
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "SERVER_CODE_PCT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIK:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 376
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "UNESCAPED_LT_BANG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIL:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 377
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "UNESCAPED_LT_BANG_DASH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIM:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 378
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "ESCAPING_TEXT_SPAN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIN:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 379
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "ESCAPING_TEXT_SPAN_DASH"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIO:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 380
    new-instance v0, Lorg/owasp/html/HtmlInputSplitter$State;

    const-string v1, "ESCAPING_TEXT_SPAN_DASH_DASH"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/HtmlInputSplitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIP:Lorg/owasp/html/HtmlInputSplitter$State;

    .line 338
    const/16 v0, 0x11

    new-array v0, v0, [Lorg/owasp/html/HtmlInputSplitter$State;

    sget-object v1, Lorg/owasp/html/HtmlInputSplitter$State;->cIz:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/owasp/html/HtmlInputSplitter$State;->cIA:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/owasp/html/HtmlInputSplitter$State;->cIB:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/owasp/html/HtmlInputSplitter$State;->cIC:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/owasp/html/HtmlInputSplitter$State;->cID:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIE:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIF:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIG:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIH:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cII:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIJ:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIK:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIL:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIM:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIN:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIO:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/owasp/html/HtmlInputSplitter$State;->cIP:Lorg/owasp/html/HtmlInputSplitter$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIQ:[Lorg/owasp/html/HtmlInputSplitter$State;

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
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/owasp/html/HtmlInputSplitter$State;
    .locals 1

    .prologue
    .line 338
    const-class v0, Lorg/owasp/html/HtmlInputSplitter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/HtmlInputSplitter$State;

    return-object v0
.end method

.method public static values()[Lorg/owasp/html/HtmlInputSplitter$State;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lorg/owasp/html/HtmlInputSplitter$State;->cIQ:[Lorg/owasp/html/HtmlInputSplitter$State;

    invoke-virtual {v0}, [Lorg/owasp/html/HtmlInputSplitter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/owasp/html/HtmlInputSplitter$State;

    return-object v0
.end method
