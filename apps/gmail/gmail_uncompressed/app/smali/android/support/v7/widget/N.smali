.class final Landroid/support/v7/widget/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fh:Landroid/support/v7/widget/L;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/L;)V
    .locals 0

    .prologue
    .line 1482
    iput-object p1, p0, Landroid/support/v7/widget/N;->Fh:Landroid/support/v7/widget/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/L;B)V
    .locals 0

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Landroid/support/v7/widget/N;-><init>(Landroid/support/v7/widget/L;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/support/v7/widget/N;->Fh:Landroid/support/v7/widget/L;

    invoke-static {v0}, Landroid/support/v7/widget/L;->b(Landroid/support/v7/widget/L;)V

    .line 1486
    return-void
.end method
