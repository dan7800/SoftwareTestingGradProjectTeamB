.class public final enum Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cuC:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

.field public static final enum cuD:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

.field public static final enum cuE:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

.field private static final synthetic cuF:[Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    const-string v1, "NORMALIZE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuC:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    const-string v1, "PRESERVE_VALID"

    invoke-direct {v0, v1, v3}, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuD:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    const-string v1, "PRESERVE_ALL"

    invoke-direct {v0, v1, v4}, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuE:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    sget-object v1, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuC:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuD:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuE:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuF:[Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    return-object v0
.end method

.method public static values()[Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuF:[Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    invoke-virtual {v0}, [Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    return-object v0
.end method
