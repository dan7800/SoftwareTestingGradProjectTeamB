.class public final Landroid/support/v4/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dM:I

.field private ge:Z

.field private gg:Landroid/support/v4/e/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/e/a;->a(Ljava/util/Locale;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/e/b;->ge:Z

    invoke-static {}, Landroid/support/v4/e/a;->aD()Landroid/support/v4/e/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/e/b;->gg:Landroid/support/v4/e/i;

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/e/b;->dM:I

    .line 139
    return-void
.end method


# virtual methods
.method public final aG()Landroid/support/v4/e/a;
    .locals 5

    .prologue
    .line 203
    iget v0, p0, Landroid/support/v4/e/b;->dM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/e/b;->gg:Landroid/support/v4/e/i;

    invoke-static {}, Landroid/support/v4/e/a;->aD()Landroid/support/v4/e/i;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 205
    iget-boolean v0, p0, Landroid/support/v4/e/b;->ge:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/v4/e/a;->aE()Landroid/support/v4/e/a;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-static {}, Landroid/support/v4/e/a;->aF()Landroid/support/v4/e/a;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Landroid/support/v4/e/a;

    iget-boolean v1, p0, Landroid/support/v4/e/b;->ge:Z

    iget v2, p0, Landroid/support/v4/e/b;->dM:I

    iget-object v3, p0, Landroid/support/v4/e/b;->gg:Landroid/support/v4/e/i;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/e/a;-><init>(ZILandroid/support/v4/e/i;B)V

    goto :goto_0
.end method
