.class public final Lcom/android/emailcommon/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VW:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "precache"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/f;->VW:[Ljava/lang/String;

    return-void
.end method

.method public static l(Lcom/android/emailcommon/provider/Account;)I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->Ln:J

    long-to-int v0, v0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static m(Lcom/android/emailcommon/provider/Account;)I
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->Ln:J

    long-to-int v0, v0

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    return v0
.end method

.method public static n(Lcom/android/emailcommon/provider/Account;)I
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->Ln:J

    long-to-int v0, v0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method
