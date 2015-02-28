.class public final enum Lorg/owasp/html/CssTokens$TokenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/owasp/html/CssTokens$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cHA:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHB:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHC:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHD:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHE:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHF:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHG:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHH:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHI:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHJ:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHK:Lorg/owasp/html/CssTokens$TokenType;

.field private static final synthetic cHL:[Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHl:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHm:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHn:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHo:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHp:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHq:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHr:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHs:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHt:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHu:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHv:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHw:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHx:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHy:Lorg/owasp/html/CssTokens$TokenType;

.field public static final enum cHz:Lorg/owasp/html/CssTokens$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "IDENT"

    invoke-direct {v0, v1, v3}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHl:Lorg/owasp/html/CssTokens$TokenType;

    .line 187
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "DOT_IDENT"

    invoke-direct {v0, v1, v4}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHm:Lorg/owasp/html/CssTokens$TokenType;

    .line 189
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "FUNCTION"

    invoke-direct {v0, v1, v5}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHn:Lorg/owasp/html/CssTokens$TokenType;

    .line 191
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "AT"

    invoke-direct {v0, v1, v6}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHo:Lorg/owasp/html/CssTokens$TokenType;

    .line 193
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "HASH_ID"

    invoke-direct {v0, v1, v7}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHp:Lorg/owasp/html/CssTokens$TokenType;

    .line 195
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "HASH_UNRESTRICTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHq:Lorg/owasp/html/CssTokens$TokenType;

    .line 197
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "STRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHr:Lorg/owasp/html/CssTokens$TokenType;

    .line 199
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "URL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHs:Lorg/owasp/html/CssTokens$TokenType;

    .line 201
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "DELIM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    .line 203
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "NUMBER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHu:Lorg/owasp/html/CssTokens$TokenType;

    .line 205
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "PERCENTAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHv:Lorg/owasp/html/CssTokens$TokenType;

    .line 207
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "DIMENSION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHw:Lorg/owasp/html/CssTokens$TokenType;

    .line 209
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "BAD_DIMENSION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHx:Lorg/owasp/html/CssTokens$TokenType;

    .line 211
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "UNICODE_RANGE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHy:Lorg/owasp/html/CssTokens$TokenType;

    .line 215
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "MATCH"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHz:Lorg/owasp/html/CssTokens$TokenType;

    .line 217
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "COLUMN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHA:Lorg/owasp/html/CssTokens$TokenType;

    .line 219
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "WHITESPACE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    .line 221
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "COLON"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHC:Lorg/owasp/html/CssTokens$TokenType;

    .line 223
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "SEMICOLON"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHD:Lorg/owasp/html/CssTokens$TokenType;

    .line 225
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "COMMA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHE:Lorg/owasp/html/CssTokens$TokenType;

    .line 227
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "LEFT_SQUARE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHF:Lorg/owasp/html/CssTokens$TokenType;

    .line 229
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "RIGHT_SQUARE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHG:Lorg/owasp/html/CssTokens$TokenType;

    .line 231
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "LEFT_PAREN"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHH:Lorg/owasp/html/CssTokens$TokenType;

    .line 233
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "RIGHT_PAREN"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHI:Lorg/owasp/html/CssTokens$TokenType;

    .line 235
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "LEFT_CURLY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHJ:Lorg/owasp/html/CssTokens$TokenType;

    .line 237
    new-instance v0, Lorg/owasp/html/CssTokens$TokenType;

    const-string v1, "RIGHT_CURLY"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/CssTokens$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHK:Lorg/owasp/html/CssTokens$TokenType;

    .line 183
    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/owasp/html/CssTokens$TokenType;

    sget-object v1, Lorg/owasp/html/CssTokens$TokenType;->cHl:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/owasp/html/CssTokens$TokenType;->cHm:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/owasp/html/CssTokens$TokenType;->cHn:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/owasp/html/CssTokens$TokenType;->cHo:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/owasp/html/CssTokens$TokenType;->cHp:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHq:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHr:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHs:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHt:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHu:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHv:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHw:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHx:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHy:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHz:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHA:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHB:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHC:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHD:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHE:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHF:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHG:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHH:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHI:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHJ:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/owasp/html/CssTokens$TokenType;->cHK:Lorg/owasp/html/CssTokens$TokenType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHL:[Lorg/owasp/html/CssTokens$TokenType;

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
    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/owasp/html/CssTokens$TokenType;
    .locals 1

    .prologue
    .line 183
    const-class v0, Lorg/owasp/html/CssTokens$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/CssTokens$TokenType;

    return-object v0
.end method

.method public static values()[Lorg/owasp/html/CssTokens$TokenType;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lorg/owasp/html/CssTokens$TokenType;->cHL:[Lorg/owasp/html/CssTokens$TokenType;

    invoke-virtual {v0}, [Lorg/owasp/html/CssTokens$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/owasp/html/CssTokens$TokenType;

    return-object v0
.end method
