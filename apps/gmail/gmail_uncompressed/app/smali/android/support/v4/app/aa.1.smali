.class public final Landroid/support/v4/app/aa;
.super Landroid/support/v4/app/an;
.source "SourceFile"


# instance fields
.field df:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1667
    invoke-direct {p0}, Landroid/support/v4/app/an;-><init>()V

    .line 1668
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ab;)V
    .locals 0

    .prologue
    .line 1670
    invoke-direct {p0}, Landroid/support/v4/app/an;-><init>()V

    .line 1671
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aa;->c(Landroid/support/v4/app/ab;)V

    .line 1672
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aa;
    .locals 1

    .prologue
    .line 1697
    invoke-static {p1}, Landroid/support/v4/app/ab;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/aa;->df:Ljava/lang/CharSequence;

    .line 1698
    return-object p0
.end method
