.class public final Lcom/google/android/gms/people/g;
.super Ljava/lang/Object;


# static fields
.field public static final cgx:Lcom/google/android/gms/people/g;


# instance fields
.field private cgy:Z

.field private cgz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/g;

    invoke-direct {v0}, Lcom/google/android/gms/people/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/g;->cgx:Lcom/google/android/gms/people/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/g;->cgz:I

    return-void
.end method


# virtual methods
.method public final UM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/g;->cgy:Z

    return v0
.end method

.method public final UN()Lcom/google/android/gms/people/g;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/people/g;->cgy:Z

    return-object p0
.end method

.method public final UO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/g;->cgz:I

    return v0
.end method
