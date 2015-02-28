.class public final Lcom/google/android/gms/people/t;
.super Ljava/lang/Object;


# instance fields
.field cgR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final US()Lcom/google/android/gms/people/t;
    .locals 1

    const/16 v0, 0x87

    iput v0, p0, Lcom/google/android/gms/people/t;->cgR:I

    return-object p0
.end method

.method public final UT()Lcom/google/android/gms/people/s;
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/people/t;->cgR:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Must provide valid client application ID!"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/G;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/people/s;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/people/s;-><init>(Lcom/google/android/gms/people/t;B)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
