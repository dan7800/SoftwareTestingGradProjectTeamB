.class final Landroid/support/v7/widget/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ES:Landroid/support/v7/widget/H;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/H;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Landroid/support/v7/widget/O;->ES:Landroid/support/v7/widget/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/H;B)V
    .locals 0

    .prologue
    .line 1716
    invoke-direct {p0, p1}, Landroid/support/v7/widget/O;-><init>(Landroid/support/v7/widget/H;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Landroid/support/v7/widget/O;->ES:Landroid/support/v7/widget/H;

    invoke-virtual {v0}, Landroid/support/v7/widget/H;->clearListSelection()V

    .line 1719
    return-void
.end method
