.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/o;


# instance fields
.field public final acw:Ljava/lang/String;

.field public final bxW:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

.field public final bxX:Ljava/lang/String;

.field public final bxY:Ljava/lang/String;

.field public final bxZ:Ljava/lang/String;

.field public final bya:Ljava/lang/String;

.field public final byb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;"
        }
    .end annotation
.end field

.field public final byc:Ljava/lang/String;

.field public final byd:Ljava/lang/String;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/o;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/o;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->bxW:Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->bxX:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->bxY:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->acw:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->bxZ:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->bya:Ljava/lang/String;

    if-nez p8, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->byb:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->byc:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;->byd:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/o;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryData;Landroid/os/Parcel;I)V

    return-void
.end method
