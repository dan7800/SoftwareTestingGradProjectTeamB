.class public final enum Lcom/google/android/gtalkservice/Presence$Show;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gtalkservice/Presence$Show;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum coi:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum coj:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum cok:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum col:Lcom/google/android/gtalkservice/Presence$Show;

.field public static final enum com:Lcom/google/android/gtalkservice/Presence$Show;

.field private static final synthetic con:[Lcom/google/android/gtalkservice/Presence$Show;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->coi:Lcom/google/android/gtalkservice/Presence$Show;

    .line 49
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "AWAY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->coj:Lcom/google/android/gtalkservice/Presence$Show;

    .line 50
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "EXTENDED_AWAY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->cok:Lcom/google/android/gtalkservice/Presence$Show;

    .line 51
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "DND"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->col:Lcom/google/android/gtalkservice/Presence$Show;

    .line 52
    new-instance v0, Lcom/google/android/gtalkservice/Presence$Show;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->com:Lcom/google/android/gtalkservice/Presence$Show;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gtalkservice/Presence$Show;

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->coi:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->coj:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->cok:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->col:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->com:Lcom/google/android/gtalkservice/Presence$Show;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gtalkservice/Presence$Show;->con:[Lcom/google/android/gtalkservice/Presence$Show;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gtalkservice/Presence$Show;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gtalkservice/Presence$Show;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/gtalkservice/Presence$Show;->con:[Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, [Lcom/google/android/gtalkservice/Presence$Show;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method
