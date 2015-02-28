.class final Lcom/google/android/gm/provider/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bhx:J

.field public bhy:J

.field public bhz:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcom/google/android/gm/provider/ab;->bhx:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/gm/provider/ab;->bhy:J

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ab;->bhz:Z

    .line 18
    return-void
.end method

.method public constructor <init>(JJZ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcom/google/android/gm/provider/ab;->bhx:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/gm/provider/ab;->bhy:J

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ab;->bhz:Z

    .line 21
    iput-wide p1, p0, Lcom/google/android/gm/provider/ab;->bhx:J

    .line 22
    iput-wide p3, p0, Lcom/google/android/gm/provider/ab;->bhy:J

    .line 23
    iput-boolean p5, p0, Lcom/google/android/gm/provider/ab;->bhz:Z

    .line 24
    return-void
.end method
