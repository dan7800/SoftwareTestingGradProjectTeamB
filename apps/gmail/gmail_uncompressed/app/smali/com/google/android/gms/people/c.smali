.class public final Lcom/google/android/gms/people/c;
.super Ljava/lang/Object;


# instance fields
.field private bVQ:Ljava/lang/String;

.field private cgr:Z

.field private cgs:Ljava/lang/String;

.field private cgt:I

.field private cgu:I

.field private cgv:I

.field private cgw:Z

.field private mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google"

    iput-object v0, p0, Lcom/google/android/gms/people/c;->cgs:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/c;->cgt:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/people/c;->cgv:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/people/c;->cgw:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/people/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/c;->cgr:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/people/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/c;->cgs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/people/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/c;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/people/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/c;->bVQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/people/c;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/c;->cgt:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/people/c;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/c;->cgu:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/people/c;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/c;->cgv:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/people/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/c;->cgw:Z

    return v0
.end method


# virtual methods
.method public final UJ()Lcom/google/android/gms/people/c;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/c;->cgt:I

    return-object p0
.end method

.method public final UK()Lcom/google/android/gms/people/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/people/c;->cgw:Z

    return-object p0
.end method

.method public final UL()Lcom/google/android/gms/people/b;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/people/b;-><init>(Lcom/google/android/gms/people/c;B)V

    return-object v0
.end method

.method public final gy(Ljava/lang/String;)Lcom/google/android/gms/people/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/c;->mAccount:Ljava/lang/String;

    return-object p0
.end method
