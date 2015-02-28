.class final Landroid/support/v4/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field final synthetic fY:Landroid/support/v4/d/g;


# direct methods
.method constructor <init>(Landroid/support/v4/d/g;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Landroid/support/v4/d/h;->fY:Landroid/support/v4/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/d/h;->fY:Landroid/support/v4/d/g;

    iget-object v0, v0, Landroid/support/v4/d/g;->fX:Landroid/support/v4/d/f;

    invoke-static {v0}, Landroid/support/v4/d/f;->a(Landroid/support/v4/d/f;)V

    .line 340
    iget-object v0, p0, Landroid/support/v4/d/h;->fY:Landroid/support/v4/d/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/d/g;->cancel(Z)Z

    .line 341
    return-void
.end method
