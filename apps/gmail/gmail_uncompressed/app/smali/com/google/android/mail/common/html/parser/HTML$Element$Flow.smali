.class public final enum Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cpS:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

.field public static final enum cpT:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

.field public static final enum cpU:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

.field private static final synthetic cpV:[Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpS:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    .line 48
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    const-string v1, "BLOCK"

    invoke-direct {v0, v1, v3}, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpT:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    .line 49
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpU:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpS:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpT:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpU:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpV:[Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    return-object v0
.end method

.method public static values()[Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpV:[Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    invoke-virtual {v0}, [Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    return-object v0
.end method