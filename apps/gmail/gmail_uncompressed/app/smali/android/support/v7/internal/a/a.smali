.class final Landroid/support/v7/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/q;


# instance fields
.field private final un:Landroid/support/v7/app/d;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/d;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/support/v7/internal/a/a;->un:Landroid/support/v7/app/d;

    .line 35
    return-void
.end method


# virtual methods
.method public final ab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v7/internal/a/a;->un:Landroid/support/v7/app/d;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/support/v7/internal/a/a;->un:Landroid/support/v7/app/d;

    invoke-interface {v0, p1}, Landroid/support/v7/app/d;->Y(I)Z

    .line 42
    :cond_0
    return-void
.end method
