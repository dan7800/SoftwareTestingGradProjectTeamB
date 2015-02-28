.class public final Lcom/google/android/gms/people/model/AvatarReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/model/g;


# instance fields
.field private final bZb:Ljava/lang/String;

.field private final btV:I

.field private final cjQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/model/g;

    invoke-direct {v0}, Lcom/google/android/gms/people/model/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/model/AvatarReference;->CREATOR:Lcom/google/android/gms/people/model/g;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/G;->cc(Z)V

    iput p1, p0, Lcom/google/android/gms/people/model/AvatarReference;->btV:I

    iput p2, p0, Lcom/google/android/gms/people/model/AvatarReference;->cjQ:I

    iput-object p3, p0, Lcom/google/android/gms/people/model/AvatarReference;->bZb:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/people/model/AvatarReference;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->btV:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->bZb:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/model/AvatarReference;->cjQ:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/E;->ad(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "source"

    iget v2, p0, Lcom/google/android/gms/people/model/AvatarReference;->cjQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    const-string v1, "location"

    iget-object v2, p0, Lcom/google/android/gms/people/model/AvatarReference;->bZb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/F;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/F;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/people/model/g;->a(Lcom/google/android/gms/people/model/AvatarReference;Landroid/os/Parcel;)V

    return-void
.end method
