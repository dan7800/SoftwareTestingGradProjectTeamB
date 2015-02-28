.class public final Lcom/google/android/gms/internal/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/l;


# instance fields
.field public final bSh:Lcom/google/android/gms/internal/o;

.field public final bSi:Lcom/google/android/gms/internal/m;

.field public final bSj:Lcom/google/android/gms/internal/n;

.field public final bSk:Landroid/content/Context;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/l;

    invoke-direct {v0}, Lcom/google/android/gms/internal/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ea;->CREATOR:Lcom/google/android/gms/internal/l;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ea;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/c/b;->w(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/d;->a(Lcom/google/android/gms/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/o;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->bSh:Lcom/google/android/gms/internal/o;

    invoke-static {p3}, Lcom/google/android/gms/c/b;->w(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/d;->a(Lcom/google/android/gms/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/m;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->bSi:Lcom/google/android/gms/internal/m;

    invoke-static {p4}, Lcom/google/android/gms/c/b;->w(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/d;->a(Lcom/google/android/gms/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/n;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->bSj:Lcom/google/android/gms/internal/n;

    invoke-static {p5}, Lcom/google/android/gms/c/b;->w(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/d;->a(Lcom/google/android/gms/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->bSk:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final QI()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->bSh:Lcom/google/android/gms/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/c/d;->ag(Ljava/lang/Object;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final QJ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->bSi:Lcom/google/android/gms/internal/m;

    invoke-static {v0}, Lcom/google/android/gms/c/d;->ag(Ljava/lang/Object;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final QK()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->bSj:Lcom/google/android/gms/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/c/d;->ag(Ljava/lang/Object;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final QL()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->bSk:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/c/d;->ag(Ljava/lang/Object;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/l;->a(Lcom/google/android/gms/internal/ea;Landroid/os/Parcel;)V

    return-void
.end method
