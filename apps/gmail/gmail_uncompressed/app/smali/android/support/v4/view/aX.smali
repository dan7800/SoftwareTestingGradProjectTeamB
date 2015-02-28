.class final Landroid/support/v4/view/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field jH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field jI:Landroid/support/v4/view/aV;

.field final synthetic jJ:Landroid/support/v4/view/aW;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/aW;Landroid/support/v4/view/aV;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Landroid/support/v4/view/aX;->jJ:Landroid/support/v4/view/aW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/aX;->jH:Ljava/lang/ref/WeakReference;

    .line 298
    iput-object p2, p0, Landroid/support/v4/view/aX;->jI:Landroid/support/v4/view/aV;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/aW;Landroid/support/v4/view/aV;Landroid/view/View;B)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/aX;-><init>(Landroid/support/v4/view/aW;Landroid/support/v4/view/aV;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Landroid/support/v4/view/aX;->jJ:Landroid/support/v4/view/aW;

    iget-object v2, p0, Landroid/support/v4/view/aX;->jI:Landroid/support/v4/view/aV;

    iget-object v0, p0, Landroid/support/v4/view/aX;->jH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/aW;->a(Landroid/support/v4/view/aW;Landroid/support/v4/view/aV;Landroid/view/View;)V

    .line 304
    return-void
.end method
