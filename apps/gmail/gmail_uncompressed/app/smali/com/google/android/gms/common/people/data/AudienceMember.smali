.class public final Lcom/google/android/gms/common/people/data/AudienceMember;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/people/data/c;


# instance fields
.field private final bDX:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final bFH:I

.field private final bFI:Ljava/lang/String;

.field private final bFJ:Ljava/lang/String;

.field private final bFK:Ljava/lang/String;

.field private final bFL:Ljava/lang/String;

.field private final btV:I

.field private final bwX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/people/data/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/people/data/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/c;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->btV:I

    iput p2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bwX:I

    iput p3, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFH:I

    iput-object p4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFI:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFK:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFL:Ljava/lang/String;

    if-eqz p8, :cond_0

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bDX:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static al(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ca;->bWn:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ca;->bWn:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/gms/common/people/data/AudienceMember;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final Iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFL:Ljava/lang/String;

    return-object v0
.end method

.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->btV:I

    return v0
.end method

.method public final KJ()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bDX:Landroid/os/Bundle;

    return-object v0
.end method

.method public final Lr()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFH:I

    return v0
.end method

.method public final Ls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFI:Ljava/lang/String;

    return-object v0
.end method

.method public final Lt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFJ:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/people/data/AudienceMember;

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->btV:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->btV:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bwX:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->bwX:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFH:I

    iget v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->bFH:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFI:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->bFI:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFJ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/people/data/AudienceMember;->bFJ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFK:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bwX:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->btV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bwX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFJ:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bwX:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "Person [%s] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFJ:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFK:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bwX:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFH:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    const-string v0, "Circle [%s] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFI:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFK:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    const-string v0, "Group [%s] %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFI:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/google/android/gms/common/people/data/AudienceMember;->bFK:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/people/data/c;->a(Lcom/google/android/gms/common/people/data/AudienceMember;Landroid/os/Parcel;)V

    return-void
.end method
