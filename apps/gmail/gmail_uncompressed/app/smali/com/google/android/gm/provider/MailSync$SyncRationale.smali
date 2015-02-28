.class public final enum Lcom/google/android/gm/provider/MailSync$SyncRationale;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bml:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field private static final synthetic bmq:[Lcom/google/android/gm/provider/MailSync$SyncRationale;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "LABEL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bml:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 119
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 120
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 124
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 125
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "LOCAL_CHANGE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gm/provider/MailSync$SyncRationale;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bml:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmm:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmo:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmq:[Lcom/google/android/gm/provider/MailSync$SyncRationale;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/MailSync$SyncRationale;
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/MailSync$SyncRationale;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->bmq:[Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/MailSync$SyncRationale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/MailSync$SyncRationale;

    return-object v0
.end method
