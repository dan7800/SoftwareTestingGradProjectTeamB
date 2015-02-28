.class public final enum Lcom/android/mail/browse/WebViewContextMenu$MenuType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mail/browse/WebViewContextMenu$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum auN:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auO:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auP:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auQ:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auR:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auS:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auT:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auV:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auW:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field public static final enum auX:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

.field private static final synthetic auY:[Lcom/android/mail/browse/WebViewContextMenu$MenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "OPEN_MENU"

    invoke-direct {v0, v1, v3}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auN:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 73
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "COPY_LINK_MENU"

    invoke-direct {v0, v1, v4}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auO:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 74
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "SHARE_LINK_MENU"

    invoke-direct {v0, v1, v5}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auP:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 75
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "DIAL_MENU"

    invoke-direct {v0, v1, v6}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auQ:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 76
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "SMS_MENU"

    invoke-direct {v0, v1, v7}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auR:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 77
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "ADD_CONTACT_MENU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auS:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 78
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "COPY_PHONE_MENU"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auT:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 79
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "EMAIL_CONTACT_MENU"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 80
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "COPY_MAIL_MENU"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auV:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 81
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "MAP_MENU"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auW:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 82
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    const-string v1, "COPY_GEO_MENU"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auX:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auN:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auO:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auP:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auQ:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auR:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auS:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auT:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auV:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auW:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auX:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auY:[Lcom/android/mail/browse/WebViewContextMenu$MenuType;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mail/browse/WebViewContextMenu$MenuType;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    return-object v0
.end method

.method public static values()[Lcom/android/mail/browse/WebViewContextMenu$MenuType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->auY:[Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    invoke-virtual {v0}, [Lcom/android/mail/browse/WebViewContextMenu$MenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    return-object v0
.end method
