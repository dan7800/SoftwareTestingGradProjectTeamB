.class public Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/d;


# instance fields
.field acw:Ljava/lang/String;

.field bxQ:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field byv:Landroid/os/Bundle;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/delegate/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/delegate/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/delegate/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->version:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->byv:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->acw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->bxQ:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;->byv:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/delegate/d;->a(Lcom/google/android/gms/auth/firstparty/delegate/UpdateCredentialsWorkflowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
