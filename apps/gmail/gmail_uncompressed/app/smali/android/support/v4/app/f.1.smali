.class public final Landroid/support/v4/app/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic G:Landroid/support/v4/app/a;

.field public Y:Landroid/support/v4/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public aa:Landroid/support/v4/app/F;

.field public ab:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/a;)V
    .locals 1

    .prologue
    .line 1452
    iput-object p1, p0, Landroid/support/v4/app/f;->G:Landroid/support/v4/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1453
    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f;->Y:Landroid/support/v4/f/a;

    .line 1454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f;->Z:Ljava/util/ArrayList;

    .line 1456
    new-instance v0, Landroid/support/v4/app/F;

    invoke-direct {v0}, Landroid/support/v4/app/F;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/f;->aa:Landroid/support/v4/app/F;

    return-void
.end method
