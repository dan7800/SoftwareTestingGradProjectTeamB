.class public Lcom/google/android/gms/auth/AccountChangeEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/a;


# instance fields
.field final bxf:I

.field final bxg:J

.field final bxh:Ljava/lang/String;

.field final bxi:I

.field final bxj:I

.field final bxk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEvent;->CREATOR:Lcom/google/android/gms/auth/a;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxf:I

    iput-wide p2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxg:J

    invoke-static {p4}, Lcom/google/android/gms/common/internal/G;->ae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxh:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxi:I

    iput p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxj:I

    iput-object p7, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final JO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxi:I

    return v0
.end method

.method public final JP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxk:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxf:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->bxf:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxg:J

    iget-wide v4, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->bxg:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxh:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->bxh:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/E;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxi:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->bxi:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxj:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->bxj:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->bxk:Ljava/lang/String;

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
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxk:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "UNKNOWN"

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxi:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountChangeEvent {accountName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changeData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->bxj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ADDED"

    goto :goto_0

    :pswitch_1
    const-string v0, "REMOVED"

    goto :goto_0

    :pswitch_2
    const-string v0, "RENAMED_TO"

    goto :goto_0

    :pswitch_3
    const-string v0, "RENAMED_FROM"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/a;->a(Lcom/google/android/gms/auth/AccountChangeEvent;Landroid/os/Parcel;)V

    return-void
.end method
