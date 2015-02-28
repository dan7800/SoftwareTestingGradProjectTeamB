.class public final Lcom/google/android/gms/people/l;
.super Ljava/lang/Object;


# instance fields
.field private bVW:I

.field private bVX:I

.field public bVY:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/l;->bVW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/l;->bVX:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/people/l;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/l;->bVW:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/people/l;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/l;->bVX:I

    return v0
.end method


# virtual methods
.method public final UP()Lcom/google/android/gms/people/l;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/l;->bVW:I

    return-object p0
.end method

.method public final UQ()Lcom/google/android/gms/people/l;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/l;->bVX:I

    return-object p0
.end method

.method public final UR()Lcom/google/android/gms/people/k;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/people/k;-><init>(Lcom/google/android/gms/people/l;B)V

    return-object v0
.end method
