.class public final enum Lcom/android/emailcommon/mail/FetchProfile$Item;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/mail/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/mail/FetchProfile$Item;",
        ">;",
        "Lcom/android/emailcommon/mail/e;"
    }
.end annotation


# static fields
.field public static final enum WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum WL:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum WM:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field public static final enum WN:Lcom/android/emailcommon/mail/FetchProfile$Item;

.field private static final synthetic WO:[Lcom/android/emailcommon/mail/FetchProfile$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string v1, "FLAGS"

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 49
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string v1, "ENVELOPE"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 59
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string v1, "STRUCTURE"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WL:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 65
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string v1, "BODY_SANE"

    invoke-direct {v0, v1, v5}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WM:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 70
    new-instance v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    const-string v1, "BODY"

    invoke-direct {v0, v1, v6}, Lcom/android/emailcommon/mail/FetchProfile$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WN:Lcom/android/emailcommon/mail/FetchProfile$Item;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/emailcommon/mail/FetchProfile$Item;

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WK:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WL:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WM:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/mail/FetchProfile$Item;->WN:Lcom/android/emailcommon/mail/FetchProfile$Item;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WO:[Lcom/android/emailcommon/mail/FetchProfile$Item;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/FetchProfile$Item;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/FetchProfile$Item;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/mail/FetchProfile$Item;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/emailcommon/mail/FetchProfile$Item;->WO:[Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v0}, [Lcom/android/emailcommon/mail/FetchProfile$Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/FetchProfile$Item;

    return-object v0
.end method