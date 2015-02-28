.class final enum Lcom/google/android/gm/provider/MailEngine$ClientCreated;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/MailEngine$ClientCreated;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bjR:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

.field public static final enum bjS:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

.field private static final synthetic bjT:[Lcom/google/android/gm/provider/MailEngine$ClientCreated;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    const-string v1, "SERVER_CREATED"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjR:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    .line 169
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    const-string v1, "CLIENT_CREATED"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjS:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    sget-object v1, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjR:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjS:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjT:[Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 174
    iput p3, p0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->mValue:I

    .line 175
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/MailEngine$ClientCreated;)I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->mValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine$ClientCreated;
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/MailEngine$ClientCreated;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->bjT:[Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/MailEngine$ClientCreated;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    return-object v0
.end method


# virtual methods
.method public final Ex()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->mValue:I

    return v0
.end method
