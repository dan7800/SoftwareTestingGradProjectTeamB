.class final enum Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum btd:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum bte:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum btf:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum btg:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum bth:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum bti:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum btj:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum btk:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field public static final enum btl:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

.field private static final synthetic btm:[Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btd:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Initialized"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bte:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Prepared"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btf:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Started"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btg:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bth:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Stopped"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bti:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Completed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btj:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "End"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btk:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    new-instance v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    const-string v1, "Error"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btl:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btd:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bte:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btf:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btg:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bth:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->bti:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btj:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btk:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btl:Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btm:[Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->btm:[Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    invoke-virtual {v0}, [Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/welcome/WelcomeVideoActivity$MediaPlayerState;

    return-object v0
.end method
