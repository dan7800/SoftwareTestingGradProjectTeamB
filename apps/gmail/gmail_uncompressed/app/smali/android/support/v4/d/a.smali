.class public final Landroid/support/v4/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fE:Landroid/support/v4/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-static {}, Landroid/support/v4/d/a;->ay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/support/v4/d/b;

    invoke-direct {v0, p1}, Landroid/support/v4/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/d/a;->fE:Landroid/support/v4/d/d;

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/support/v4/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/d/c;-><init>(B)V

    iput-object v0, p0, Landroid/support/v4/d/a;->fE:Landroid/support/v4/d/d;

    goto :goto_0
.end method

.method public static ay()Z
    .locals 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v4/d/a;->fE:Landroid/support/v4/d/d;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/d/d;->b(Ljava/lang/String;Landroid/net/Uri;)V

    .line 337
    return-void
.end method

.method public final az()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v4/d/a;->fE:Landroid/support/v4/d/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/support/v4/d/d;->n(I)V

    .line 249
    return-void
.end method
