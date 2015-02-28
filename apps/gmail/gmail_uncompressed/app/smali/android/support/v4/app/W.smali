.class public final Landroid/support/v4/app/W;
.super Landroid/support/v4/app/au;
.source "SourceFile"


# static fields
.field public static final cX:Landroid/support/v4/app/av;


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field private final cV:Landroid/os/Bundle;

.field private final cW:[Landroid/support/v4/app/aL;

.field public icon:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2135
    new-instance v0, Landroid/support/v4/app/X;

    invoke-direct {v0}, Landroid/support/v4/app/X;-><init>()V

    sput-object v0, Landroid/support/v4/app/W;->cX:Landroid/support/v4/app/av;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 1791
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/W;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aL;)V

    .line 1792
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aL;)V
    .locals 1

    .prologue
    .line 1795
    invoke-direct {p0}, Landroid/support/v4/app/au;-><init>()V

    .line 1796
    iput p1, p0, Landroid/support/v4/app/W;->icon:I

    .line 1797
    invoke-static {p2}, Landroid/support/v4/app/ab;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/W;->title:Ljava/lang/CharSequence;

    .line 1798
    iput-object p3, p0, Landroid/support/v4/app/W;->actionIntent:Landroid/app/PendingIntent;

    .line 1799
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/W;->cV:Landroid/os/Bundle;

    .line 1800
    iput-object p5, p0, Landroid/support/v4/app/W;->cW:[Landroid/support/v4/app/aL;

    .line 1801
    return-void

    .line 1799
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aL;B)V
    .locals 0

    .prologue
    .line 1772
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/W;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aL;)V

    return-void
.end method


# virtual methods
.method protected final aj()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Landroid/support/v4/app/W;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final bridge synthetic ak()[Landroid/support/v4/app/aU;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Landroid/support/v4/app/W;->cW:[Landroid/support/v4/app/aL;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Landroid/support/v4/app/W;->cV:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final getIcon()I
    .locals 1

    .prologue
    .line 1805
    iget v0, p0, Landroid/support/v4/app/W;->icon:I

    return v0
.end method

.method protected final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Landroid/support/v4/app/W;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
