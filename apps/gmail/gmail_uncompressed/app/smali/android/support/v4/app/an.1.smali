.class public abstract Landroid/support/v4/app/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dI:Landroid/support/v4/app/ab;

.field dJ:Ljava/lang/CharSequence;

.field dK:Ljava/lang/CharSequence;

.field dL:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/an;->dL:Z

    return-void
.end method


# virtual methods
.method public final c(Landroid/support/v4/app/ab;)V
    .locals 1

    .prologue
    .line 1558
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/an;->dI:Landroid/support/v4/app/ab;

    if-eq v0, p1, :cond_0

    .line 1559
    iput-object p1, p0, Landroid/support/v4/app/an;->dI:Landroid/support/v4/app/ab;

    .line 1560
    iget-object v0, p0, Landroid/support/v4/app/an;->dI:Landroid/support/v4/app/ab;

    if-eqz v0, :cond_0

    .line 1561
    iget-object p1, p0, Landroid/support/v4/app/an;->dI:Landroid/support/v4/app/ab;

    iget-object v0, p1, Landroid/support/v4/app/ab;->dr:Landroid/support/v4/app/an;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Landroid/support/v4/app/ab;->dr:Landroid/support/v4/app/an;

    iget-object v0, p1, Landroid/support/v4/app/ab;->dr:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    iget-object p0, p1, Landroid/support/v4/app/ab;->dr:Landroid/support/v4/app/an;

    goto :goto_0

    .line 1564
    :cond_0
    return-void
.end method
