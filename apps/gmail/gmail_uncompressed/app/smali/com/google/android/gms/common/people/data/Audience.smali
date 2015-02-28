.class public final Lcom/google/android/gms/common/people/data/Audience;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/people/data/b;


# instance fields
.field private final bFC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation
.end field

.field private final bFD:I

.field private final bFE:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final bFF:Z

.field private final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/Audience;->CREATOR:Lcom/google/android/gms/common/people/data/b;

    return-void
.end method

.method constructor <init>(ILjava/util/List;IZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;IZZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    iput p1, p0, Lcom/google/android/gms/common/people/data/Audience;->btV:I

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/people/data/Audience;->bFC:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/common/people/data/Audience;->bFD:I

    if-ne p1, v0, :cond_2

    iput-boolean p4, p0, Lcom/google/android/gms/common/people/data/Audience;->bFE:Z

    if-nez p4, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->bFF:Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean p5, p0, Lcom/google/android/gms/common/people/data/Audience;->bFF:Z

    if-nez p5, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->bFE:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method constructor <init>(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/people/data/Audience;->btV:I

    iput-object p1, p0, Lcom/google/android/gms/common/people/data/Audience;->bFC:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/common/people/data/Audience;->bFD:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/people/data/Audience;->bFF:Z

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->bFE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/Audience;->btV:I

    return v0
.end method

.method public final Ln()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/Audience;->bFC:Ljava/util/List;

    return-object v0
.end method

.method public final Lo()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/Audience;->bFD:I

    return v0
.end method

.method final Lp()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->bFE:Z

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/people/data/Audience;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/Audience;

    iget v1, p0, Lcom/google/android/gms/common/people/data/Audience;->btV:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/Audience;->btV:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/Audience;->bFC:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/Audience;->bFC:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/Audience;->bFD:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/Audience;->bFD:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/common/people/data/Audience;->bFF:Z

    iget-boolean v2, p1, Lcom/google/android/gms/common/people/data/Audience;->bFF:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/Audience;->btV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/Audience;->bFC:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/Audience;->bFD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/people/data/Audience;->bFF:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/people/data/Audience;->bFF:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/people/data/b;->a(Lcom/google/android/gms/common/people/data/Audience;Landroid/os/Parcel;)V

    return-void
.end method
