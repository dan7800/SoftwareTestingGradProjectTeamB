.class final Landroid/support/v4/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ca:Landroid/support/v4/app/q;

.field final synthetic cb:I

.field final synthetic cc:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/q;II)V
    .locals 1

    .prologue
    .line 526
    iput-object p1, p0, Landroid/support/v4/app/s;->ca:Landroid/support/v4/app/q;

    iput p2, p0, Landroid/support/v4/app/s;->cb:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/s;->cc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/v4/app/s;->ca:Landroid/support/v4/app/q;

    iget-object v1, p0, Landroid/support/v4/app/s;->ca:Landroid/support/v4/app/q;

    iget-object v1, v1, Landroid/support/v4/app/q;->aG:Landroid/support/v4/app/k;

    iget-object v1, v1, Landroid/support/v4/app/k;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/support/v4/app/s;->cb:I

    iget v2, p0, Landroid/support/v4/app/s;->cc:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/q;->b(II)Z

    .line 529
    return-void
.end method
