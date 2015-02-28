.class public final Landroid/support/v4/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final gp:Landroid/support/v4/e/i;

.field public static final gq:Landroid/support/v4/e/i;

.field public static final gr:Landroid/support/v4/e/i;

.field public static final gs:Landroid/support/v4/e/i;

.field public static final gt:Landroid/support/v4/e/i;

.field public static final gu:Landroid/support/v4/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Landroid/support/v4/e/o;

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v4/e/o;-><init>(Landroid/support/v4/e/m;ZB)V

    sput-object v0, Landroid/support/v4/e/j;->gp:Landroid/support/v4/e/i;

    .line 39
    new-instance v0, Landroid/support/v4/e/o;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/e/o;-><init>(Landroid/support/v4/e/m;ZB)V

    sput-object v0, Landroid/support/v4/e/j;->gq:Landroid/support/v4/e/i;

    .line 47
    new-instance v0, Landroid/support/v4/e/o;

    sget-object v1, Landroid/support/v4/e/l;->gy:Landroid/support/v4/e/l;

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v4/e/o;-><init>(Landroid/support/v4/e/m;ZB)V

    sput-object v0, Landroid/support/v4/e/j;->gr:Landroid/support/v4/e/i;

    .line 55
    new-instance v0, Landroid/support/v4/e/o;

    sget-object v1, Landroid/support/v4/e/l;->gy:Landroid/support/v4/e/l;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/e/o;-><init>(Landroid/support/v4/e/m;ZB)V

    sput-object v0, Landroid/support/v4/e/j;->gs:Landroid/support/v4/e/i;

    .line 62
    new-instance v0, Landroid/support/v4/e/o;

    sget-object v1, Landroid/support/v4/e/k;->gw:Landroid/support/v4/e/k;

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v4/e/o;-><init>(Landroid/support/v4/e/m;ZB)V

    sput-object v0, Landroid/support/v4/e/j;->gt:Landroid/support/v4/e/i;

    .line 68
    sget-object v0, Landroid/support/v4/e/p;->gB:Landroid/support/v4/e/p;

    sput-object v0, Landroid/support/v4/e/j;->gu:Landroid/support/v4/e/i;

    return-void
.end method

.method static synthetic o(I)I
    .locals 1

    .prologue
    .line 28
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic p(I)I
    .locals 1

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
