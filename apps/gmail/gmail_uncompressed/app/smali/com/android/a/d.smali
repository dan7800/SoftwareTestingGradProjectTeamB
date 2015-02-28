.class public final Lcom/android/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public GH:I

.field public GI:I

.field public GJ:F

.field public GK:F

.field public GL:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 586
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/a/d;-><init>(IIFI)V

    .line 587
    return-void
.end method

.method private constructor <init>(IIFI)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput p1, p0, Lcom/android/a/d;->GH:I

    .line 604
    iput p2, p0, Lcom/android/a/d;->GI:I

    .line 605
    iput v0, p0, Lcom/android/a/d;->GJ:F

    .line 606
    iput v0, p0, Lcom/android/a/d;->GK:F

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/a/d;->GL:I

    .line 608
    return-void
.end method
