.class final Lcom/android/email/service/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Lm:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MIN(timeStamp)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/service/x;->Lm:[Ljava/lang/String;

    return-void
.end method

.method static synthetic kH()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/android/email/service/x;->Lm:[Ljava/lang/String;

    return-object v0
.end method
