.class public final enum Lcom/android/emailcommon/mail/Folder$OpenMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/mail/Folder$OpenMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field public static final enum Xh:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field private static final synthetic Xi:[Lcom/android/emailcommon/mail/Folder$OpenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/android/emailcommon/mail/Folder$OpenMode;

    const-string v1, "READ_WRITE"

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder$OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    new-instance v0, Lcom/android/emailcommon/mail/Folder$OpenMode;

    const-string v1, "READ_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/Folder$OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xh:Lcom/android/emailcommon/mail/Folder$OpenMode;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/emailcommon/mail/Folder$OpenMode;

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xg:Lcom/android/emailcommon/mail/Folder$OpenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xh:Lcom/android/emailcommon/mail/Folder$OpenMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xi:[Lcom/android/emailcommon/mail/Folder$OpenMode;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->Xi:[Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v0}, [Lcom/android/emailcommon/mail/Folder$OpenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method
