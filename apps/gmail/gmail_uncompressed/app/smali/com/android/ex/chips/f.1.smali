.class public final Lcom/android/ex/chips/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Lm:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "directories"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ex/chips/f;->URI:Landroid/net/Uri;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "typeResourceId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/chips/f;->Lm:[Ljava/lang/String;

    return-void
.end method
