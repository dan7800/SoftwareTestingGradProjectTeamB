.class final enum Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;",
        ">;"
    }
.end annotation


# static fields
.field static final ALL:I

.field public static final enum cKA:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

.field public static final enum cKB:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

.field private static final synthetic cKC:[Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

.field public static final enum cKy:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

.field public static final enum cKz:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 329
    new-instance v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v3}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKy:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    .line 330
    new-instance v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v2}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKz:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    .line 331
    new-instance v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    const-string v1, "LIST_ITEM"

    invoke-direct {v0, v1, v4}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKA:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    .line 332
    new-instance v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    const-string v1, "TABLE"

    invoke-direct {v0, v1, v5}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKB:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    .line 328
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    sget-object v1, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKy:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    aput-object v1, v0, v3

    sget-object v1, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKz:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    aput-object v1, v0, v2

    sget-object v1, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKA:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    aput-object v1, v0, v4

    sget-object v1, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKB:Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    aput-object v1, v0, v5

    sput-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKC:[Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    .line 335
    invoke-static {}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->values()[Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    move-result-object v0

    array-length v0, v0

    shl-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->ALL:I

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
    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;
    .locals 1

    .prologue
    .line 328
    const-class v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    return-object v0
.end method

.method public static values()[Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->cKC:[Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    invoke-virtual {v0}, [Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope;

    return-object v0
.end method
