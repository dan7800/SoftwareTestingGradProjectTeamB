.class public final enum Lcom/android/emailcommon/mail/Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/mail/Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WP:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WQ:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WR:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WS:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WT:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WU:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WV:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WW:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WX:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WY:Lcom/android/emailcommon/mail/Flag;

.field public static final enum WZ:Lcom/android/emailcommon/mail/Flag;

.field public static final enum Xa:Lcom/android/emailcommon/mail/Flag;

.field public static final enum Xb:Lcom/android/emailcommon/mail/Flag;

.field private static final synthetic Xc:[Lcom/android/emailcommon/mail/Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    .line 27
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "SEEN"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    .line 28
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "ANSWERED"

    invoke-direct {v0, v1, v5}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    .line 29
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "FLAGGED"

    invoke-direct {v0, v1, v6}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    .line 30
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "DRAFT"

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WT:Lcom/android/emailcommon/mail/Flag;

    .line 31
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "RECENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WU:Lcom/android/emailcommon/mail/Flag;

    .line 42
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "X_DESTROYED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WV:Lcom/android/emailcommon/mail/Flag;

    .line 47
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "X_SEND_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WW:Lcom/android/emailcommon/mail/Flag;

    .line 52
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "X_SEND_IN_PROGRESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WX:Lcom/android/emailcommon/mail/Flag;

    .line 58
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "X_DOWNLOADED_FULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WY:Lcom/android/emailcommon/mail/Flag;

    .line 65
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "X_DOWNLOADED_PARTIAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->WZ:Lcom/android/emailcommon/mail/Flag;

    .line 71
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "X_STORE_1"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->Xa:Lcom/android/emailcommon/mail/Flag;

    .line 77
    new-instance v0, Lcom/android/emailcommon/mail/Flag;

    const-string v1, "X_STORE_2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->Xb:Lcom/android/emailcommon/mail/Flag;

    .line 22
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WP:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WQ:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WR:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WS:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->WT:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WU:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WV:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WW:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WX:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WY:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->WZ:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->Xa:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/emailcommon/mail/Flag;->Xb:Lcom/android/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/mail/Flag;->Xc:[Lcom/android/emailcommon/mail/Flag;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/emailcommon/mail/Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/emailcommon/mail/Flag;->Xc:[Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v0}, [Lcom/android/emailcommon/mail/Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method
