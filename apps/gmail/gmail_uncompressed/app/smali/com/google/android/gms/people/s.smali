.class public final Lcom/google/android/gms/people/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field private final cgR:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/people/t;->cgR:I

    iput v0, p0, Lcom/google/android/gms/people/s;->cgR:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/t;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/people/s;-><init>(Lcom/google/android/gms/people/t;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/people/s;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/s;->cgR:I

    return v0
.end method
