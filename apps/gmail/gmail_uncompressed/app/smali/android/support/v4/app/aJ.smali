.class final Landroid/support/v4/app/aJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final em:Landroid/content/ComponentName;

.field public er:Z

.field public es:Landroid/support/v4/app/H;

.field public et:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/support/v4/app/aK;",
            ">;"
        }
    .end annotation
.end field

.field public eu:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-boolean v1, p0, Landroid/support/v4/app/aJ;->er:Z

    .line 536
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aJ;->et:Ljava/util/LinkedList;

    .line 538
    iput v1, p0, Landroid/support/v4/app/aJ;->eu:I

    .line 541
    iput-object p1, p0, Landroid/support/v4/app/aJ;->em:Landroid/content/ComponentName;

    .line 542
    return-void
.end method
