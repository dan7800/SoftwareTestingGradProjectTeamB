.class public Lcom/google/android/gms/clearcut/LogEventParcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/clearcut/e;


# instance fields
.field public bBM:Lcom/google/android/gms/internal/qu;

.field public bBN:[B

.field public final bBO:Lcom/google/a/a/a/a/a/d;

.field public final bBP:Lcom/google/android/gms/clearcut/c;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/clearcut/e;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Lcom/google/android/gms/clearcut/e;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/qu;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBM:Lcom/google/android/gms/internal/qu;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBN:[B

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBO:Lcom/google/a/a/a/a/a/d;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBP:Lcom/google/android/gms/clearcut/c;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBM:Lcom/google/android/gms/internal/qu;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBM:Lcom/google/android/gms/internal/qu;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBN:[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBN:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBO:Lcom/google/a/a/a/a/a/d;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBO:Lcom/google/a/a/a/a/a/d;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBP:Lcom/google/android/gms/clearcut/c;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBP:Lcom/google/android/gms/clearcut/c;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBM:Lcom/google/android/gms/internal/qu;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBN:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBO:Lcom/google/a/a/a/a/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBP:Lcom/google/android/gms/clearcut/c;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "LogEventParcelable["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBM:Lcom/google/android/gms/internal/qu;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBN:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBO:Lcom/google/a/a/a/a/a/d;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBP:Lcom/google/android/gms/clearcut/c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->bBN:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/clearcut/e;->a(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V

    return-void
.end method
