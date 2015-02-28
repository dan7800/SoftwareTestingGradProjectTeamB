.class public Lcom/google/android/gms/udc/SettingState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/udc/b;


# instance fields
.field private final btV:I

.field private ckF:I

.field private ckG:I

.field private ckH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/udc/b;

    invoke-direct {v0}, Lcom/google/android/gms/udc/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/udc/SettingState;->CREATOR:Lcom/google/android/gms/udc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/udc/SettingState;->btV:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/udc/SettingState;->btV:I

    iput p2, p0, Lcom/google/android/gms/udc/SettingState;->ckF:I

    iput p3, p0, Lcom/google/android/gms/udc/SettingState;->ckG:I

    iput p4, p0, Lcom/google/android/gms/udc/SettingState;->ckH:I

    return-void
.end method


# virtual methods
.method public final Jt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->btV:I

    return v0
.end method

.method public final VA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->ckH:I

    return v0
.end method

.method public final Vy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->ckF:I

    return v0
.end method

.method public final Vz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/udc/SettingState;->ckG:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/udc/SettingState;->CREATOR:Lcom/google/android/gms/udc/b;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/udc/SettingState;->CREATOR:Lcom/google/android/gms/udc/b;

    invoke-static {p0, p1}, Lcom/google/android/gms/udc/b;->a(Lcom/google/android/gms/udc/SettingState;Landroid/os/Parcel;)V

    return-void
.end method
