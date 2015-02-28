.class public Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/api/a;


# instance fields
.field acw:Ljava/lang/String;

.field bxE:Ljava/lang/String;

.field bxF:Ljava/lang/String;

.field bxG:Landroid/os/Bundle;

.field bxH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bxI:Ljava/lang/String;

.field bxJ:I

.field bxK:Landroid/os/Bundle;

.field bxL:[B

.field bxM:J

.field name:Ljava/lang/String;

.field version:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->CREATOR:Lcom/google/android/gms/auth/api/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Bundle;[BJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            "[BJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->version:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxE:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxF:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxG:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->acw:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxH:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxI:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxJ:I

    iput-object p11, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxK:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxL:[B

    iput-wide p13, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxM:J

    return-void
.end method

.method private JS()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->bxI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ API: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Scope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->JS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;->acw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/a;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;Landroid/os/Parcel;)V

    return-void
.end method
