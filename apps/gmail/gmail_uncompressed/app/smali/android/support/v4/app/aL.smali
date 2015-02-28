.class public final Landroid/support/v4/app/aL;
.super Landroid/support/v4/app/aU;
.source "SourceFile"


# static fields
.field public static final eA:Landroid/support/v4/app/aV;

.field private static final ez:Landroid/support/v4/app/aO;


# instance fields
.field private final cV:Landroid/os/Bundle;

.field private final ev:Ljava/lang/String;

.field private final ew:Ljava/lang/CharSequence;

.field private final ex:[Ljava/lang/CharSequence;

.field private final ey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 254
    new-instance v0, Landroid/support/v4/app/aP;

    invoke-direct {v0}, Landroid/support/v4/app/aP;-><init>()V

    sput-object v0, Landroid/support/v4/app/aL;->ez:Landroid/support/v4/app/aO;

    .line 263
    :goto_0
    new-instance v0, Landroid/support/v4/app/aM;

    invoke-direct {v0}, Landroid/support/v4/app/aM;-><init>()V

    sput-object v0, Landroid/support/v4/app/aL;->eA:Landroid/support/v4/app/aV;

    return-void

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 256
    new-instance v0, Landroid/support/v4/app/aR;

    invoke-direct {v0}, Landroid/support/v4/app/aR;-><init>()V

    sput-object v0, Landroid/support/v4/app/aL;->ez:Landroid/support/v4/app/aO;

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Landroid/support/v4/app/aQ;

    invoke-direct {v0}, Landroid/support/v4/app/aQ;-><init>()V

    sput-object v0, Landroid/support/v4/app/aL;->ez:Landroid/support/v4/app/aO;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/aU;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v4/app/aL;->ev:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/support/v4/app/aL;->ew:Ljava/lang/CharSequence;

    .line 47
    iput-object p3, p0, Landroid/support/v4/app/aL;->ex:[Ljava/lang/CharSequence;

    .line 48
    iput-boolean p4, p0, Landroid/support/v4/app/aL;->ey:Z

    .line 49
    iput-object p5, p0, Landroid/support/v4/app/aL;->cV:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Landroid/support/v4/app/aL;->ez:Landroid/support/v4/app/aO;

    invoke-interface {v0, p0}, Landroid/support/v4/app/aO;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAllowFreeFormInput()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/support/v4/app/aL;->ey:Z

    return v0
.end method

.method public final getChoices()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v4/app/aL;->ex:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/app/aL;->cV:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/app/aL;->ew:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getResultKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/app/aL;->ev:Ljava/lang/String;

    return-object v0
.end method
